package dom.core {
	
	import dom.core.DOMError;
	
	/**
	 * DOMErrorHandler is a callback interface that the DOM implementation can
	 * call when reporting errors that happens while processing XML data, or 
	 * when doing some other processing (e.g. validating a document). A 
	 * DOMErrorHandler  object can be attached to a Document using the 
	 * "error-handler" on the DOMConfiguration interface. If more than one error 
	 * needs to be reported during an operation, the sequence and numbers of 
	 * the errors passed to the error handler are implementation dependent. 
	 * 
	 * <p><strong>Note:</strong> This is not implemented in Mozilla.</p>
	 * 
	 * @see http://developer.mozilla.org/En/DOM/DOMErrorHandler MDC - DOMErrorHandler
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ERROR-Interfaces-DOMErrorHandler W3C - DOMErrorHandler
	 * 
	 * @playerversion DOMCore 3
	 * @since DOMCore 3
	 */
	public interface DOMErrorHandler {
		
		/**
		 * This method is called on the error handler when an error occurs.
		 * If an exception is thrown from this method, it is considered to be 
		 * equivalent of returning true. 
		 * 
		 * @param	error The error object that describes the error. This object may be reused 
		 * by the DOM implementation across multiple calls to the handleError method. 
		 * @return If the handleError method returns false, the DOM implementation should stop
		 * the current processing when possible. If the method returns true, the 
		 * processing may continue depending on DOMError.severity. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMErrorHandler.handleError MDC - DOMErrorHandler.handleError()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-ERRORS-DOMErrorHandler-handleError W3C - DOMErrorHandler.handleError()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function handleError(error:DOMError):Boolean;
	}
}