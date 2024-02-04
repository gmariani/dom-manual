package dom.xpath {
	
	import dom.core.types.DOMString;
	
	/**
	 * The XPathNSResolver interface permit prefix strings in the expression to be properly bound to 
	 * namespaceURI strings. XPathEvaluator can construct an implementation of XPathNSResolver from a 
	 * node, or the interface may be implemented by any application. 
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathNSResolver W3C - XPathNSResolver
	 * 
	 * @playerversion DOMXPath 3
	 * @since DOMXPath 3
	 */
	public interface XPathNSResolver {
		
		/**
		 * Look up the namespace URI associated to the given namespace prefix. The XPath evaluator must 
		 * never call this with a null or empty argument, because the result of doing this is undefined.
		 * 
		 * @param	prefix The prefix to look for.
		 * @return Returns the associated namespace URI or null if none is found.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathNSResolver-lookupNamespaceURI W3C - XPathNSResolver.lookupNamespaceURI()
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		function lookupNamespaceURI(prefix:DOMString):DOMString;
	}
}