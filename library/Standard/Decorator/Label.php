<?php
class Standard_Decorator_Label extends Zend_Form_Decorator_Abstract
{
	protected $_format = '<label for="%s">%s</label>';
	 
	public function render($content)
	{
		$element = $this->getElement();
		$name    = $element->getFullyQualifiedName();
		$label   = $element->getLabel();
		$id      = $element->getId();
		$value   = $element->getValue();
		$markup  = sprintf($this->_format, $id, $label);
		return $markup;
	}
	public function setTag() {
		
	}
}