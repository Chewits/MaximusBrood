<? 
 
class FilterHelper extends Helper {
	var $helpers = array('Text');

	function text($text) {
		$text = nl2br($text);
		$text = $this->Text->autoLink($text);
		return $text;
	}
}
  
?>