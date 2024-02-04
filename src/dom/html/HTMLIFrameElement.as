package dom.html {
	
	import dom.core.Document;
	import dom.core.types.DOMString;
	
	/**
	 * Inline subwindows.
	 */
	public class HTMLIFrameElement extends HTMLElement {
		
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
		 * DOM Level 2
		 * 
		 * The document this frame contains, if there is any and it is available, or null otherwise.
		 */
		public function get contentDocument():Document { return null; };
		
		/**
		 * Request frame borders.
		 */
		public function get frameBorder():DOMString { return null; };
		public function set frameBorder(value:DOMString):void { };
		
		/**
		 * Frame height.
		 */
		public function get height():DOMString { return null; };
		public function set height(value:DOMString):void { };
		
		/**
		 * URI designating a long description of this image or frame.
		 */
		public function get longDesc():DOMString { return null; };
		public function set longDesc(value:DOMString):void { };
		
		/**
		 * Frame margin height, in pixels.
		 */
		public function get marginHeight():DOMString { return null; };
		public function set marginHeight(value:DOMString):void { };
		
		/**
		 * Frame margin width, in pixels.
		 */
		public function get marginWidth():DOMString { return null; };
		public function set marginWidth(value:DOMString):void { };
		
		/**
		 * The frame name (object of the target attribute).
		 */
		public function get name():DOMString { return null; };
		public function set name(value:DOMString):void { };
		
		/**
		 * Specify whether or not the frame should have scrollbars. 
		 */
		public function get scrolling():DOMString { return null; };
		public function set scrolling(value:DOMString):void { };
		
		/**
		 * A URI designating the initial frame contents.
		 */
		public function get src():DOMString { return null; };
		public function set src(value:DOMString):void { };
		
		/**
		 * Frame width.
		 */
		public function get width():DOMString { return null; };
		public function set width(value:DOMString):void { };
	}
}