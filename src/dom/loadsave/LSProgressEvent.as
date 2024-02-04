package dom.loadsave {
	
	import dom.events.Event;
	
	/**
	 * This interface represents a progress event object that notifies the application about progress as a document is parsed.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSProgressEvent
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public class LSProgressEvent extends Event {
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSProgressEvent-input
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function get input():LSInput { return null; };
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSProgressEvent-position
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function get position():Number { return 0; };
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSProgressEvent-totalSize
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function get totalSize():Number { return 0; };
	}
}