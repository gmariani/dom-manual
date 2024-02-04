package dom.html {
	
	import dom.core.types.DOMString;
	import dom.html.HTMLElement;
	
	/**
	 * Root of an HTML document. See the HTML element definition in HTML 4.01.
	 */
	public class HTMLHtmlElement extends HTMLElement {
		
		/**
		 * Version information about the document's DTD. This attribute is deprecated 
		 * in HTML 4.01.
		 */
		public function get version():DOMString { return null; };
		public function set version(value:DOMString):void { };
	}
}