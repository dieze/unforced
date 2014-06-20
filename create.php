<?php

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <title>Salesforce/MySQL Database Replication Tool</title>
</head>

<body>
  <center><img src="http://upload.wikimedia.org/wikipedia/en/0/0a/Salesforce_logo.png" alt="" border="0"></center>
  <form action="create_code.php" method="post">
      <table width="100%" align="center">
         <tr>
          <td align="right">*&#160;Salesforce Username:&#160;</td>
          <td align="left"><input name="user" type="text" maxlength="50" align="right" value=""></td>
        </tr>
        <tr>
          <td align="right">*&#160;Salesforce Password&#160;</td>
          <td align="left"><input name="pass" type="password" maxlength="50" value=""></td>
        </tr>
        <tr>
          <td align="right">*&#160;Table Prefix:&#160;<br /><i><font size="-3" color="#FF0000">Not required, but useful</font></i></td>
          <td align="left"><input name="o_prefix" type="text" maxlength="50" align="right" value="sforce_"><em><strong>(e.g. sforce_)</strong></em></td>
        </tr>
        <tr>
          <td align="right">*&#160;MySQL Database:&#160;</td>
          <td align="left"><input name="o_db" type="text" maxlength="50" align="right" value="salesforce_"></td>
        </tr>
        <tr>
          <td align="right">*&#160;MySQL Username:&#160;</td>
          <td align="left"><input name="o_user" type="text" maxlength="50" align="right" value="root"></td>
        </tr>
        <tr>
          <td align="right">*&#160;MySQL Password&#160;</td>
          <td align="left"><input name="o_pass" type="password" maxlength="50"></td>
        </tr>
        <tr>
          <td align="right">&#160;Use old salesforce structure&#160;</td>
          <td align="left"><input name="o_skip" type="checkbox"></td>
        </tr>
        <tr>
          <td align="center" colspan="2"><input type="submit" name="submit" value="Create MySQL Tables"></td>
        </tr>
      </table>
    </form>
    <p>
    	<a href="updater.php">Update your MySQL backup</a>
    </p>
  </body>
</html>
