package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Embedded image.
	 */
	public class HTMLImageElement extends HTMLElement {
		
		/**
		 * Aligns this object (vertically or horizontally) with respect to its surrounding text. This attribute is deprecated in HTML 4.01.
		 * <p>Valid values are: 
		 * <ul>
		 * <li>bottom</li>
		 * <li>middle</li>
		 * <li>top</li>
		 * </ul></p>
		 */
		public function get align():DOMString { return null; };
		public function set align(value:DOMString):void { };
		
		/**
		 * Alternate text for user agents not rendering the normal content of this element.
		 */
		public function get alt():DOMString { return null; };
		public function set alt(value:DOMString):void { };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * Width of border around image. <strong>Note:</strong> The type of this attribute was "DOMString" in DOM Level 1 HTML.
		 */
		public function get border():DOMString { return null; };
		public function set border(value:DOMString):void { };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * The height of the image in pixels. <strong>Note:</strong> The type of this attribute was "DOMString" in DOM Level 1 HTML.
		 */
		public function get height():Number { return 0; };
		public function set height(value:Number):void { };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * Horizontal space to the left and right of this image in pixels. This attribute is deprecated in HTML 4.01. <strong>Note:</strong> The type of this attribute was "DOMString" in DOM Level 1 HTML.
		 */
		public function get hspace():Number { return 0; };
		public function set hspace(value:Number):void { };
		
		/**
		 * Use server-side image map.
		 */
		public function get isMap():Boolean { return false; };
		public function set isMap(value:Boolean):void { };
		
		/**
		 * URI designating a long description of this image or frame.
		 */
		public function get longDesc():DOMString { return null; };
		public function set longDesc(value:DOMString):void { };
		
		/**
		 * The name of the element (for backwards compatibility).
		 */
		public function get name():DOMString { return null; };
		public function set name(value:DOMString):void { };
		
		/**
		 * URI designating the source of this image.
		 */
		public function get src():DOMString { return null; };
		public function set src(value:DOMString):void { };
		
		/**
		 * Use client-side image map.
		 */
		public function get useMap():DOMString { return null; };
		public function set useMap(value:DOMString):void { };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * Vertical space above and below this image in pixels. This attribute is deprecated in HTML 4.01. <strong>Note:</strong> The type of this attribute was "DOMString" in DOM Level 1 HTML.
		 */
		public function get vspace():Number { return 0; };
		public function set vspace(value:Number):void { };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * The width of the image in pixels. <strong>Note:</strong> The type of this attribute was "DOMString" in DOM Level 1 HTML.
		 */
		public function get width():Number { return 0; };
		public function set width(value:Number):void { };
	}
}