<?php

ini_set("soap.wsdl_cache_enabled", "0");
require_once (__DIR__ . '/functions/salesforce_mysql_build.php');

//TODO: use this file to launch a database build
if (isset($_POST['submit']))
{
$start_time = microtime(true);
echo($start_time);

	$user = trim($_POST['user']);
    $pass = trim($_POST['pass']);
    $o_db = trim($_POST['o_db']);
    $o_user = trim($_POST['o_user']);
    $o_pass = trim($_POST['o_pass']);
    $o_prefix = trim($_POST['o_prefix']);
    $o_skip = (trim($_POST['o_skip']) == TRUE) ? TRUE : FALSE;
	$wsdl = './includes/soapclient/partner.wsdl.xml';
	
	buildTables($o_prefix, $o_user, $o_pass, $o_db, $wsdl, $user, $pass, $o_skip);
$end_time = microtime(true);
	echo("total time to build tables: " . ($end_time-$start_time));
}
else
{
	echo ("you need to submit something to get this to work");
}



?> 
