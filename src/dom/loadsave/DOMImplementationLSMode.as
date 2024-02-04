package dom.loadsave {
	
	/**
	 * Integer parser mode constants.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementation W3C - DOMImplementationLS
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public class DOMImplementationLSMode {
		
		/**
		 * Create a synchronous LSParser.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementationLS-MODE_SYNC W3C - DOMImplementationLSMode.MODE_SYNCHRONOUS
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const MODE_SYNCHRONOUS:Number = 1;
		
		/**
		 * Create an asynchronous LSParser.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementationLS-MODE_ASYNCH W3C - DOMImplementationLSMode.MODE_ASYNCHRONOUS
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const MODE_ASYNCHRONOUS:Number = 2;
	}
}