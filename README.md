Unforced
===========

Introduction
-------------

Unforced is a PHP project that helps you to backup your Salesforce objects and records into a MySQL database. The initial code was released by pluke in 2009 and available on [SourceForge](http://unforced.sourceforge.net/). The code is based on Mike Simond's code from his brilliant website [http://www.mikesimonds.com/](http://www.mikesimonds.com/). He kindly said that we could release it under an OpenSource license, in this case the [GPLv2](http://www.gnu.org/licenses/gpl-2.0.html). I decided to fork the project on GitHub to improve it to meet my needs.

###Introduction by the original author

I wrote this code to back up our Salesforce data so we can perform SQL queries on it as opposed to SOQL, as part of my work for Teach First in the UK.  I also intended to use it to hook salesforce up with elgg but not sure I'll have time to do that.  The aim of this code is to give you the relevant functions to hook your salesforce instance up with any CMS, making salesforce and php integration that little bit easier.

Why don't we have direct writes and reads to and from salesforce?  I got this working with elgg but it proved a little cumbersome and slow, hence I like the MySQL middle man option.  MySQL as a fast repository for your data and then synchronising it with salesforce behind the scenes.

Finally, use at your own risk!

Installation
--------------

### Installation with git

If you have git installed, installation is pretty simple :

	git clone https://github.com/dieze/unforced.git
	git submodule init
	git submodule update
	
### Installation without git

1. Download unforced ZIP from [https://github.com/dieze/unforced](https://github.com/dieze/unforced) and extract it on your webserver (e.g. /www of /htdocs).

2. Download [Force.com Toolkit for PHP (Version 20.0)](https://developer.salesforce.com/page/Force.com_Toolkit_for_PHP) ZIP and extract it in the *includes/* folder. Copy *includes/Force.com-Toolkit-for-PHP/soapclient* to *includes/*.

3. Download [ADOdb](https://github.com/ADOdb/ADOdb) ZIP and extract it in the *includes/* folder. Then rename the extracted directory *ADOdb* to *adodb*.

### Download your partner WSDL

To get your partner WSDL follow these instructions: [Downloading Salesforce WSDLs and Client Authentication Certificates](https://help.salesforce.com/HTViewHelpDoc?id=dev_wsdl.htm&language=en_US). Place the partner WSDL in the *soapclient* folder naming it like : partner.wsdl*-your-organisation-name*.xml. Example : partner.wsdl-7demo.xml 

### Set permissions

Check that your webserver must have read/write permissions to the *data* folder and all its files. If not, unforced won't be able to write sql table creation files.

Also make sure to have *error.log* writable by the webserver.

<!---

2.	##SKIP THIS!!##You need to then extract your partner WSDL and place it in the soapclient folder, to get your partner WSDL follow these instructions:

http://www.salesforce.com/us/developer/docs/sforce70/wwhelp/wwhimpl/common/html/wwhelp.htm?context=sforceAPI_WWHelp&file=sforce_API_partner_intro.html##SKIP THIS!! as SOAP versions above 13 don't seem to work##

That should be the salesforce side set up.  Next thing to do is get the MySQL side sorted.

3.	Download the adodb package (i used the adodb-php5-only version) http://adodb.sourceforge.net/#download
4.	copy these files into the adodb folder.
5.	In MySQL set up a database called "salesforce_".
6.	Open the index.html file and click Create. insert all the relevant passwords (you may need your security token first time you run it). Click "Create MySQL Tables".

This will build two .sql files in the data folder that will then be used to build your mysql database.

Check that your mysql database has been created as it says in step 5.

7.	From index.html select "Update your MySQL backup". this should list all the tables you have on your salesforce instance. Select the ones you want to update and click "Update MySQL Tables". Watch it work and that's it!

If you want to get involved with development please drop me a mail at pkemp@teachfirst.org.uk

==DESCRIPTION==

index.html
main interface to the program

create.php
allows you to replicate salesforce structure in a mysql table

updater.php
Once you have created your salesforce table structure in mysql this allows you to replicate salesforce records

create_code.php
codes to call the routines to make the database structure, use it as an example on how to call routines

updater_code.php
codes to call the routines to replicate the salesforce records, use it as an example on how to call routines

//functions folder

sf_mysql_functions.php
functions that allow a user to copy data records from salesforce and insert them into a mysql database.  Also implements relationship structure. splits soql calls into 1000 character chunks

salesforce_mysql_build.php
This containts routines to create a mysql table that resembles your salesforce instance.  First by creating salesforce_mysql.sql that holds the table definitions (it currently pulls enum types, you can switch this off); Second creating relationships.sql that mimics all the relationships between objects.  the table structure sql is executed, but the relationships are not.

sf_mysql_global.php
global functions to help the other routines work: mysql connection routines, mysql / salesforce keyword handling.

//data

relationships.sql
holds the relationships and foreign keys

salesforce_mysql.sql
holds the table structure


==Changes - ##2009-12-13##==
FIXED: Relationships in mySQL using InnoDB
CLEANED: interface to the program
CLEANED: code in general, got rid of scraper

ADDED: 	modularised functions
ADDED: 	Ability to update a mySQL table with new records instead of truncating on each update
ADDED:	better error handling

TESTING:	Used the describeSObjects() function to store Entity relationships and picklists
TESTING:	renaming salesforce fields that are SQL keywords.

TODO: Write code to upsert data from mySQL to Salesforce on demand without changing salesforce structure (e.g. externalIDfields)
TODO: work out what to do with _tag tables
TODO: Write routines to upsert and downsert specified objects with specified fields
TODO: sort out keyword routines on updating data
TODO: sort out tables that can't be directly queried: http://community.salesforce.com/sforce/board/message?board.id=JAVA_development&message.id=4781

==Changes - ##2009-03-13##==
FIXED: Inserting SF objects to mySQL using toolkit 13.0
FIXED: Modulised components so that people can utilise these routines in their own code.

ADDED: 	Primary key attribute on all mysql tables
ADDED: 	Ability to rebuild table from original sql file without requerying salesforce
ADDED: 	Split SOQL queries into multiple chunks to accommodate SF objects with stupid amounts of fields
ADDED: 	upsert routine for new and changed sf objects to mySQL

TESTING:	Used the describeSObjects() function to store Entity relationships and picklists
TESTING:	renaming salesforce fields that are SQL keywords.

TODO: Write code to upsert data from mySQL to Salesforce on demand without changing salesforce structure (e.g. externalIDfields)
TODO: work out what to do with _tag tables
TODO: Write routines to upsert and downsert specified objects with specified fields
TODO: Implement error handling routines from salesforce error messages
TODO: phase out functions tored in scraper.php-->


