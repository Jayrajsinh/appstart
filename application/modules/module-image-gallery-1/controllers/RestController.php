<?php
class ModuleImageGallery1_RestController extends Standard_Rest_Controller {
	/*
	 * (non-PHPdoc) @see Zend_Rest_Controller::getAction()
	 */
	public function getAction() {
		// TODO Auto-generated method stub
		$service = $this->_request->getParam("service",null);
		if($service==null) {
			$this->_sendError("No service called");
		} else {
			if($service == "sync") {
				$this->_sync();
			} else {
				$this->_sendError("Invalid service");
			}
		}
	}
	
	/*
	 * (non-PHPdoc) @see Zend_Rest_Controller::postAction()
	 */
	public function postAction() {
		// TODO Auto-generated method stub
	}
	
	/*
	 * (non-PHPdoc) @see Zend_Rest_Controller::putAction()
	 */
	public function putAction() {
		// TODO Auto-generated method stub
	}
	
	/*
	 * (non-PHPdoc) @see Zend_Rest_Controller::deleteAction()
	 */
	public function deleteAction() {
		// TODO Auto-generated method stub
	}
	
	protected function _sync() {
		$customer_id = $this->_request->getParam("customer_id",null);
		$device_type = $this->_request->getParam("device_type",null);
		if($customer_id===null || $device_type == null) {
			$this->_sendError("Invalid request");
		} else {
			try{
				$mapper = new Admin_Model_Mapper_Customer();
				$customer = $mapper->find($customer_id);
				if($customer) {
					$response = array();
					$imageMapper = new ModuleImageGallery1_Model_Mapper_ModuleImageGallery1();
					$imageModel = $imageMapper->fetchAll("customer_id=".$customer_id);
					if($imageModel) {
						foreach($imageModel as $image) {
							$imageDetails = array();
							$imageDetailMapper = new ModuleImageGallery1_Model_Mapper_ModuleImageGalleryDetail1();
							$imageDetailModel = $imageDetailMapper->fetchAll("module_image_gallery_1_id=".$image->getModuleImageGallery1Id());
							if($imageDetailModel) {
								foreach($imageDetailModel as $image_detail) {
									$details = $image_detail->toArray();
									if(isset($details["image_path"])) {
										$details["image_path"] = "resource/module-image-gallery-1/thumb/".$customer_id."/".$details["image_path"];
									}
									$imageDetails[] = $details;
								}
							}
							
							$response["data"][] = array("tbl_module_image_gallery_1"=>$image->toArray(),"tbl_module_image_gallery_detail_1"=>$imageDetails);
						}
					}
					$data["status"] = "success";
					$data["data"] = $response;
					$this->_sendData($data);
				} else {
					$this->_sendError("Invalid customer ID");
				}
			} catch (Exception $ex) {
				$this->_sendError($ex->getMessage());
			}
		}
	}
	/* (non-PHPdoc)
	 * @see Zend_Rest_Controller::headAction()
	 */public function headAction() {
		// TODO Auto-generated method stub
		}

}