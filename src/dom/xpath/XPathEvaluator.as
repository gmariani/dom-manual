package dom.xpath {
	
	import dom.core.Node;
	import dom.core.types.DOMObject;
	import dom.core.types.DOMString;
	
	/**
	 * The evaluation of XPath expressions is provided by XPathEvaluator. In a DOM implementation 
	 * which supports the XPath 3.0 feature, as described above, the XPathEvaluator interface will 
	 * be implemented on the same object which implements the Document interface permitting it to 
	 * be obtained by the usual binding-specific method such as casting or by using the DOM Level 3 
	 * getInterface method. In this case the implementation obtained from the Document supports the 
	 * XPath DOM module and is compatible with the XPath 1.0 specification.
	 * 
	 * <p>Evaluation of expressions with specialized extension functions or variables may not work 
	 * in all implementations and is, therefore, not portable. XPathEvaluator implementations may be 
	 * available from other sources that could provide specific support for specialized extension 
	 * functions or variables as would be defined by other specifications. </p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathEvaluator W3C - XPathEvaluator
	 * 
	 * @playerversion DOMXPath 3
	 * @since DOMXPath 3
	 */
	public interface XPathEvaluator {
		
		/**
		 * Creates a parsed XPath expression with resolved namespaces. This is useful when an 
		 * expression will be reused in an application since it makes it possible to compile the 
		 * expression string into a more efficient internal form and preresolve all namespace 
		 * prefixes which occur within the expression.
		 * 
		 * <p><strong>Note (Mozilla):</strong> Prior to Firefox 3, you could call this method on documents other 
		 * than the one you planned to run the XPath against. Under Firefox 3, you must call it on the 
		 * same document.</p>
		 * 
		 * @throws dom.xpath.XPathException INVALID_EXPRESSION_ERR: Raised if the expression is 
		 * not legal according to the rules of the XPathEvaluator.
		 * 
		 * @throws dom.events.EventException NAMESPACE_ERR: Raised if the expression contains 
		 * namespace prefixes  which cannot be resolved by the specified XPathNSResolver.
		 * 
		 * @param	expression The XPath expression string to be parsed.
		 * @param	resolver The resolver permits translation of all prefixes, including the xml 
		 * namespace prefix, within the XPath expression into appropriate namespace URIs. If this 
		 * is specified as null, any namespace prefix within the expression will result in 
		 * DOMException being thrown with the code NAMESPACE_ERR.
		 * @return The compiled form of the XPath expression.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.createExpression MDC - Document.createExpression()
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathEvaluator-createExpression W3C - XPathEvaluator.createExpression()
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		function createExpression(expression:DOMString, resolver:XPathNSResolver):XPathExpression;
		
		/**
		 * Adapts any DOM node to resolve namespaces so that an XPath expression can be easily evaluated 
		 * relative to the context of the node where it appeared within the document. This adapter works 
		 * like the DOM Level 3 method lookupNamespaceURI  on nodes in resolving the namespaceURI from a 
		 * given prefix using the current information available in the node's hierarchy at the time 
		 * lookupNamespaceURI is called. also correctly resolving the implicit xml prefix.
		 * 
		 * <p><strong>Note:</strong> XPath defines QNames without prefix to match only elements in the 
		 * null namespace. There is no way in XPath to pick up the default namespace as applied to a regular 
		 * element reference (e.g., <code>p[&amp;64;id='_myid']</code> for <code>xmlns='http://www.w3.org/1999/xhtml'</code>). 
		 * To match default elements in a non-null namespace, you either have to refer to a particular element using 
		 * a form such as <code>~~</code></p>
		 * 
		 * @param	node The node to be used as a context for namespace resolution.
		 * @return 	XPathNSResolver which resolves namespaces with respect to the definitions in scope for a specified node.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.createNSResolver MDC - Document.createNSResolver()
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathEvaluator-createNSResolver W3C - XPathEvaluator.createNSResolver()
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		function createNSResolver(nodeResolver:Node):XPathNSResolver;
		
		/**
		 * Evaluates an XPath expression string and returns a result of the specified type if possible.
		 * 
		 * @throws dom.xpath.XPathException INVALID_EXPRESSION_ERR: Raised if the expression is not legal according to the rules of the XPathEvaluator.
		 * 
		 * @throws dom.xpath.XPathException TYPE_ERR: Raised if the result cannot be converted to return the specified type.
		 * 
		 * @throws dom.events.EventException NAMESPACE_ERR: Raised if the expression contains namespace prefixes  which cannot be resolved by the specified XPathNSResolver.
		 * 
		 * @throws dom.events.EventException WRONG_DOCUMENT_ERR: The Node is from a document that is not supported by the XPathEvaluator that created this XPathExpression.
		 * 
		 * @throws dom.events.EventException NOT_SUPPORTED_ERR: The Node is not a type permitted as an XPath context node or the request type is not permitted by this XPathExpression.
		 * 
		 * @param	expression The XPath expression string to be parsed and evaluated.
		 * @param	contextNode The context is context node for the evaluation of this XPath expression. 
		 * If the XPathEvaluator was obtained by casting the Document then this must be owned by the same 
		 * document and must be a Document, Element, Attribute, Text, CDATASection, Comment, 
		 * ProcessingInstruction, or XPathNamespace  node. If the context node is a Text or a CDATASection, 
		 * then the context is interpreted as the whole logical text node as seen by XPath, unless the node 
		 * is empty in which case it may not serve as the XPath context.
		 * @param	resolver The resolver permits translation of all prefixes, including the xml namespace 
		 * prefix, within the XPath expression into appropriate namespace URIs. If this is specified as null, 
		 * any namespace prefix within the expression will result in DOMException being thrown with the 
		 * code NAMESPACE_ERR.
		 * @param	type If a specific type is specified, then the result will be returned as the 
		 * corresponding type. For XPath 1.0 results, this must be one of the codes of the XPathResult interface.
		 * @param	result The result specifies a specific result object which may be reused and returned by 
		 * this method. If this is specified as nullor the implementation does not reuse the specified result, 
		 * a new result object will be constructed and returned. For XPath 1.0 results, this object will be 
		 * of type XPathResult.
		 * @return The result of the evaluation of the XPath expression. For XPath 1.0 results, this object 
		 * will be of type XPathResult.
		 * 
		 * @example
		 * <listing>
		 * var headings = document.evaluate("//h2", document, null, XPathResult.ANY_TYPE, null); 
		 * /~~ Search the document for all h2 elements.  
		 *  ~~ The result will likely be an unordered node iterator. ~~/
		 * var thisHeading = headings.iterateNext(); 
		 * var alertText = "Level 2 headings in this document are:\n";
		 * while (thisHeading) {
		 * 	alertText += thisHeading.textContent + "\n";
		 * 	thisHeading = headings.iterateNext();
		 * }
		 * alert(alertText); // Alerts the text of all h2 elements</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.evaluate MDC - Document.evaluate()
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathEvaluator-evaluate W3C - XPathEvaluator.evaluate()
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		function evaluate(expression:DOMString, contextNode:Node, resolver:XPathNSResolver, type:Number, result:DOMObject):DOMObject;
	}
}