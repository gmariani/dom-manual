package dom.xpath {
	
	import dom.core.Node;
	import dom.core.types.DOMObject;
	import dom.core.types.DOMString;
	
	/**
	 * The XPathExpression interface represents a parsed and resolved XPath expression. 
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathExpression W3C - XPathExpression
	 * 
	 * @playerversion DOMXPath 3
	 * @since DOMXPath 3
	 */
	public interface XPathExpression {
		
		/**
		 * Evaluates this XPath expression and returns a result.
		 * 
		 * @throws dom.xpath.XPathException TYPE_ERR: Raised if the result cannot be converted to return the specified type.
		 * 
		 * @throws dom.events.EventException WRONG_DOCUMENT_ERR: The Node is from a document that is not supported by the XPathEvaluator that created this XPathExpression.
		 * 
		 * @throws dom.events.EventException NOT_SUPPORTED_ERR: The Node is not a type permitted as an XPath context node or the request type is not permitted by this XPathExpression.
		 * 
		 * @param	contextNode The context is context node for the evaluation of this XPath expression. 
		 * If the XPathEvaluator was obtained by casting the Document then this must be owned by the same 
		 * document and must be a Document, Element, Attribute, Text, CDATASection, Comment, ProcessingInstruction, 
		 * or XPathNamespace node. If the context node is a Text or a CDATASection, then the context is 
		 * interpreted as the whole logical text node as seen by XPath, unless the node is empty in which 
		 * case it may not serve as the XPath context.
		 * @param	type If a specific type is specified, then the result will be coerced to return the specified 
		 * type relying on XPath conversions and fail if the desired coercion is not possible. This must be one of 
		 * the type codes of XPathResult.
		 * @param	result The result specifies a specific result object which may be reused and returned by this 
		 * method. If this is specified as nullor the implementation does not reuse the specified result, a new 
		 * result object will be constructed and returned. For XPath 1.0 results, this object will be of type XPathResult.
		 * @return The result of the evaluation of the XPath expression. For XPath 1.0 results, this object will 
		 * be of type XPathResult.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathExpression-evaluate W3C - XPathExpression.evaluate()
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		function evaluate(expression:DOMString, contextNode:Node, resolver:XPathNSResolver, type:Number, result:DOMObject):DOMObject;
	}
}