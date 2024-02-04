package dom.xpath {
	
	/**
	 * A new exception has been created for exceptions specific to these XPath interfaces. 
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathException W3C - XPathException
	 * 
	 * @playerversion DOMXPath 3
	 * @since DOMXPath 3
	 */
	public interface XPathException {
		/**
		 * The specific exception code.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathException W3C - XPathException
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		function get code():Number;
	}
}