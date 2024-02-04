package dom.loadsave {
	
	import dom.core.types.DOMString;
	import dom.loadsave.types.LSInputStream;
	import dom.loadsave.types.LSReader;
	
	/**
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSOutput
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public interface LSOutput {
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSOutput-characterStream
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get characterStream():LSReader;
		function set characterStream(value:LSReader):void;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSOutput-byteStream
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get byteStream():LSInputStream;
		function set byteStream(value:LSInputStream):void;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSOutput-systemId
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get systemId():DOMString;
		function set systemId(value:DOMString):void;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSOutput-encoding
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get encoding():DOMString;
		function set encoding(value:DOMString):void;
	}
}