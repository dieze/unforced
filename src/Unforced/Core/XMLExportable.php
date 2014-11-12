<?php

/**
 * Interface for a class that is exportable to XML.
 *
 * The class must implement a method XMLExport() that return
 * the XML export string representation of the instance.
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
interface XMLExportable {

	/**
	 * Export a XML representation of the instance.
	 * @return string XML string
	 * @since 1.0.0
	 */
	public function exportXML();
}