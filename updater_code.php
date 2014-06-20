<?php

ini_set("soap.wsdl_cache_enabled", "0");

require_once (__DIR__ . '/functions/sf_mysql_functions.php');

$user = trim($_POST['user']);
$pass = trim($_POST['pass']);
$o_host = trim($_POST['o_host']);
$o_db = trim($_POST['o_db']);
$o_user = trim($_POST['o_user']);
$o_pass = trim($_POST['o_pass']);
$o_prefix = trim($_POST['o_prefix']);
$update = trim($_POST['update']);
$Tableschosen = $_POST['Tableschosen'];

$m_objects = get_objects($o_prefix);

$wsdl = __DIR__ . '/includes/soapclient/partner.wsdl.xml';

$start_time = microtime(true);

//remove_relationships($o_prefix, $o_host, $o_user, $o_pass, $o_db, 'data/relationships.sql');
backup_into_mysql($Tableschosen, $o_prefix, $o_host, $o_user, $o_pass, $o_db, $wsdl, $user, $pass, $update);
//create_relationships($o_prefix, $o_host, $o_user, $o_pass, $o_db, 'data/relationships.sql');

$end_time = microtime(true);
echo("<div class='time'>Total time for operation: ". ($end_time - $start_time) ." seconds</div>");


?> 
