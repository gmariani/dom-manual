package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Style information. See the STYLE element definition in HTML 4.01, the CSS 
	 * module [DOM Level 2 Style Sheets and CSS] and the LinkStyle interface in 
	 * the StyleSheets module [DOM Level 2 Style Sheets and CSS].
	 */
	public class HTMLStyleElement extends HTMLElement {
		
		/**
		 * Enables/disables the style sheet.
		 */
		public function get disabled():Boolean { return false; };
		public function set disabled(value:Boolean):void { };
		
		/**
		 * Designed for use with one or more target media. See the media attribute definition in HTML 4.01.
		 */
		public function get media():DOMString { return null; };
		public function set media(value:DOMString):void { };
		
		/**
		 * The content type of the style sheet language. See the type attribute definition in HTML 4.01.
		 */
		public function get type():DOMString { return null; };
		public function set type(value:DOMString):void { };
	}
}