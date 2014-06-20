<?php
/*
 * @ MySQL author - David Clairborne
 * @ MySQL Table Defintion updates and Database Creation -  Mike Simonds
 * @ MySQL Update - Peter Kemp
 *
 *
 * Version 1.00 August 9th 2007
 ******************************
 * Initital Release
 * Corrected some fields defintions orginally defined by David
 * Added functionality to check MySQL connection at start of script, if wrong, fail
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */
 
set_time_limit(600);
error_reporting(E_ERROR | E_WARNING | E_PARSE);
//require_once ('/../includes/soapclient/SforcePartnerClient.php');
//require_once ('/../includes/soapclient/SforceHeaderOptions.php');
ini_set("soap.wsdl_cache_enabled", "0");

require_once ('/../includes/soapclient/SforcePartnerClient.php');
require_once ('/../includes/adodb/adodb.inc.php');
require_once ('sf_mysql_global.php');

//TODO: make sure that the relationships are working
//TODO: include an update tables function, that only pulls new entities (any need for this?)
//TODO: put program wide variables into an XML file
//TODO: catch all errors
	
function buildTables($o_prefix, $o_user, $o_pass, $o_db, $wsdl, $user, $pass, $o_skip=false)
{
	$sqlFile = "./data/salesforce_mysql.sql";
	$relFile = "./data/relationships.sql";
	$db = mysql_connection($o_host, $o_user, $o_pass, $o_db);
	
	if (!$db)
	{
		echo "Error : " . $db->ErrorMsg() . "<br />";
		exit;
	}
	try
	{
		//echo (isset($o_skip));
		if ($o_skip == FALSE)
		{
			$client = salesforce_connection($wsdl, $user, $pass);
		
			$handle = fopen($sqlFile, 'w');
			$rel_handle = fopen($relFile, 'w');

			if (isset($client))
			{
				// Retrieve all the objects in the organization
				$result = $client->describeGlobal();
				$buildRelationships[] = NULL;
				
				// Cycle through each object
				foreach ($result->types as $objectType)
				{
					// Start the table creation statement
					$createTable = StartTable($o_prefix, $objectType);
					//echo ("wrote SQL for " & $objectType & "<br/>");
			
					// Retrieve the object definition, using describeSObjects as this supercedes describeSObject()
					// we pass an array as we are only passing a single objectType
					$resultObject = $client->describeSObjects(array($objectType));

					// Cycle through each field
					foreach ($resultObject->fields as $field)
					{
						//This is a check because of reserved words in MySQL, it'll postfix __ch to the end of each custom field
						$field->name = checkFieldName($field->name);
						$createTable .= FieldInfo($field);
					}
			
					// strip the end ,
					$createTable = substr($createTable, 0, strlen($createTable) - 1); 
					
					// Close the create table statement
					$createTable .= EndTable();
					fwrite($handle, $createTable);
					
					// code to build the relationships between objects
					
					$temp = BuildRelationships($resultObject,$o_prefix,$objectType);
					if($temp != NULL)
					{
						$buildRelationships = array_merge($buildRelationships, $temp);
					}
					else
					{
						echo("-");
					}
				}
			}
			// Close the sql table building file handle
			fclose($handle);
			echo $sqlFile . " has been created.<br />";
			
			//var_dump($buildRelationships);
			foreach ($buildRelationships as $relationship)
			{
				fwrite($rel_handle, $relationship);
				/*
				try
				{
					if($relationship != NULL)
					{
						//TODO : move this relationship building code to another area
						//$db->Execute($relationship);
						echo ".";
					}
					else
					{
						echo ("#");
					}
				}
				catch (exception $e)
				{
					echo "o";
					fwrite($rel_handle, "#The above isn't working!" . $db->ErrorMsg());
					echo '<pre>' . print_r($e, true) . '</pre>';
				}
				*/
			}
			echo $relFile . " has been created.<br />";
			fclose($rel_handle);
			
		}
		else
		{
			echo "you have chosen to rebuild your system from a pre-existing version of " .$sqlFile . "<br />";
		}
		
		$sql = file_get_contents($sqlFile);

		$sql_array = explode(';', $sql);

		foreach ($sql_array as $sql_statement)
		{
			//Performs the table creation in local MySQL DB
			if ($sql_statement != '')
			{
				$db->Execute($sql_statement);
			}
			else
			{
				echo "Error performing query: " . $db->ErrorMsg() . "<br />";
			}
		}

		if ($db)
		{
			$db->Close();
		}
		
		echo "All Tables Created in MySQL!<br />";
		echo "**************** ALL DONE ****************<br />";
		
	}
	catch (exception $e)
	{
		// This is reached if there is a major problem in the data or with
		// the salesforce.com connection. Normal data errors are caught by
		// salesforce.com
		echo '<pre>' . print_r($e, true) . '</pre>';
		return false;
		exit;
	}
}

