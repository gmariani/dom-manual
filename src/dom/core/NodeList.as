package dom.core {
	
	import dom.core.Node;
	
	/**
	 * The NodeList interface provides the abstraction of an ordered collection
	 * of nodes, without defining or constraining how this collection is 
	 * implemented. NodeList objects in the DOM are live.
	 * 
	 * <p>The items in the NodeList are accessible via an integral index, 
	 * starting from 0. </p>
	 * 
	 * <p><strong>Note:</strong> NodeList objects in the DOM are live.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms757073%28VS.85%29.aspx MSDN - IXMLDOMNodeList
	 * @see http://developer.mozilla.org/En/DOM/NodeList MDC - NodeList
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-536297177 W3C - NodeList
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 */
	public interface NodeList {
		
		/**
		 * The number of nodes in the list. The range of valid child node 
		 * indices is 0 to length-1 inclusive.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms757044%28VS.85%29.aspx MSDN - length Property (IXMLDOMNodeList)
		 * @see http://developer.mozilla.org/En/DOM/NodeList.length MDC - NodeList.length
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-203510337 W3C - NodeList.length
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		function get length():Number;
		
		/**
		 * Returns the index item in the collection. If index is greater than
		 * or equal to the number of nodes in the list, this returns null.
		 * 
		 * @param	index Index into the collection.
		 * @return The node at the indexth position in the NodeList, or null 
		 * if that is not a valid index.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms757028%28VS.85%29.aspx MSDN - item Method (IXMLDOMNodeList)
		 * @see http://developer.mozilla.org/En/DOM/NodeList.item MDC - NodeList.item()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-844377136 W3C - NodeList.item()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		function item(index:Number):Node;
		
		/**
		 * Returns the next node in the collection.
		 * 
		 * @return An IXMLDOMNode refers to the next node in the collection. Returns Null if there is no next node.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms757831%28VS.85%29.aspx MSDN - nextNode Method (IXMLDOMNodeList)
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		function nextNode():Node;
		
		/**
		 * Resets the iterator.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms766592%28VS.85%29.aspx MSDN - reset Method (IXMLDOMNodeList)
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		function reset():void;
	}
}