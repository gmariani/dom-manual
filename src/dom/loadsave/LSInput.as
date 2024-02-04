package dom.loadsave {
	
	import dom.core.types.DOMString;
	import dom.loadsave.types.LSInputStream;
	import dom.loadsave.types.LSReader;
	
	/**
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSInput
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public interface LSInput {
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSInput-characterStream
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get characterStream():LSReader;
		function set characterStream(value:LSReader):void;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSInput-byteStream
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get byteStream():LSInputStream;
		function set byteStream(value:LSInputStream):void;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSInput-stringData
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get stringData():DOMString;
		function set stringData(value:DOMString):void;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSInput-systemId
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get systemId():DOMString;
		function set systemId(value:DOMString):void;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSInput-publicId
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get publicId():DOMString;
		function set publicId(value:DOMString):void;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSInput-baseURI
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get baseURI():DOMString;
		function set baseURI(value:DOMString):void;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSInput-encoding
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get encoding():DOMString;
		function set encoding(value:DOMString):void;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSInput-certifiedText
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get certifiedText():Boolean;
		function set certifiedText(value:Boolean):void;
	}
}