// code to build the relationship information about objects linking this particular $resultObject
function BuildRelationships($resultObject, $o_prefix="sforce_", $objectType="Account")
{
	// NOTE: I had to convert each table to InnoDB and split the ALTER SQL into separate queries, trying to do it in bulk breaks 
	// $db->Execute() without a MySQL error!
	// http://www.builderau.com.au/program/mysql/soa/Using-foreign-keys-and-referential-integrity-in-MySQL/0,339028784,339237600,00.htm

	if ($resultObject->childRelationships != NULL)
	{
		//it will return an array of objects, or if there is ONLY one object it will just return the object not in an array
		// if one object returned
		If ($resultObject->childRelationships->field != NULL)
		{
			$relationship = "ALTER TABLE " . $o_prefix . $resultObject->childRelationships->childSObject . " ADD INDEX (" . $resultObject->childRelationships->field . ");\n";
			$relationships[] = $relationship;
			$relationship = "ALTER TABLE " . $o_prefix . $resultObject->childRelationships->childSObject . "\n";
			$relationship .= " ADD FOREIGN KEY (". $resultObject->childRelationships->field . ")";
			$relationship .= " REFERENCES " . $o_prefix . $objectType . " (Id);\n";
			$relationships[] = $relationship;
		}
		else
		{
			// if multiple objects returned
			foreach ($resultObject->childRelationships as $childrelationship)
			{
				$relationship = "ALTER TABLE " . $o_prefix . $childrelationship->childSObject . " ADD INDEX (" . $childrelationship->field . ");\n";
				$relationships[] = $relationship;
				$relationship = "ALTER TABLE " . $o_prefix . $childrelationship->childSObject . "\n";
				$relationship .= " ADD FOREIGN KEY (". $childrelationship->field . ")";
				$relationship .= " REFERENCES " . $o_prefix . $objectType . " (Id);\n";
				$relationships[] = $relationship;
			}
		}
	}
	//var_dump($relationships);
	return $relationships;
}

// Translates the field description information from salesforce.com to
// MySQL field descriptions
function FieldInfo($field)
{
	
	switch ($field->type)
	{
		case "boolean":
			$type = "VARCHAR(5)";
			break;
		case "base64":
			$type = "BLOB";
			break;
		case "currency":
			if ($field->length === 0)
			{
				$type = "INT(" . $field->precision . ")";
			}
			else
			{
				$type = "INT(" . $field->length . ")";
			}

			break;
		case "date":
			$type = "DATE";
			break;
		case "datetime":
			$type = "DATETIME";
			break;
		case "double":
			$type = "INT(" . $field->length . ")";
			break;
		case "int":
			$type = "INT";
			break;
		case "string":
			if ($field->length < 256)
			{
				$type = "VARCHAR(" . $field->length . ")";
			}
			else
			{
				$type = "TEXT";
			}
			break;
		case "textarea":
			if ($field->length < 256)
			{
				$type = "VARCHAR(" . $field->length . ")";
			}
			else
			{
				$type = "TEXT";
			}
			break;
		case "text":
			if ($field->length < 256)
			{
				$type = "VARCHAR(" . $field->length . ")";
			}
			else
			{
				$type = "TEXT";
			}
			break;
		default:
			if ($field->length < 256)
			{
				$type = "VARCHAR(" . $field->length . ")";
			}
			else
			{
				$type = "TEXT";
			}
			break;
	}
	
	// do we want to use ENUM types or keep them front end only?
	// comment this section out if the latter
	if ($field->picklistValues != NULL){
		$type = "ENUM(";
		
		//strip slashes
		foreach ($field->picklistValues as $plist)
		{
			$temp = str_replace("'","''",$plist->value);
			$type .= "'" . $temp . "',";
		}
		$type = substr($type, 0, strlen($type) - 1); // strip the end ,
		$type .= ")";
	}
	// end of ENUMs
	
	//can the field be null
	if($field->nillable == false)
	{
		$nillable = " NOT NULL";
	}
		
	//make sure that the Id field is treated as the primary key
	if($field->name == "Id")
		$primary = " PRIMARY KEY";
	else
		$primary = "";
	 
	return "\n\t\t" . $field->name . " " . $type . $nillable . $primary .",";
}

// Creates the initial part of the table creation statement
function StartTable($o_prefix, $objectType)
{
	global $TableList;
    if (empty($o_prefix))
    {
		//put this in to check for keywords, replacing the commented code below
		$objectType = checkFieldName($objectType);
    }
    else
    {
      $objectType = $o_prefix.$objectType;
    }
    $header = "\n/********************************************************************" .
        "\n         TABLE FROM SALESFORCE.COM OBJECT " . $objectType . "\n*********************************************************************/" .
        //"\n" . "\nCREATE TABLE " . strtolower($objectType) . "(";
        "\n" . "\nCREATE TABLE " . $objectType . "(";
    return $header;
}

// Creates the final part of the table creation statement
function EndTable()
{
    return "\n\t)TYPE=InnoDB;\n\n";
}



?>
