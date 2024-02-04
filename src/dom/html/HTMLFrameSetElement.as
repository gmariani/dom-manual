package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Create a grid of frames.
	 */
	public class HTMLFrameSetElement extends HTMLElement {
		
		/**
		 * The number of columns of frames in the frameset.
		 * 
		 * <p>It is a comma-separated list of pixels, percentages, and 
		 * relative lengths. The default value is 100%, meaning one column.</p>
		 */
		public function get cols():DOMString { return null; };
		public function set cols(value:DOMString):void { };
		
		/**
		 * The onload event occurs when the user agent finishes loading a window or all frames within a FRAMESET.
		 */
		public function get onload():Function { return null; };
		public function set onload(value:Function):void { };
		
		/**
		 * The onunload event occurs when the user agent removes a document from a window or frame.
		 */
		public function get onunload():Function { return null; };
		public function set onunload(value:Function):void { };
		
		/**
		 * The number of rows of frames in the frameset.
		 * 
		 * <p>It is a comma-separated list of pixels, percentages, and 
		 * relative lengths. The default value is 100%, meaning one column.</p>
		 */
		public function get rows():DOMString { return null; };
		public function set rows(value:DOMString):void { };
	}
}