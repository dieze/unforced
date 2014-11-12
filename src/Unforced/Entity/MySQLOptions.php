<?php

/**
 * MySQL options.
 *
 * MySQL options consist of a Database name and a Table prefix.
 *
 * @author Adrien Desfourneaux
 * @version 1.0.0
 *
 * @history
 *
 * Date       | Author              | Version | Remarks
 * ---------- | ------------------- | ------- | ---------------
 * 23-06-2014 | Adrien Desfourneaux | 1.0.0   | Initial version.
 */
class MySQLOptions {
	/**
	 * Database name.
	 * @var string
	 * @since 1.0.0
	 */
	protected $dbName;

	/**
	 * Table prefix.
	 * @var string
	 * @since 1.0.0
	 */
	protected $tablePrefix = '';

	/**
	 * Get the Database name.
	 * @return string The database name.
	 * @since 1.0.0
	 */
	public function getDbName() {
		return $this->dbName;
	}

	/**
	 * Set the database name.
	 * @param string $name The new database name.
	 * @return These MySQLOptions.
	 * @since 1.0.0
 	 */
	public function setDbName($name) {
		$this->dbName = $name;
		return $this;
	}

	/**
	 * Get the table prefix.
	 * @return string The table prefix.
	 * @since 1.0.0
	 */
	public function getTablePrefix() {
		return $this->tablePrefix;
	}

	/**
	 * Set the table prefix.
	 * @param string $prefix The new table prefix.
	 * @return These MySQLOptions.
	 * @since 1.0.0
	 */
	public function setTablePrefix($prefix) {
		$this->tablePrefix = $prefix;
		return $this;
	}
}