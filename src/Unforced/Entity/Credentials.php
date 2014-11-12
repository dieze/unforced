<?php

/**
 * Generic credentials.
 *
 * Credentials are password and password.
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
class Credentials {

	/**
	 * Login.
	 * @var string
	 * @since 1.0.0
	 */
	protected $login;

	/**
	 * Password.
	 * @var string
	 * @since 1.0.0
	 */
	protected $password;

	/**
	 * Get the login.
	 * @return string The login.
	 * @since 1.0.0
	 */
	public function getLogin() {
		return $this->login;
	}

	/**
	 * Set the login.
	 * @param string $login The new login.
	 * @return These credentials.
	 * @since 1.0.0
	 */
	public function setLogin($login) {
		$this->login = $login;
		return $this;
	}

	/**
	 * Get the password.
	 * @return string The password.
	 * @since 1.0.0
	 */
	public function getPassword() {
		return $this->password;
	}

	/**
	 * Set the password.
	 * @param string $password The new password.
	 * @return These credentials.
	 * @since 1.0.0
	 */
	public function setPassword($password) {
		$this->password = $password;
		return $this;
	}
}