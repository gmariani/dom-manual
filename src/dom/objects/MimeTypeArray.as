package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * Contains a list of MimeType objects representing the MIME types recognized by the browser. 
	 * 
	 * @see http://developer.mozilla.org/en/Navigator.mimeTypes MDC - window.navigator.mimeTypes
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 */
	public class MimeTypeArray {
		
		/**
		 * The number of MimeTypes in the array.
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.mimeTypes MDC - window.navigator.mimeTypes
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get length():Number { return 0; };
		
		/**
		 * Retrieves a MimeType by index.
		 * 
		 * @param	index Index of the MimeType
		 * @return The specified MimeType
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.mimeTypes MDC - window.navigator.mimeTypes
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function item(index:Number):MimeType { return null; };
		
		/**
		 * Retrives a MimeType by name.
		 * 
		 * @param	name Name of the MimeType
		 * @return The specified MimeType
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.mimeTypes MDC - window.navigator.mimeTypes
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function nameItem(name:DOMString):MimeType { return null; };
	}
}