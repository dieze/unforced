<?php

/*
 * @ MySQL author - David Clairborne
 * @ MySQL Table Defintion updates and Database Creation -  Mike Simonds
 * @ MySQL other work - Peter Kemp  
 *
 *
 * Version 1.01 17th April 2009
 ******************************
 * Initital Release
 * Corrected some fields defintions orginally defined by David
 * Added functionality to check MySQL connection at start of script, if wrong, fail
 * see README
 * 
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
 
 // TODO : find out why updating user breaks
 // TODO : find a way to query objects such as Name, EmailStatus etc, where querys are disabled by the API

ini_set("soap.wsdl_cache_enabled", "0");

require_once (__DIR__ . '/../includes/soapclient/SforcePartnerClient.php');
require_once (__DIR__ . '/../includes/adodb/adodb.inc.php');
require_once (__DIR__ . '/sf_mysql_global.php');

//function that glues the other functions together, move this!
function backup_into_mysql($tables, $o_prefix, $o_host, $o_user, $o_pass, $o_db, $wsdl, $user, $pass, $update=false)
{

	$time1 = microtime(true);

		$client = salesforce_connection($wsdl, $user, $pass);
	$time2 = microtime(true);
	echo("Salesforce connection initialised in " . ($time2 - $time1) ." seconds<br>");
		
		$db = mysql_connection($o_host, $o_user, $o_pass, $o_db);
	$time1 = microtime(true);
	echo("MySQL connection initialised in " . ($time1 - $time2) ." seconds<br>");
		
		$m_objects = get_objects($o_prefix);
	$time2 = microtime(true);
	echo("Objects built in " . ($time2 - $time1) ." seconds<br><hr/>");

		process_tables($tables, $o_prefix, $db, $client, $m_objects, $update);
	$time1 = microtime(true);
	echo("Salesforce replicated in " . ($time1 - $time2) ." seconds<br>");

}

//give it a list of tables you want to insert SF data into and off it goes
function process_tables($tables, $o_prefix, $db, $client, $m_objects, $update=false)
{
	foreach ($tables as $tab)
	{
		if ($o_prefix != null)
        $tab = ltrim($tab, $o_prefix);
	
	    echo $tab . "<br/>";
		
		$sql = "SELECT LastModifiedDate FROM ".$o_prefix . $tab." ORDER by LastModifiedDate DESC";
		$result = $db->Execute($sql);
		
		//if they have selected to update and the table isn't empty
		if ($update && $result->fields[0] != NULL)
		{
			//find the last modified date
			$lastUpdated = $result->fields[0];
			echo("Pre-existing " . $result->RecordCount() . " records in table, updating from last updated:" . $lastUpdated . "<br/>");
			$lastUpdated = str_replace (" ", "T", $lastUpdated);
			$lastUpdated = $lastUpdated."+00:00";
			//TODO: Update this hacked date interface
			
			/*
			if ($db->Execute($sql))
			{
				if (!$result)
					print $db->ErrorMsg();
				else
				{
					if($result->fields[0] == NULL)
					{
						echo("no records");
						$lastUpdated = NULL
					}
					else
					{
						
					}
				}
			}
			else
			{
				var_dump($result);
				echo("<br />There has been an error in the update SQL code");
				exit;
			}
			*/
		}	
		else
		{
			//Truncate current database to establish a refresh
			$sql = "TRUNCATE TABLE " . $o_prefix . $tab;
			if ($db->Execute($sql))
				echo "<strong>" . $o_prefix . $tab . " Table Truncated</strong><br />";
		}

		//SOQL query for the selected Object in Salesforce
		$counter = 0;
		do
		{
			//get the soql query/ies for that particular object
			$soql = array();
			$soql = get_soql($m_objects, $tab, $counter, $lastUpdated);
			//Processes the query to get account information from Salesforce
			$records = get_records($client, $soql["soql"], $db, $o_prefix, $tab);
	
			$counter = $soql['position'];
		} while ($soql["multiple"] == true);
	
		//Processes the query to get account information from Salesforce
		//$records = get_records($client, $soql, $db); //##### why do we have this call? the $soql looks wrong
		
		//var_dump($soql); // this shows object(SObject)#12 (3) { ["type"]=> string(7) "Account" ["fields"]=> NULL ["Id"]=> string(1) "0" }
	
		if ($records === NULL)
		{
			$today = date("F j, Y, g:i a");
			$handle = @fopen("error.log", 'a');
			fwrite($handle, $today . "  -  Error finding any records in: " . $tab . "\n");
			fclose($handle);
			$records = 0;
		}
	
		
		$sql = "SELECT COUNT(*) as 'totalrecords' FROM " .$o_prefix . $tab;
		$result = $db->Execute($sql);
		echo '<p>' . $records . ' records added/updated.<br/>';
		echo 'There are currently ' . $result->fields[0] . ' products</p><hr/>';
		
		//clear variables ready for the next table
		$records = NULL;
		$lastUpdated = NULL;
	}	
}


