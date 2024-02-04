package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Script statements.
	 */
	public class HTMLScriptElement extends HTMLElement {
		
		/**
		 * The character encoding of the linked resource.
		 */
		public function get charset():DOMString { return null; };
		public function set charset(value:DOMString):void { };
		
		/**
		 * Indicates that the user agent can defer processing of the script.
		 */
		public function get defer():Boolean { return false; };
		public function set defer(value:Boolean):void { };
		
		/**
		 * Reserved for future use.
		 */
		public function get event():DOMString { return null; };
		public function set event(value:DOMString):void { };
		
		/**
		 * Reserved for future use.
		 */
		public function get htmlFor():DOMString { return null; };
		public function set htmlFor(value:DOMString):void { };
		
		/**
		 * URI designating an external script.
		 */
		public function get src():DOMString { return null; };
		public function set src(value:DOMString):void { };
		
		/**
		 * The script content of the element.
		 */
		override public function get text():DOMString { return null; };
		override public function set text(value:DOMString):void { };
		
		/**
		 * The content type of the script language.
		 */
		public function get type():DOMString { return null; };
		public function set type(value:DOMString):void { };
	}
}