<?php

/**
 * Define autoload.
 *
 * @author Adrien Desfourneaux
 * @version 1.0.0
 *
 * @history
 *
 * Date       | Author              | Version | Remarks
 * ---------- | ------------------- | ------- | ---------------
 * 04-07-2014 | Adrien Desfourneaux | 1.0.0   | Initial version.
 */
function __autoload($className) {

	$paths = array('.', 'src');

	foreach ($paths as $path) {
		if (file_exists($path . '/' . $className . '.php')) {
			require_once($path . '/' . $className . '.php');
			return true;
		}
	}
	
    return false;
}