//get a list of the objects that need to be updated/inserted
function get_objects($o_prefix="sforce_",$TableFile = "./data/salesforce_mysql.sql"){
	$counter = 0;

	$handle = @fopen($TableFile, 'r');
	if ($handle) {
		while (!feof($handle)) {
			$buffer = fgets($handle);

			IF (preg_match('/CREATE TABLE '.$o_prefix.'/', $buffer) >= 1)
			{
				$buffer = preg_split('/CREATE TABLE '.$o_prefix."/" , $buffer);
				$buffer = $buffer[1];
				$buffer = preg_split("/\(/" , $buffer);
				$buffer = $buffer[0];
				$m_name = $buffer;
				//$m_name = ucfirst($m_name);
					
				//echo "<h1><u>" . $buffer . "</u></h1>";
				$fields = 0;
				
				while (preg_match('/\)\;/', $buffer) == 0 && preg_match('/\)TYPE=\InnoDB\;/', $buffer) == 0)
				{
					//echo($buffer . "<br>");
					$buffer = fgets($handle);
					$buffer = preg_split('/ /' , $buffer);
					$buffer = $buffer[0];
					$buffer = ltrim($buffer);
					//echo $buffer . "<br />";
					$m_objects[$m_name][$fields] = $buffer;

					$fields++;
				}
				$counter++;
			}
		}
		fclose($handle);
	}
	return $m_objects;
}

//get individual SF records for insertion into MySQL
function get_records($connection, $query, $db, $o_prefix, $tab)
{
    try
	{
		//Set this to the number of records to process per batch 200 is the minimum
		$queryOptions = new QueryOptions(900);
		$connection->setQueryOptions($queryOptions);
		
		// hacked approach to get rid of back quotes `
		$query = str_replace("`", "", $query);

		$response = $connection->query(($query), $queryOptions);

		//for debugging
		//echo '<pre>' . print_r($response,true) . '</pre>';
		//exit;

		if ($response->size > 0)
		{
			//echo $response->size;
			
			$records = $response->records;

			// Cycles through additional responses if the number of records// exceeds the batch size
			$count_records = 0;
			while (!$response->done)
			{
				$records = $response->records;
				set_time_limit(100);
				ini_set("memory_limit", "512M");

				//Process curent $records
				$current_count = store_in_db($records, $db, $o_prefix, $tab);

				if ($current_count === false)
				{
					return false;
				}
				else
				{
					$count_records += $current_count;
				}
				echo "processed " . $count_records . " records<br />";
				flush();

				//we have to query more each time for each object?
				$response = $connection->queryMore($response->queryLocator, $queryOptions);

			}
			set_time_limit(100);
			$records = $response->records;
			//Process curent $records

			//store the last set of records into the database
			$current_count = store_in_db($records, $db, $o_prefix, $tab);

			if ($current_count === false)
			{
				return false;
			}
			else
			{
				$count_records += $current_count;
			}
		}

		return $count_records;
	}
	catch (exception $e)
	{
		echo '<pre>' . print_r($e, true) . '</pre>';
	}
	
	
}
/*Function to store records into
* database in chunks of the $queryOptions = new QueryOptions(200);*/
function store_in_db($records, $db, $o_prefix, $tab)
{
	

    //exit;
    $rows_loaded = 0;
	//var_dump($records);
	//echo ("<hr>");
    foreach ($records as $r)
    {
	//var_dump($r);
	//echo "<br>";
	
		//var_dump($r->fields);
		//echo "<br><br>";
		
        $pass_this['id'] = $r->Id;
        foreach ($r->fields as $key => $value)
        {
            $pass_this[$key] = addslashes($r->fields->$key);
            //var_dump($key);
			//echo "<br>";
            //make the code to handle the alternative update sql routine
            if($key != "Id")
            $update_code .= " " . $key . " = VALUES(". $key . "),";
        }
        
        //strip the final comma from the $update_code
        $update_code = substr($update_code, 0, strlen($update_code) - 1);
        
        $fields = implode(",", array_keys($pass_this));
        $values = implode("','", array_values($pass_this));

        //adjusted to deal with soql results being inserted across multiple sql calls, this means that we don't get multiple records for a single unique id
        $query = "INSERT INTO " . $o_prefix . $tab . " (" . $fields . ") VALUES ('" . $values . "') ON DUPLICATE KEY UPDATE" . $update_code . ";";
		
		//echo $query . "<br>" ;
		$update_code = "";//reset the update code
		
        //print_r($query);
    
	    if ($db->Execute($query))
	    {
	        $rows_loaded++;
	        echo "*";
	        //echo "record inserted<br />";
	        flush();
	    }
	    else
	    {
	        echo $db->ErrorMsg() . "<br />";
			echo($sql);
	        return false;
	    }
    }
    return $rows_loaded;
}

