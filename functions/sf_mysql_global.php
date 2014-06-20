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

error_reporting(E_ERROR | E_WARNING | E_PARSE);
//require_once (__DIR__ . '/../includes/soapclient/SforcePartnerClient.php');
//require_once (__DIR__ . '/../includes/soapclient/SforceHeaderOptions.php');
ini_set("soap.wsdl_cache_enabled", "0");

$keywords = array("ADD","ALL","ALTER","ANALYZE","AND","AS","ASC","ASENSITIVE","AUTO_INCREMENT","BDB","BEFORE","BERKELEYDB","BETWEEN","BIGINT","BINARY","BLOB","BOTH","BY","CALL","CASCADE","CASE","CHANGE","CHAR","CHARACTER","CHECK","COLLATE","COLUMN","COLUMNS","CONDITION","CONNECTION","CONSTRAINT","CONTINUE","CREATE","CROSS","CURRENT_DATE","CURRENT_TIME","CURRENT_TIMESTAMP","CURSOR","DATABASE","DATABASES","DAY_HOUR","DAY_MICROSECOND","DAY_MINUTE","DAY_SECOND","DEC DECIMAL","DECLARE","DEFAULT","DELAYED","DELETE","DESC","DESCRIBE","DETERMINISTIC","DISTINCT","DISTINCTROW","DIV","DOUBLE","DROP","ELSE","ELSEIF","ENCLOSED","ESCAPED","EXISTS","EXIT","EXPLAIN","FALSE","FETCH","FIELDS","FLOAT","FOR","FORCE","FOREIGN","FOUND","FRAC_SECOND","FROM","FULLTEXT","GRANT","GROUP","HAVING","HIGH_PRIORITY","HOUR_MICROSECOND","HOUR_MINUTE","HOUR_SECOND","IF","IGNORE","IN","INDEX","INFILE","INNER","INNODB","INOUT","INSENSITIVE","INSERT","INT","INTEGER","INTERVAL","INTO","IO_THREAD","IS","ITERATE","JOIN","KEY KEYS","KILL","LEADING","LEAVE","LEFT","LIKE","LIMIT","LINES","LOAD","LOCALTIME","LOCALTIMESTAMP","LOCK","LONG","LONGBLOB","LONGTEXT","LOOP","LOW_PRIORITY","MASTER_SERVER_ID","MATCH","MEDIUMBLOB","MEDIUMINT","MEDIUMTEXT","MIDDLEINT","MINUTE_MICROSECOND","MINUTE_SECOND","MOD","NATURAL","NOT","NO_WRITE_TO_BINLOG","NULL","NUMERIC","ON","OPTIMIZE","OPTION","OPTIONALLY","OR","ORDER","OUT","OUTER","OUTFILE","PRECISION","PRIMARY","PRIVILEGES","PROCEDURE","PURGE","READ","REAL","REFERENCES","REGEXP","RENAME","REPEAT","REPLACE","REQUIRE","RESTRICT","RETURN","REVOKE","RIGHT","RLIKE","SECOND_MICROSECOND","SELECT","SENSITIVE","SEPARATOR","SET","SHOW","SMALLINT","SOME","SONAME","SPATIAL","SPECIFIC","SQL","SQLEXCEPTION","SQLSTATE","SQLWARNING","SQL_BIG_RESULT","SQL_CALC_FOUND_ROWS","SQL_SMALL_RESULT","SQL_TSI_DAY","SQL_TSI_FRAC_SECOND","SQL_TSI_HOUR","SQL_TSI_MINUTE","SQL_TSI_MONTH","SQL_TSI_QUARTER","SQL_TSI_SECOND","SQL_TSI_WEEK","SQL_TSI_YEAR","SSL","STARTING","STRAIGHT_JOIN","STRIPED","TABLE","TABLES","TERMINATED","THEN","TIMESTAMPADD","TIMESTAMPDIFF","TINYBLOB","TINYINT","TINYTEXT","TO","TRAILING","TRUE","UNDO","UNION","UNIQUE","UNLOCK","UNSIGNED","UPDATE","USAGE","USE","USER_RESOURCES","USING UTC_DATE","UTC_TIME","UTC_TIMESTAMP","VALUES","VARBINARY","VARCHAR","VARCHARACTER","VARYING","WHEN","WHERE","WHILE","WITH","WRITE","XOR","YEAR_MONTH","ZEROFILL");

//connect to the mysql database
function mysql_connection($o_host, $o_user, $o_pass, $o_db)
{
    try
	{
		$db = NewADOConnection('mysql');
		$db->Connect($o_host, $o_user, $o_pass, $o_db);
	}
	catch (exception $e)
	{
		echo '<pre>' . print_r($e, true) . '</pre>';
	}

	return $db;
}

//connect to your salesforce instance
function salesforce_connection($wsdl, $user, $pass)
{
    try
	{
		$client = new SforcePartnerClient();
		$client->createConnection($wsdl);
		$loginResult = $client->login($user, $pass);
		if ($loginResult)
		{
			return $client;
		}
		else
		{
			//error handling    	
		}
	}
	catch (exception $e)
	{
		echo '<pre>' . print_r($e, true) . '</pre>';
	}
}

//This is a check because the word "Case" & "Group" are reserved words in MySQL
//check reserved words here > http://www.htmlite.com/mysql002a.php
// This code makes sure that you aren't using any SQL keywords adding back quotes so it is parsed by MySQL
//function checkFieldName($name, $postfix="__ch")
function checkFieldName($name)
{
	global $keywords;
	if (in_array(strtoupper($name), $keywords))
		return  "`" . $name . "`";
		//return $name;
	else
		return $name;
}

// check to see if the field you are updating or commiting was originally a keyword fixed by checkFieldName and return the original
//function fixFieldName($name, $postfix="__ch")
function fixFieldName($name)
{
	global $keywords;
	
	$res = str_replace("`", "", $name);
	if (in_array(strtoupper($res), $keywords))
		return $res;	
	else
		return $name;
	
	/*
	$res = stripos($name, "`");
	if ($res != 0)
	{
		$real = str_split($name, $res);
		if (in_array(strtoupper($real[0]), $keywords))
		{
			return $real[0];
		}
		else
		{
			return $name."-".$res;
		}
	}
	else
	{
		return $name.$res;
	}
	*/
}

?>
