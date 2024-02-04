package dom.html.objects {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * An HTMLOptionsCollection is a list of nodes representing HTML option element. 
	 * An individual node may be accessed by either ordinal index or the node's 
	 * name or id attributes.
	 * 
	 * <p><strong>Note:</strong> Collections in the HTML DOM are assumed to be live meaning that they 
	 * are automatically updated when the underlying document is changed.</p>
	 * 
	 * @see http://developer.mozilla.org/En/DOM/HTMLOptionsCollection MDC: HTMLOptionsCollection
	 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#HTMLOptionsCollection W3C DOM HTML Specification: HTMLOptionsCollection
	 * 
	 * @playerversion DOMHTML 2
	 * @since DOMCore 2
	 */
	public class HTMLOptionsCollection {
		
		/**
		 * This attribute specifies the length or size of the list.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: if setting the length 
		 * is not allowed by the implementation.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/HTMLOptionsCollection MDC: HTMLOptionsCollection
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#HTMLOptionsCollection-length W3C DOM HTML Specification: HTMLOptionsCollection.length
		 * 
		 * @playerversion DOMHTML 2
		 * @since DOMCore 2
		 */
		public function get length():Number { return 0; };
		public function set length(value:Number):void { };
		
		/**
		 * This method retrieves a node specified by ordinal index. Nodes are 
		 * numbered in tree order (depth-first traversal order).
		 * 
		 * @param	index The index of the node to be fetched. The index 
		 * origin is 0
		 * @return The Node at the corresponding position upon success. A value 
		 * of null is returned if the index is out of range.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/HTMLOptionsCollection MDC: HTMLOptionsCollection
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#HTMLOptionsCollection-item W3C DOM HTML Specification: HTMLOptionsCollection.item()
		 * 
		 * @playerversion DOMHTML 2
		 * @since DOMCore 2
		 */
		public function item(index:Number):Node { return null; };
		
		/**
		 * This method retrieves a Node using a name. It first searches for a 
		 * Node with a matching id attribute. If it doesn't find one, it then 
		 * searches for a Node with a matching name attribute, but only on those 
		 * elements that are allowed a name attribute. This method is case 
		 * insensitive in HTML documents and case sensitive in XHTML documents.
		 * 
		 * @param	name The name of the Node to be fetched.
		 * @return The Node with a name or id attribute whose value corresponds 
		 * to the specified string. Upon failure (e.g., no node with this name 
		 * exists), returns null.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/HTMLOptionsCollection MDC: HTMLOptionsCollection
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#HTMLOptionsCollection-namedItem W3C DOM HTML Specification: HTMLOptionsCollection.namedItem()
		 * 
		 * @playerversion DOMHTML 2
		 * @since DOMCore 2
		 */
		public function namedItem(name:DOMString):Node { return null; };
	}
}