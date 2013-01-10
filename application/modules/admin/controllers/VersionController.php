<?php
class Admin_VersionController extends Zend_Controller_Action{
	public function indexAction() {
		$active_lang_id = Standard_Functions::getCurrentUser ()->active_language_id;
		$this->view->addlink = $this->view->url ( array (
				"module" => "admin",
				"controller" => "version",
				"action" => "add" 
		), "default", true );
	}

	public function addAction(){
		$form = new Admin_Form_Version();
		$action = $this->view->url ( array (
				"module" => "admin",
				"controller" => "version",
				"action" => "save"
		), "default", true );
		$this->view->assign ( array (
				"partial" => "version/partials/add.phtml"
		) );
		$form->setAction($action);
		$this->view->form = $form;
		$this->render ( "add-edit" );
	}

	public function saveAction(){
		$form = new Admin_Form_Version ();
		$request = $this->getRequest ();
		$response = array ();
		if ($this->_request->isPost ()) {
			if ($form->isValid ( $this->_request->getParams ())) {
				try {
					$versionMapper = new Admin_Model_Mapper_Version ();
					$versionMapper->getDbTable ()->getAdapter ()->beginTransaction ();
					$allFormValues = $form->getValues ();
					$date_time =  Standard_Functions::getCurrentDateTime ();
					$system_user = Standard_Functions::getCurrentUser ()->system_user_id;
					if($allFormValues["created_at"] != ""){
                      	$start_date = DateTime::createFromFormat ( "d/m/Y H:i", $allFormValues["created_at"] );
	                       	if($start_date){
	                            $allFormValues["created_at"] = $start_date->format ( "Y-m-d H:i:s" );
	                        }
	                }else{
	                        unset($allFormValues["created_at"]);
	                }
	                $versionModel = new Admin_Model_Version ( $allFormValues );
					if ($request->getParam ( "version_id", "" ) == "") {
						// save push message
						$versionModel->setCreatedBy ( $system_user );
						$versionModel->setLastUpdatedBy ( $system_user );
						$versionModel->setLastUpdatedAt ( $date_time );
						$versionModel = $versionModel->save ();
						// save push message details
						$version_id = $versionModel->get ( 'version_id' );
						$LanguageMapper = new Admin_Model_Mapper_Language ();
						$LanguageModel = $LanguageMapper->fetchAll ();
						if (is_array ( $LanguageModel )) {
							if(is_array($allFormValues['category'])){
								$categoryArray = $allFormValues['category'];
								$csv ="";
								foreach ($categoryArray as $category) {
									if($category != ""){
										$csv .= $category;
										$csv .= ',';
									}
								}
								$allFormValues['category'] = $csv;
							}
							foreach ( $LanguageModel as $languages ) {
								$versionDetailModel = new Admin_Model_VersionDetail ( $allFormValues );
								$versionDetailModel->setVersionId ( $version_id );
								$versionDetailModel->setLanguageId ( $languages->getLanguageId ());
								$versionDetailModel = $versionDetailModel->save ();
							}
						}
					} else {
						$versionModel->setLastUpdatedBy ( $system_user );
						$versionModel->setLastUpdatedAt ( $date_time );
						$versionModel = $versionModel->save ();
						
						$versionDetailModel = new Version_Model_VersionDetail ( $allFormValues );
						//$pushMessageDetailModel->setMessageDate($date_time);
						$versionDetailModel = $versionDetailModel->save ();
					}
					$versionMapper->getDbTable ()->getAdapter ()->commit ();
					
					$response = array (
							"success" => $versionModel->toArray () 
					);
				} catch ( Exception $ex ) {
					$response = $ex->getMessage();
				}
			} else {
				$errors = $form->getMessages ();
				foreach ( $errors as $name => $error ) {
					$errors [$name] = $error [0];
				}
				$response = array (
						"errors" => $errors 
				);
			}
		}
		// Send error or success message accordingly
		$this->_helper->json ( $response );
	}

	public function gridAction()
    {
    	$LanguageMapper = new Admin_Model_Mapper_Language ();
    	$languages = $LanguageMapper->getDbTable()->fetchAll ()->toArray();
    	$this->_helper->layout ()->disableLayout ();
    	$this->_helper->viewRenderer->setNoRender ();
    	$mapper = new Admin_Model_Mapper_Version();
    	$select = $mapper->getDbTable ()
				    	->select ( false )
				    	->setIntegrityCheck ( false )
				    	->from ( array ("v" => "version"),
				    			array (
				    					"v.version_id" => "version_id",
				    					"v.created" => "created_at",
				    					"v.status" => "status",
				    					"v.created_at" => "created_at"
				 				) 
				    		)
    					->joinLeft ( array ("vd" => "version_detail"),
    						"vd.version_id = v.version_id",
    									array (
		    									"vd.title" => "title",
		    									"vd.version_number" => "version_number",
		    									"vd.language_id" => "language_id",
		    									"vd.description" => "description",
		    							));								
    	
    	$response = $mapper->getGridData(array (
							'column' => array (
									'id' => array (
											'actions' 
									),
							'replace' => array (
									'v_status' => array (
											'1' => 'Active',
											'0' => 'Inactive' 
									) 
							))
					),null,$select);
    	
    	$rows = $response ['aaData'];
    	foreach ( $rows as $rowId => $row ) {
    		//print_r($row);
    		//die();
    		if($languages) {
    			foreach ($languages as $lang) {
    				//print_r($lang);
    				//die();
    				$editUrl = $this->view->url ( array (
    												"module" => "admin",
    												"controller" => "index",
    												"action" => "edit",
    												"id" => $row [4] ["v.version_id"],
    												"lang" => $lang["language_id"]
    										), "default", true );
    				$edit[] = '<a href="'. $editUrl .'"><img src="appstart/public/images/lang/'.$lang["logo"].'" alt="'.$lang["title"].'" /></a>';
    			}
    		}
    		$deleteUrl = $this->view->url ( array (
    				"module" => "admin",
    				"controller" => "version",
    				"action" => "delete",
    				"id" => $row [4] ["version_id"]
    		), "default", true );
    			
			$defaultEdit = '<div id="editLanguage">&nbsp;<div class="flag-list">'.implode("",$edit).'</div></div>';
			$delete = '<a href="' . $deleteUrl . '" class="button-grid greay grid_delete" >'.$this->view->translate('Delete').'</a>';
    		$sap = ($edit == "" || $delete == "") ? '' : '&nbsp;|&nbsp;';
    			
    		$response ['aaData'] [$rowId] [4] = $defaultEdit . $sap . $delete;
    	}
    	
    	$jsonGrid = Zend_Json::encode ( $response );
    	$this->_response->appendBody ( $jsonGrid );
    }
}