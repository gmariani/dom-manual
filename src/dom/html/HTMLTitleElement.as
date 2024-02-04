package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * The document title. See the TITLE element definition in HTML 4.01.
	 */
	public class HTMLTitleElement extends HTMLElement {
		
		/**
		 * The specified title as a string.
		 */
		override public function get text():DOMString { return null; };
		override public function set text(value:DOMString):void { };
	}
}