package dom.core {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * Objects implementing the NamedNodeMap interface are used to represent 
	 * collections of nodes that can be accessed by name. Note that NamedNodeMap 
	 * does not inherit from NodeList; NamedNodeMaps are not maintained in 
	 * any particular order. Objects contained in an object implementing 
	 * NamedNodeMap may also be accessed by an ordinal index, but this is simply 
	 * to allow convenient enumeration of the contents of a NamedNodeMap, and 
	 * does not imply that the DOM specifies an order to these Nodes. 
	 * 
	 * <p><strong>Note:</strong> NamedNodeMap objects in the DOM are live.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms763824%28VS.85%29.aspx MSDN - IXMLDOMNamedNodeMap
	 * @see http://developer.mozilla.org/En/DOM/NamedNodeMap MDC - NamedNodeMap
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1780488922 W3C - NamedNodeMap
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 * @modified DOMCore 2
	 */
	public interface NamedNodeMap {
		
		/**
		 * The number of nodes in this map. The range of valid child node 
		 * indices is 0 to length-1 inclusive.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms753799%28VS.85%29.aspx MSDN - length Property (IXMLDOMNamedNodeMap)
		 * @see http://developer.mozilla.org/En/DOM/NamedNodeMap.length MDC - NamedNodeMap.length
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-6D0FB19E W3C - NamedNodeMap.length
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		function get length():Number;
		
		/**
		 * Gets a node by name.
		 * 
		 * @param	name The nodeName of a node to retrieve.
		 * @return A Node (of any type) with the specified nodeName, or null 
		 * if it does not identify any node in this map.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms767592%28VS.85%29.aspx MSDN - getNamedItem Method
		 * @see http://developer.mozilla.org/En/DOM/NamedNodeMap MDC - NamedNodeMap
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1074577549 W3C - NamedNodeMap.getNamedItem()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		function getNamedItem(name:DOMString):Node;
		
		/**
		 * Gets a node by namespace and localName.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if the 
		 * implementation does not support the feature "XML" and the language 
		 * exposed through the Document does not support XML Namespaces. 
		 * 
		 * @param	nameSpaceURI The namespace URI of the node to retrieve.
		 * @param	localName The local name of the node to retrieve.
		 * @return A Node (of any type) with the specified local name and namespace 
		 * URI, or null if they do not identify any node in this map.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NamedNodeMap MDC - NamedNodeMap
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-getNamedItemNS W3C - NamedNodeMap.getNamedItemNS()
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		function getNamedItemNS(nameSpaceURI:DOMString, localName:DOMString):Node;
		
		/**
		 * Returns the attribute with the specified namespace and attribute name.
		 * 
		 * @param	baseName The string specifying the base name of the attribute, without namespace qualification.
		 * @param	nameSpaceURI The string specifying the namespace prefix that qualifies the attribute name.
		 * @return An object. Returns the attribute node specified by the baseName and namespaceURI parameters. 
		 * Returns Null if the attribute is not in the collection or if the item is not an attribute.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms757075%28VS.85%29.aspx MSDN - getQualifiedItem Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		function getQualifiedItem(baseName:DOMString, nameSpaceURI:DOMString):Node;
		
		/**
		 * Returns the item at the given index (or null if the index is higher or equal to the number of nodes).
		 * 
		 * @param	index Index into this map.
		 * @return The node at the index position in the map, or null if that 
		 * is not a valid index.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms759220%28VS.85%29.aspx MSDN - item Method (IXMLDOMNamedNodeMap)
		 * @see http://developer.mozilla.org/En/DOM/NamedNodeMap MDC - NamedNodeMap
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-349467F9 W3C - NamedNodeMap.item()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		function item(index:Number):Node;
		
		/**
		 * Returns the next node in the collection.
		 * 
		 * <p><strong>Note:</strong> The iterator initially points before the first node in the list so that the first call 
		 * to the nextNode method returns the first node in the list.</p>
		 * 
		 * <p><strong>Note:</strong> This method returns Null when the current node is the last node or there are no items 
		 * in the list. When the current node is removed from the list, subsequent calls to nextNode return Null. The 
		 * iterator must be reset by calling the reset method.</p>
		 * 
		 * @return An IXMLDOMNode, which refers to the next node in the collection. Returns Null if there is no next node.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms757847%28VS.85%29.aspx MSDN - nextNode Method (IXMLDOMNamedNodeMap)
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		function nextNode():Node;
		
		/**
		 * Removes a node (or if an attribute, may reveal a default if present).
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised if there is no node 
		 * named name  in this map.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this map is readonly.
		 * 
		 * @param	name The nodeName of the node to remove.
		 * @return The node removed from this map if a node with such a name exists.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms762291%28VS.85%29.aspx MSDN - removeNamedItem Method
		 * @see http://developer.mozilla.org/En/DOM/NamedNodeMap MDC - NamedNodeMap
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-D58B193 W3C - NamedNodeMap.removeNamedItem()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		function removeNamedItem(name:DOMString):Node;
		
		/**
		 * Removes a node (or if an attribute, may reveal a default if present).
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised if there is no 
		 * node with the specified namespaceURI and localName in this map.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised 
		 * if this map is readonly.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if 
		 * the implementation does not support the feature "XML" and the 
		 * language exposed through the Document does not support XML Namespaces. 
		 * 
		 * @param	nameSpaceURI The namespace URI of the node to remove.
		 * @param	localName The local name of the node to remove.
		 * @return The node removed from this map if a node with such a local 
		 * name and namespace URI exists.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NamedNodeMap MDC - NamedNodeMap
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-removeNamedItemNS W3C - NamedNodeMap.removeNamedItemNS()
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		function removeNamedItemNS(nameSpaceURI:DOMString, localName:DOMString):Node;
		
		/**
		 * Resets the iterator.
		 * 
		 * <p><strong>Note:</strong> Implemented in: MSXML 3.0 and later.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms762655%28VS.85%29.aspx MSDN - reset Method (IXMLDOMNamedNodeMap)
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		function reset():void;
		
		/**
		 * Adds (or replaces) a node by its nodeName.
		 * 
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if arg was 
		 * created from a different document than the one that created this map.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if
		 * this map is readonly.
		 * 
		 * @throws dom.core.DOMException INUSE_ATTRIBUTE_ERR: Raised if arg is 
		 * an Attr that is already an attribute of another Element object. The 
		 * DOM user must explicitly clone Attr nodes to re-use them in 
		 * other elements.
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if an 
		 * attempt is made to add a node doesn't belong in this NamedNodeMap. 
		 * Examples would include trying to insert something other than an Attr 
		 * node into an Element's map of attributes, or a non-Entity node into 
		 * the DocumentType's map of Entities.
		 * 
		 * @param	arg A node to store in this map. The node will later be 
		 * accessible using the value of its nodeName attribute.
		 * @return If the new Node replaces an existing node the replaced 
		 * Node is returned, otherwise null is returned.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms764702%28VS.85%29.aspx MSDN - setNamedItem Method
		 * @see http://developer.mozilla.org/En/DOM/NamedNodeMap MDC - NamedNodeMap
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1025163788 W3C - NamedNodeMap.setNamedItem()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		function setNamedItem(arg:Node):Node;
		
		/**
		 * Adds (or replaces) a node by its localName and namespaceURI.
		 * 
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if arg was 
		 * created from a different document than the one that created this map.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this map is readonly.
		 * 
		 * @throws dom.core.DOMException INUSE_ATTRIBUTE_ERR: Raised if arg is an 
		 * Attr that is already an attribute of another Element object. The DOM 
		 * user must explicitly clone Attr nodes to re-use them in other elements.
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if an 
		 * attempt is made to add a node doesn't belong in this NamedNodeMap. 
		 * Examples would include trying to insert something other than an Attr 
		 * node into an Element's map of attributes, or a non-Entity node into 
		 * the DocumentType's map of Entities.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if the 
		 * implementation does not support the feature "XML" and the language 
		 * exposed through the Document does not support XML Namespaces. 
		 * 
		 * @param	arg A node to store in this map. The node will later be 
		 * accessible using the value of its namespaceURI and localName attributes.
		 * @return If the new Node replaces an existing node the replaced Node 
		 * is returned, otherwise null is returned.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NamedNodeMap MDC - NamedNodeMap
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-setNamedItemNS W3C - NamedNodeMap.setNamedItemNS()
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		function setNamedItemNS(arg:Node):Node;
	}
}