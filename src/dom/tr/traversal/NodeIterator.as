package dom.tr.traversal {
	
	import dom.core.Node;
	
	/**
	 * Allows you to iterate over the members of a list of the nodes in a subtree of the DOM, in document order.
	 * 
	 * A <code>NodeIterator</code> can be created using the createNodeIterator()<code></code> method of the <code>Document</code> object, as follows:
	 * 
	 * <listing>var nodeIterator = document.createNodeIterator();</listing>
	 * 
	 * @see http://developer.mozilla.org/En/DOM/NodeIterator MDC - NodeIterator
	 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: NodeIterator
	 * 
	 * @playerversion DOMTR 2
	 * @since DOMCore 2
	 */
	public interface NodeIterator {
		
		/**
		 * Returns a flag indicating whether or not the children of entity reference nodes are visible to the NodeIterator.
		 * 
		 * <p>If this value is false, the children of entity reference nodes (as well as all of their descendants) are rejected.  
		 * This takes precedence over the whatToShow value and the filter.</p>
		 * 
		 * @example
		 * <listing>
		 * var nodeIterator = document.createNodeIterator(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * expand = nodeIterator.expandEntityReferences;</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NodeIterator.expandEntityReferences MDC - NodeIterator: expandEntityReferences Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-NodeIterator W3C - DOM Level 2 Traversal: expandEntityReferences Property
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function get expandEntityReferences():Boolean;
		
		/**
		 * Returns an object with a method acceptNode(node). This is the NodeFilter used to screen nodes.
		 * 
		 * <p>Note: When creating the NodeIterator, the filter object is passed in as the third parameter, and the 
		 * object method acceptNode(node) is called on every single node to determine whether or not to accept it. 
		 * This function should return the constant NodeFilter.FILTER_ACCEPT for cases when the node should be 
		 * accepted and NodeFilter.FILTER_REJECT for cases when the node should be rejected.</p>
		 * 
		 * @example
		 * <listing>
		 * var nodeIterator = document.createNodeIterator(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * nodeFilter = nodeIterator.filter</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NodeIterator.filter MDC - NodeIterator: filter Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-NodeIterator W3C - DOM Level 2 Traversal: filter Property
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function get filter():NodeFilter;
		
		/**
		 * A Boolean value that indicates whether the NodeIterator is anchored before (if this value is true) or after (if this value is false) the anchor node indicated by the referenceNode property.
		 * 
		 * <p>Note: This property was introduced by WebKit and is used for testing; it can also be used by debuggers.  It is not part of the DOM specification.</p>
		 * 
		 * @return Value that indicates whether the NodeIterator is anchored before (if this value is true) or after (if this value is false) the anchor node indicated by the referenceNode property
		 * 
		 * @example
		 * <listing>
		 * var nodeIterator = document.createNodeIterator(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * flag = nodeIterator.pointerBeforeReferenceNode;</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NodeIterator.pointerBeforeReferenceNode MDC - NodeIterator: pointerBeforeReferenceNode Property
		 * 
		 * @playerversion Non-Standard Mozilla
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function get pointerBeforeReferenceNode():Boolean;
		
		/**
		 * Returns the node to which the iterator is anchored; as new nodes are inserted, the iterator remains anchored to the reference node as specified by this property.
		 * 
		 * <p>Note: This property was introduced by WebKit and is used for testing; it can also be used by debuggers.  It is not part of the DOM specification.</p>
		 * 
		 * @return The node to which the iterator is anchored.
		 * 
		 * @example
		 * <listing>
		 * var nodeIterator = document.createNodeIterator(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * node = nodeIterator.referenceNode;</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NodeIterator.referenceNode MDC - NodeIterator: referenceNode Property
		 * 
		 * @playerversion Non-Standard Mozilla
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function get referenceNode():Node;
		
		/**
		 * Returns the node that is the root of what the NodeIterator traverses.
		 * 
		 * @example
		 * <listing>
		 * var nodeIterator = document.createNodeIterator(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * root = nodeIterator.root; // document.body in this case</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NodeIterator.root MDC - NodeIterator: root Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-NodeIterator W3C - DOM Level 2 Traversal: root Property
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function get root():Node;
		
		/**
		 * Returns a number signifying what types of nodes should be returned by the NodeIterator.
		 * 
		 * <p>The available set of constants is defined in the NodeFilter interface. Nodes not accepted 
		 * by whatToShow will be skipped, but their children may still be considered. Note that this 
		 * skip takes precedence over the filter, if any.</p>
		 * 
		 * @example
		 * <listing>
		 * var nodeIterator = document.createNodeIterator(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT + NodeFilter.SHOW_COMMENT + NodeFilter.SHOW_TEXT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * if((nodeIterator.whatToShow == NodeFilter.SHOW_ALL) || 
		 * 	(nodeIterator.whatToShow % (NodeFilter.SHOW_COMMENT*2)) >= NodeFilter.SHOW_COMMENT) {
		 * 	// nodeIterator will show comments
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NodeIterator.whatToShow MDC - NodeIterator: whatToShow Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-NodeIterator W3C - DOM Level 2 Traversal: whatToShow Property
		 * @see dom.tr.traversal.NodeFilter NodeFilter
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function get whatToShow():Number;
		
		/**
		 * Detaches the NodeIterator from the set over which it iterates, releasing any resources used by the set 
		 * and setting the iterator's state to INVALID.
		 * 
		 * <p>Once this method has been called, calls to other methods on NodeIterator will raise the 
		 * INVALID_STATE_ERR exception.</p>
		 * 
		 * @example
		 * <listing>
		 * var nodeIterator = document.createNodeIterator(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * nodeIterator.detach(); // detaches the iterator
		 * 
		 * nodeIterator.nextNode(); // throws an INVALID_STATE_ERR exception</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NodeIterator.detach MDC - NodeIterator: detach Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-NodeIterator W3C - DOM Level 2 Traversal: detach Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function detach():void;
		
		/**
		 * Returns the next node in the set represented by the NodeIterator and advances the position of the iterator within the set.  The first call to nextNode() returns the first node in the set.
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if this method is called after the detach method was invoked.
		 * 
		 * @return The next Node in the set being iterated over, or null if there are no more members in that set.
		 * 
		 * @example
		 * <listing>
		 * var nodeIterator = document.createNodeIterator(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * currentNode = nodeIterator.nextNode(); // returns the next node</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NodeIterator.nextNode MDC - NodeIterator: nextNode Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-NodeIterator W3C - DOM Level 2 Traversal: nextNode Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function nextNode():Node;
		
		/**
		 * Returns the previous node in the set and moves the position of the NodeIterator backwards in the set.
		 * 
		 * <p>This method returns null when the current node is the first node in the set.</p>
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if this method is called after the detach method was invoked.
		 * 
		 * @return The previous Node in the set being iterated over, or null if there are no more members in that set.
		 * 
		 * @example
		 * <listing>
		 * var nodeIterator = document.createNodeIterator(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * currentNode = nodeIterator.nextNode(); // returns the next node
		 * previousNode = nodeIterator.previousNode(); // same result, since we backtracked to the previous node</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NodeIterator.previousNode MDC - NodeIterator: previousNode Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-NodeIterator W3C - DOM Level 2 Traversal: previousNode Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function previousNode():Node;
	}
}