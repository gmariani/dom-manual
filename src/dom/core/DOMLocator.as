package dom.core {
	
	import dom.core.types.DOMString;
	
	/**
	 * Indicates a location such as where an error occurred. Returned by DOMError.location.
	 * 
	 * <p><strong>Note (Mozilla):</strong> This is not implemented in Mozilla</p>
	 * 
	 * @see http://developer.mozilla.org/En/DOM/DOMLocator MDC - DOMLocator
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Interfaces-DOMLocator W3C - DOMLocator
	 * @see dom.core.DOMError#location
	 * 
	 * @playerversion DOMCore 3
	 * @since DOMCore 3
	 */
	public interface DOMLocator {
		
		/**
		 * The byte offset into the input source this locator is pointing to or -1 
		 * if there is no byte offset available.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMLocator.byteOffset MDC - DOMLocator.byteOffset
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMLocator-byteOffset W3C - DOMLocator.byteOffset
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function get byteOffset():Number;
		
		/**
		 * The column number this locator is pointing to, or -1 if there is no 
		 * column number available.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMLocator.columnNumber MDC - DOMLocator.columnNumber
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMLocator-column-number W3C - DOMLocator.columnNumber
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function get columnNumber():Number;
		
		/**
		 * The line number this locator is pointing to, or -1 if there is no 
		 * column number available.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMLocator.lineNumber MDC - DOMLocator.lineNumber
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMLocator-line-number W3C - DOMLocator.lineNumber
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function get lineNumber():Number;
		
		/**
		 * The node this locator is pointing to, or null if no node is available.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMLocator.relatedNode MDC - DOMLocator.relatedNode
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMLocator-node W3C - DOMLocator.relatedNode
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function get relatedNode():Node;
		
		/**
		 * The URI this locator is pointing to, or null if no URI is available.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMLocator.uri MDC - DOMLocator.uri
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMLocator-uri W3C - DOMLocator.uri
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function get uri():DOMString;
		
		/**
		 * The UTF-16, as defined in [Unicode] and Amendment 1 of [ISO/IEC 10646], 
		 * offset into the input source this locator is pointing to or -1 if there 
		 * is no UTF-16 offset available.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMLocator.utf16Offset MDC - DOMLocator.utf16Offset
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMLocator-utf16Offset W3C - DOMLocator.utf16Offset
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function get utf16Offset():Number;
	}
}