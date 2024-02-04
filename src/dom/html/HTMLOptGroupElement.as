package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Group options together in logical subdivisions. See the OPTGROUP element definition in HTML 4.01.
	 */
	public class HTMLOptGroupElement extends HTMLElement {
		
		/**
		 * The control is unavailable in this context. See the disabled attribute definition in HTML 4.01.
		 */
		public function get disabled():Boolean { return false; };
		public function set disabled(value:Boolean):void { };
		
		/**
		 * Assigns a label to this option group. See the label attribute definition in HTML 4.01.
		 */
		public function get label():DOMString { return null; };
		public function set label(value:DOMString):void { };
	}
}