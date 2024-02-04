package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * This contains generic meta-information about the document. See the META element definition in HTML 4.01.
	 */
	public class HTMLMetaElement extends HTMLElement {
		
		/**
		 * Associated information. See the content attribute definition in HTML 4.01.
		 */
		public function get content():DOMString { return null; };
		public function set content(value:DOMString):void { };
		
		/**
		 * HTTP response header name [IETF RFC 2616]. See the http-equiv attribute definition in HTML 4.01.
		 */
		public function get httpEquiv():DOMString { return null; };
		public function set httpEquiv(value:DOMString):void { };
		
		/**
		 * Meta information name. See the name attribute definition in HTML 4.01.
		 */
		public function get name():DOMString { return null; };
		public function set name(value:DOMString):void { };
		
		/**
		 * Select form of content. See the scheme attribute definition in HTML 4.01.
		 */
		public function get scheme():DOMString { return null; };
		public function set scheme(value:DOMString):void { };
	}
}