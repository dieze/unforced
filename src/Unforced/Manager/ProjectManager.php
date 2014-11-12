<?php

/**
 * Class to manage a project.
 *
 * In this page, the user can select an existing
 * project or create a new project. All projects
 * are folders that reside in "/projects" directory.
 * 
 * A project consist of a Partner WSDL file, a Salesforce
 * username, a Salesforce password which won't be stored,
 * a table prefix, a MySQL Database name, a MySQL username,
 * and a MySQL password.
 *
 * @author Adrien Desfourneaux
 * @version 1.0.0
 *
 * @history
 *
 * Date       | Author              | Version | Remarks
 * ---------- | ------------------- | ------- | ---------------
 * 20-06-2014 | Adrien Desfourneaux | 1.0.0   | Initial version.
 * 04-07-2014 | Adrien Desfourneaux | 1.1.0   | New method loadProject($name).
 *            |                     |         | New attribute projectFile.
 */

class ProjectManager {

    /**
     * Directory of projects.
     *
     * @var String
     * @since 1.0.0
     */
    protected $projectsDir;

    /**
     * Name of project metadata file.
     *
     * @var String
     * @since 1.1.0
     */
    protected $projectFile;

    /**
     * Array of projects name.
     *
     * @var array
     * @since 1.0.0
     */
    protected $projects;

    /**
     * Constructor of ProjectsPage.
     * 
     * @since 1.0.0
     * @revision 1.1.0 Initialize $projectFile.
     */
    public function __construct() {
    	$this->projectsDir = __DIR__ . '/../projects';
        $this->projectFile = 'project.xml';
        $this->projects = $this->getProjects();
    }

    /**
     * Get an array of projects.
     *
     * Lazy initialize $projects.
     * 
     * @return array Array of projects.
     * @since 1.0.0
     */
    public function getProjects() {
        if ($this->projects === null) {
            $this->projects = array();

            try {
                $files = scandir($this->projectsDir);
            } catch (Exception $ex) {
                echo $ex->message;
            }

            if (!$files) {
                echo "Can't open directory \"$this->projectsDir\"\n";
                exit;
            }

            // Only get directories.
            foreach ($files as $file) {
                if (is_dir($this->projectsDir . '/' . $file) && $file != '.' && $file != '..') {
                    array_push($this->projects, $this->loadProject($file));
                }
            }
        }

        return $this->projects;
    }

    /**
     * Load a project's metadata.
     * 
     * @param string $name Folder name for project.
     * @return Project A Project instance.
     * @since 1.1.0
     */
    public function loadProject($name) {
        $mdFile = $this->projectsDir . '/' . $name . '/' . $this->projectFile;

        if (file_exists($mdFile)) {
            $metadata = file_get_contents($mdFile);

            if ($metadata !== false) {
                echo $metadata;
                return $metadata;
            }
        }
    }
}

?>