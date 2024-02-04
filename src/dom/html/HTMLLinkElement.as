package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * The LINK element specifies a link to an external resource, and defines this 
	 * document's relationship to that resource (or vice versa). See the LINK 
	 * element definition in HTML 4.01 (see also the LinkStyle interface in the 
	 * StyleSheet module [DOM Level 2 Style Sheets and CSS]).
	 */
	public class HTMLLinkElement extends HTMLElement {
		
		/**
		 * The character encoding of the resource being linked to. See the 
		 * charset attribute definition in HTML 4.01.
		 */
		public function get charset():DOMString { return null; };
		public function set charset(value:DOMString):void { };
		
		/**
		 * Enables/disables the link. This is currently only used for style 
		 * sheet links, and may be used to activate or deactivate style sheets.
		 */
		public function get disabled():Boolean { return false; };
		public function set disabled(value:Boolean):void { };
		
		/**
		 * The URI of the linked resource. See the href 
		 * attribute definition in HTML 4.01.
		 */
		public function get href():DOMString { return null; };
		public function set href(value:DOMString):void { };
		
		/**
		 * Language code of the linked resource. See the hreflang attribute 
		 * definition in HTML 4.01.
		 */
		public function get hreflang():DOMString { return null; };
		public function set hreflang(value:DOMString):void { };
		
		/**
		 * Designed for use with one or more target media. See the media 
		 * attribute definition in HTML 4.01.
		 */
		public function get media():DOMString { return null; };
		public function set media(value:DOMString):void { };
		
		/**
		 * Forward link type. See the rel attribute definition in HTML 4.01.
		 */
		public function get rel():DOMString { return null; };
		public function set rel(value:DOMString):void { };
		
		/**
		 * Reverse link type. See the rev attribute definition in HTML 4.01.
		 */
		public function get rev():DOMString { return null; };
		public function set rev(value:DOMString):void { };
		
		/**
		 * Frame to render the resource in. See the target attribute definition 
		 * in HTML 4.01.
		 */
		public function get target():DOMString { return null; };
		public function set target(value:DOMString):void { };
		
		/**
		 * Advisory content type. See the type attribute definition in HTML 4.01.
		 */
		public function get type():DOMString { return null; };
		public function set type(value:DOMString):void { };
	}
}