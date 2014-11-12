<?php

/**
 * Salesforce credentials.
 *
 * Salesforce credentials are username, password and security key.
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
class SalesforceCredentials extends Credentials {
	
	/**
	 * Salesforce security key.
	 * @var string
	 * @since 1.0.0
	 */
	protected $securityKey;

	/**
	 * Get the security key.
	 * @return string The security key.
	 * @since 1.0.0
	 */
	public function getSecurityKey() {
		return $this->securityKey;
	}

	/**
	 * Set the security key.
	 * @param string $securityKey New security key.
	 * @return These credentials.
	 */
	public function setSecurityKey($securityKey) {
		$this->securityKey = $securityKey;
		return $this;
	}
}