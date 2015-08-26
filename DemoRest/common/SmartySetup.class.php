<?php

require_once('/wamp/www/DemoRest_data/Smarty/libs/Smarty.class.php');

class SmartySetup extends Smarty {

      public function __construct() {
              parent::__construct();
              $this->setTemplateDir(SMARTY_DIR2 . 'templates');
              $this->setCompileDir(SMARTY_DIR2 . 'templates_c');
              $this->setConfigDir(SMARTY_DIR2 . 'configs');
              $this->setCacheDir(SMARTY_DIR2 . 'cache');
      }

}


?>
