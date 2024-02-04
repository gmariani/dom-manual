package dom.core {
	
	import dom.core.DOMLocator;
	import dom.core.types.DOMObject;
	import dom.core.types.DOMString;
	
	/**
	 * DOMError is an interface that describes an error.
	 * 
	 * <p><strong>Note (Mozilla):</strong> This is not implemented in Mozilla.</p>
	 * 
	 * @see http://developer.mozilla.org/En/DOM/DOMError MDC - DOMError
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ERROR-Interfaces-DOMError W3C - DOMError
	 * 
	 * @playerversion DOMCore 3
	 * @since DOMCore 3
	 */
	public class DOMError {
		
		/**
		 * The severity of the error described by the DOMError is warning.
		 * 
		 * <p>A SEVERITY_WARNING will not cause the processing to stop, unless 
		 * DOMErrorHandler.handleError() returns false.</p>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ERROR-DOMError-severity-warning W3C - DOMError.SEVERITY_WARNING
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const SEVERITY_WARNING:Number = 1;
		
		/**
		 * The severity of the error described by the DOMError is error.
		 * 
		 * <p>A SEVERITY_ERROR  may not cause the processing to stop if the error 
		 * can be recovered, unless DOMErrorHandler.handleError()  returns false.</p>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ERROR-DOMError-severity-error W3C - DOMError.SEVERITY_ERROR
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const SEVERITY_ERROR:Number = 2;
		
		/**
		 * The severity of the error described by the DOMError is fatal error.
		 * 
		 * <p>A SEVERITY_FATAL_ERROR will cause the normal processing to stop. 
		 * The return value of DOMErrorHandler.handleError() is ignored unless 
		 * the implementation chooses to continue, in which case the behavior 
		 * becomes undefined.</p>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ERROR-DOMError-severity-fatal-error W3C - DOMError.SEVERITY_FATAL_ERROR
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const SEVERITY_FATAL_ERROR:Number = 3;
		
		/**
		 * The location of the error.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMError.location MDC - DOMError.location
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ERROR-DOMError-location W3C - DOMError.location
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get location():DOMLocator { return null; };
		
		/**
		 * An implementation specific string describing the error that occurred.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMError.message MDC - DOMError.message
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ERROR-DOMError-message W3C - DOMError.message
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get message():DOMString { return null; };
		
		/**
		 * The related DOMError.type dependent data if any. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMError.relatedData MDC - DOMError.relatedData
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ERROR-DOMError-relatedData W3C - DOMError.relatedData
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get relatedData():DOMObject { return null; };
		
		/**
		 * The related platform dependent exception if any.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMError.relatedException MDC - DOMError.relatedException
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ERROR-DOMError-relatedException W3C - DOMError.relatedException
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get relatedException():DOMObject { return null; };
		
		/**
		 * The severity of the error, either SEVERITY_WARNING, SEVERITY_ERROR, 
		 * or SEVERITY_FATAL_ERROR.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMError.severity MDC - DOMError.severity
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ERROR-DOMError-severity W3C - DOMError.severity
		 * @see #SEVERITY_WARNING
		 * @see #SEVERITY_ERROR
		 * @see #SEVERITY_FATAL_ERROR
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get severity():Number { return 0; };
		
		/**
		 * A DOMString indicating which related data is expected in relatedData. 
		 * Users should refer to the specification of the error in order to find 
		 * its DOMString type and relatedData  definitions if any.
		 * 
		 * <p><strong>Note:</strong> As an example, Document.normalizeDocument() does generate warnings 
		 * when the "split-cdata-sections" parameter is in use. Therefore, the method 
		 * generates a SEVERITY_WARNING with type "cdata-sections-splitted" and the 
		 * first CDATASection node in document order resulting from the split is 
		 * returned by the relatedData attribute.</p>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMError.type MDC - DOMError.type
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ERROR-DOMError-type W3C - DOMError.type
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get type():DOMString { return null; };
	}
}