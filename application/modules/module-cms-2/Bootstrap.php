<?php

class ModuleCms2_Bootstrap extends Zend_Application_Module_Bootstrap
{
	protected function _initRestRoutes() {
		$this->bootstrap ( 'FrontController' );
		$frontController = Zend_Controller_Front::getInstance ();
		$restRoute = new Zend_Rest_Route ( $frontController, array (), array (
				'module-cms-2' => array (
						'rest'
				)
		) );
		$frontController->getRouter ()->addRoute ( 'modulecms2restroute', $restRoute );
	}
}	