//this function allows for the user to update their mysql with any changes from the sf database
// $u_objects is an array to determine which tables and records are to be upserted
function upsert_to_mysql($u_objects = NULL)
{
	$client = salesforce_connection($wsdl, $user, $pass);
	$db = mysql_connection($o_host, $o_user, $o_pass, $o_db);
	
	// TODO: add code on interface to select tables and fields, AJAX and jquery time?
	// TODO: add code to handle the the parsing of the $u_objects and subsequent table updates
}

//this function allows for the user to update their salesforce instance with any changes made in the mysql table
// $u_objects is an array to determine which tables and records are to be upserted
function upsert_to_sf($u_objects = NULL)
{
	// TODO: add code on interface to select tables and fields, AJAX and jquery time?
	// TODO: add code to handle the the parsing of the $u_objects and subsequent table updates
}

//function to construct salesforce safe maximum 1000 character SOQL and returns the SOQL as an array
//if further searches are needed the routine returns the position (counter) and whether any further
// calls are needed through multiple (true / false)
function get_soql($m_objects, $tab="Account", $counter=0, $lastUpdated=NULL)
{
	//added -1 as it doesn't seem to work without
	$size = count($m_objects[$tab]) -1 ;
	
	//$soql_array = array(); //use this to avoid Error: "Cannot use assign-op operators with overloaded objects nor string offsets" 
	
	//SOQL query for the selected Object in Salesforce
	$soql_array['soql'] = "Select ";
	If ($counter > 0)  $soql_array["soql"] .= $m_objects[$tab][0]; //add the ID if the Query is over two soql calls
	
	while ($counter < $size)
	{
		if ($counter <> 0 && $counter != $size)
		{
			$soql_array['soql'] .= ", ";
		}

		$soql_array['soql'] .= $m_objects[$tab][$counter];
		$counter++;
		
		if (strlen($soql_array['soql']) >= 900)
		{
			$soql_array['soql'] .= " FROM ". $tab;
			If ($lastUpdated != NULL) $soql_array['soql'] .= " WHERE LastModifiedDate > ". $lastUpdated."";
			$soql_array['multiple'] = TRUE; // this requires more than one SOQL Query to complete
			$soql_array['position'] = $counter;
			return $soql_array;
		}
	}
	
	$soql_array['soql'] .= " FROM ". $tab;
	If ($lastUpdated != NULL) $soql_array['soql'] .= " WHERE LastModifiedDate > ". $lastUpdated."";
	$soql_array['multiple'] = FALSE; // this doesn't require any more calls to complete backing up the database
	$soql_array['position'] = $counter;
	
	return $soql_array;

}

function create_relationships($o_prefix, $o_host, $o_user, $o_pass, $o_db, $rel_file='data/relationships.sql')
{
	$db = mysql_connection($o_host, $o_user, $o_pass, $o_db);
	
	//get individual relationships
	$rel = file_get_contents($rel_file);
	$rel_array = explode(';', $rel);

	foreach ($rel_array as $rel_statement)
	{
		try{
			$db->Execute($rel_statement . ";");
			//echo $db->ErrorMsg();
			//echo $rel_statement;
			//echo "<br>";
			//echo $db->ErrorMsg();
			//var_dump($rel_array);
			//echo "; [done]<br>";
		}catch (exception $e)
		{
			echo '<pre>' . print_r($e, true) . '</pre>';
		}
		
	}
	var_dump($rel_array);
	
	
}

?>
