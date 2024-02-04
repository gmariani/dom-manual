package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Document base URI [IETF RFC 2396]. See the BASE element definition in HTML 4.01.
	 */
	public class HTMLBaseElement extends HTMLElement {
		
		/**
		 * The base URI [IETF RFC 2396]. See the href attribute definition in HTML 4.01.
		 */
		public function get href():DOMString { return null; };
		public function set href(value:DOMString):void { };
		
		/**
		 * The default target frame. See the target attribute definition in HTML 4.01.
		 */
		public function get target():DOMString { return null; };
		public function set target(value:DOMString):void { };
	}
}