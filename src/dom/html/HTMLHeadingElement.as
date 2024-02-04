package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * For the H1 to H6 elements.
	 */
	public class HTMLHeadingElement extends HTMLElement {
		
		/**
		 * Horizontal text alignment. This attribute is deprecated in HTML 4.01.
		 */
		public function get align():DOMString { return null; };
		public function set align(value:DOMString):void { };
	}
}