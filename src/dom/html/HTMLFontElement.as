package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Local change to font. This element is deprecated in HTML 4.01.
	 */
	public class HTMLFontElement extends HTMLElement {
		
		/**
		 * Font color. This attribute is deprecated in HTML 4.01.
		 */
		public function get color():DOMString { return null; };
		public function set color(value:DOMString):void { };
		
		/**
		 * Font face identifier. This attribute is deprecated in HTML 4.01.
		 */
		public function get face():DOMString { return null; };
		public function set face(value:DOMString):void { };
		
		/**
		 * Computed font size. This attribute is deprecated in HTML 4.01.
		 */
		public function get size():Number { return 0; };
		public function set size(value:Number):void { };
	}
}