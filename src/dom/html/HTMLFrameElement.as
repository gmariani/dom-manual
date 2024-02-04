package dom.html {
	
	import dom.core.Document;
	import dom.core.types.DOMString;
	
	/**
	 * Create a frame.
	 */
	public class HTMLFrameElement extends HTMLElement {
		
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
		 * When true, forbid user from resizing frame.
		 */
		public function get noResize():Boolean { return false; };
		public function set noResize(value:Boolean):void { };
		
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
	}
}