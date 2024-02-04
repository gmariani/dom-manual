package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Generic block container.
	 */
	public class HTMLDivElement extends HTMLElement {
		
		/**
		 * Horizontal text alignment. This attribute is deprecated in HTML 4.01.
		 */
		public function get align():DOMString { return null; };
		public function set align(value:DOMString):void { };
	}
}