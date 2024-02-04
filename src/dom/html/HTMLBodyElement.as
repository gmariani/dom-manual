package dom.html {
	
	/**
	 * Is fired when the browser switches between online and offline mode.
	 *
	 * @eventType online
	 */
	[Event(name = "online", type = "dom.events.Event")]
	
	/**
	 * Is fired when the browser switches between online and offline mode.
	 *
	 * @eventType offline
	 */
	[Event(name = "offline", type = "dom.events.Event")]
	
	import dom.core.types.DOMString;
	
	/**
	 * The HTML document body. This element is always present in the DOM 
	 * API, even if the tags are not present in the source document.
	 */
	public class HTMLBodyElement extends HTMLElement {
		
		/**
		 * Color of active links (after mouse-button down, but before 
		 * mouse-button up). This attribute is deprecated in HTML 4.01.
		 */
		public function get aLink():DOMString { return null; };
		public function set aLink(value:DOMString):void { };
		
		/**
		 * URI of the background texture tile image. This attribute is deprecated in HTML 4.01.
		 */
		public function get background():DOMString { return null; };
		public function set background(value:DOMString):void { };
		
		/**
		 * Document background color. This attribute is deprecated in HTML 4.01.
		 */
		public function get bgColor():DOMString { return null; };
		public function set bgColor(value:DOMString):void { };
		
		/**
		 * Color of links that are not active and unvisited. This attribute is deprecated in HTML 4.01.
		 */
		public function get link():DOMString { return null; };
		public function set link(value:DOMString):void { };
		
		/**
		 * The onload event occurs when the user agent finishes loading a window or all frames within a FRAMESET.
		 */
		public function get onload():Function { return null; };
		public function set onload(value:Function):void { };
		
		/**
		 * <strong>WHATWG Web Applications 1.0 specification | Firefox 3+</strong> 
		 * 
		 * Returns the event handling code for the online event.
		 * 
		 * <p>Note: The events bubble up from document.body, to document, ending at window. Both events are 
		 * non-cancellable (you can't prevent the user from coming online, or going offline).</p>
		 */
		public function get ononline():Function { return null; };
		public function set ononline(value:Function):void { };
		
		/**
		 * <strong>WHATWG Web Applications 1.0 specification | Firefox 3+</strong> 
		 * 
		 * Returns the event handling code for the offline event.
		 * 
		 * <p>Note: The events bubble up from document.body, to document, ending at window. Both events are 
		 * non-cancellable (you can't prevent the user from coming online, or going offline).</p>
		 */
		public function get onoffline():Function { return null; };
		public function set onoffline(value:Function):void { };
		
		/**
		 * The onunload event occurs when the user agent removes a document from a window or frame.
		 */
		public function get onunload():Function { return null; };
		public function set onunload(value:Function):void { };
		
		/**
		 * Document text color. This attribute is deprecated in HTML 4.01.
		 */
		override public function get text():DOMString { return null; };
		override public function set text(value:DOMString):void { };
		
		/**
		 * Color of links that have been visited by the user. This attribute is deprecated in HTML 4.01.
		 */
		public function get vLink():DOMString { return null; };
		public function set vLink(value:DOMString):void { };
	}
}