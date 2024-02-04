package dom.xpath {
	
	/**
	 * An integer indicating the type of error generated.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathExceptionCode W3C - XPathExceptionCode
	 * 
	 * @playerversion DOMXPath 3
	 * @since DOMXPath 3
	 */
	public class XPathExceptionCode {
		
		/**
		 * If the expression has a syntax error or otherwise is not a legal expression according to the rules 
		 * of the specific XPathEvaluator or contains specialized extension functions or variables not 
		 * supported by this implementation.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#INVALID_EXPRESSION_ERR W3C - XPathExceptionCode.INVALID_EXPRESSION_ERR
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const INVALID_EXPRESSION_ERR:Number = 51;
		
		/**
		 * If the expression cannot be converted to return the specified type.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#TYPE_ERR W3C - XPathExceptionCode.TYPE_ERR
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const TYPE_ERR:Number = 52;
	}
}