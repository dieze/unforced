<?php

/**
 * Project entity.
 *
 * A project consist of a project name,
 * a Partner WSDL file, Salesforce credentials,
 * MySQL credentials and MySQL options.
 *
 * All data, except passwords, are stored in a project.xml file in the
 * root of the project folder in /projects.
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
class Project
{
	/**
	 * Name of the project.
	 * @var string
	 * @since 1.0.0
	 */
	protected $name;

	/**
	 * Path to the Partner WSDL file.
	 * @var string
	 * @since 1.0.0
	 */
	protected $wsdl;

	/**
	 * Salesforce credentials.
	 * @var SalesforceCredentials
	 * @since 1.0.0
	 */
	protected $sfCredentials;

	/**
	 * MySQL credentials.
	 * @var Credentials.
	 * @since 1.0.0
	 */
	protected $mysqlCredentials;

	/**
	 * MySQL Options.
	 * @var MySQLOptions.
	 * @since 1.0.0
	 */
	protected $mysqlOptions;

	/**
	 * Get the name of the project.
	 * @return string Name of the project.
	 * @since 1.0.0
	 */
	public function getName() {
		return $this->name;
	}

	/**
     * Set the name of the project.
     * @param string name New name.
     * @return Project This project entity.
     * @since 1.0.0
     */
	public function setName($name) {
		$this->name = $name;
		return $this;
	}

	/**
     * Get the path to the WSDL file.
     * @return string Path to the WSDL file.
     * @since 1.0.0
     */
	public function getWSDL() {
		return $this->wsdl;
	}

	/**
	 * Set the path to the WSDL file.
	 * @param string $wsdl Path to the WSDL file.
	 * @return Project This Project entity.
	 * @since 1.0.0
	 */
	public function setWSDL($wsdl) {
		$this->wsdl = $wsdl;
		return $this;
	}

	/**
	 * Get the Salesforce credentials.
	 * @return SalesforceCredentials Salesforce Credentials.
	 * @since 1.0.0
	 */
	public function getSfCredentials() {
		return $this->sfCredentials;
	}

	/**
	 * Set the Salesforce credentials.
	 * @param SalesforceCredentials $credentials New credentials.
	 * @return Project This project entity.
	 * @since 1.0.0
	 */
	public function setSfCredentials($credentials) {
		$this->sfCredentials = $credentials;
		return $this;
	}

	/**
	 * Get the MySQL credentials.
	 * @return MySQLCredentials MySQL credentials.
	 * @since 1.0.0
	 */
	public function getMySQLCredentials() {
		return $this->mysqlCredentials;
	}

	/**
	 * Set the MySQL credentials.
	 * @param MySQLCredentials $credentials MySQL credentials.
	 * @return Project This Project entity.
	 * @since 1.0.0
	 */
	public function setMySQLCredentials($credentials) {
		$this->mysqlCredentials = $credentials;
		return $this;
	}

	/**
     * Get the MySQL options.
     * @return MySQLOptions MySQL Options.
     * @since 1.0.0
     */
	public function getMySQLOptions() {
		return $this->mysqlOptions;
	}

	/**
	 * Set the MySQL options.
	 * @param MySQLOptions $options MySQL options.
	 * @return Project This Project entity.
	 * @since 1.0.0
	 */
	public function setMySQLOptions($options) {
		$this->mysqlOptions = $options;
		return $this;
	}
}