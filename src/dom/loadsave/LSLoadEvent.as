package dom.loadsave {
	
	import dom.core.Document;
	import dom.events.Event;
	
	/**
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSLoadEvent
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public class LSLoadEvent extends Event {
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSLoadEvent-document
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function get newDocument():Document { return null; };
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSLoadEvent-input
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function get input():LSInput { return null; };
	}
}