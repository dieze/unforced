<?php
require_once ('./functions/sf_mysql_functions.php'); 
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <title>Salesforce/MySQL Updater</title>
</head>

<body>
  <center><img src="http://upload.wikimedia.org/wikipedia/en/0/0a/Salesforce_logo.png" alt="" border="0"></center>
  <p>Before you run this form make sure that you have a mySQL database set up with all your salesforce objects
  </p>
  
  <!-- <form action="updater-code.php" method="post"> -->
  <form action="updater_code.php" method="post">
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
          <td align="right">*&#160;MySQL host:&#160;</td>
          <td align="left"><input name="o_host" type="text" maxlength="50" align="right" value="localhost"></td>
        </tr>
        <tr>
          <td align="right">*&#160;MySQL Prefix:&#160;</td>
          <td align="left"><input name="o_prefix" type="text" maxlength="50" align="right" value="sforce_"></td>
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
          <td align="left"><input name="o_pass" type="password" maxlength="50" ></td>
        </tr>
        <tr><th scope="row">Tables to update</th>
        <td align="left"><select name="Tableschosen[]" size="15" multiple id="Categories" class="required">
		
<?php
        //read from the table names file and output the tables as a choice of options
        // TODO: get rid of the _tag tables, what is the point of these
        // TODO: add another option so you can select which objects to update and which fields to update within each 'table'
        //$TableFile = "salesforce_tables_cs2.txt";

        $m_objects = get_objects();
        $counter = 0;
        $size = count(array_keys($m_objects));
        $m_keys = array_keys($m_objects);
        
        while ($counter <= $size){
		        echo "<option>" . $m_keys[$counter] . "</option>";
		        $counter++;
		    }
?>
      </select></td>
        
        
        </tr>
		<tr>
          <td align="right">&#160;Update current databases&#160;</td>
          <td align="left"><input name="update" type="checkbox" checked></td>
        </tr>
		
        <tr>
          <td align="center" colspan="2"><input type="submit" name="submit" value="Update MySQL Tables"></td>
        </tr>
      </table>
    </form>
    <p>
    	<a href="create.php">Create your MySQL database</a>
    </p>
  </body>
</html>