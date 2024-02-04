package dom.tr.traversal {
	
	import dom.core.Node;
	
	/**
	 * Represents the nodes of a document subtree and a position within them.
	 * 
	 * <p>A <code>TreeWalker</code> can be created using the createTreeWalker()<code></code> method of the <code>Document</code> object.</p>
	 * 
	 * @see http://developer.mozilla.org/en/DOM/treeWalker MDC - treeWalker
	 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: TreeWalker
	 * @see dom.core.Document#createTreeWalker()
	 * 
	 * @playerversion DOMTR 2
	 * @since DOMCore 2
	 */
	public interface TreeWalker {
		
		/**
		 * The node at which the <code>TreeWalker</code> is currently positioned.
		 * 
		 * <p>Alterations to the DOM tree may cause the current node to no longer be accepted by the <code>TreeWalker</code>'s 
		 * associated filter. currentNode may also be explicitly set to any node, whether or not it is within the 
		 * subtree specified by the root node or would be accepted by the filter and <code>whatToShow</code> flags. Further 
		 * traversal occurs relative to currentNode even if it is not part of the current view, by applying the 
		 * filters in the requested direction; if no traversal is possible, currentNode is not changed.</p>
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if an attempt is made to set currentNode to <code>null</code>.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.currentNode MDC - treeWalker: currentNode Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: currentNode Property
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function get currentNode():Node;
		function set currentNode(value:Node):void;
		
		/**
		 * The value of this flag determines whether the children of entity reference nodes are visible to the <code>TreeWalker</code>. 
		 * If false, they and their descendants will be rejected. Note that this rejection takes precedence over <code>whatToShow</code> 
		 * and the filter, if any.
		 * 
		 * <p>To produce a view of the document that has entity references expanded and does not expose the entity reference 
		 * node itself, use the <code>whatToShow</code> flags to hide the entity reference node and set <code>expandEntityReferences</code> to true 
		 * when creating the <code>TreeWalker</code>. To produce a view of the document that has entity reference nodes but no entity 
		 * expansion, use the <code>whatToShow</code> flags to show the entity reference node and set <code>expandEntityReferences</code> to false.</p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.ExpandEntityReferences MDC - treeWalker: ExpandEntityReferences Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: ExpandEntityReferences Property
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
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
		 * The filter used to screen nodes.
		 * 
		 * <p>Note: When creating the TreeWalker, the filter object is passed in as the third parameter, and the object 
		 * method acceptNode(node) is called on every single node to determine whether or not to accept it. This function 
		 * should return the constant NodeFilter.FILTER_ACCEPT for cases when the node should be accepted and 
		 * NodeFilter.FILTER_REJECT for cases when the node should be rejected.</p>
		 * 
		 * @example
		 * <listing>
		 * var treeWalker = document.createTreeWalker(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * nodeFilter = treeWalker.filter; // document.body in this case</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.filter MDC - treeWalker: filter Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: filter Property
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
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
		 * The root node of the <code>TreeWalker</code>, as specified when it was created.
		 * 
		 * @example
		 * <listing>
		 * var treeWalker = document.createTreeWalker(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * root = treeWalker.root; // document.body in this case</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.root MDC - treeWalker: root Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: root Property
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
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
		 * This attribute determines which node types are presented via the <code>TreeWalker</code>. The available set of constants is 
		 * defined in the NodeFilter interface. Nodes not accepted by <code>whatToShow</code> will be skipped, but their children may 
		 * still be considered. Note that this skip takes precedence over the filter, if any.
		 * 
		 * @example
		 * <listing>
		 * var treeWalker = document.createTreeWalker(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT + NodeFilter.SHOW_COMMENT + NodeFilter.SHOW_TEXT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * if((treeWalker.whatToShow == NodeFilter.SHOW_ALL) || 
		 * 	(treeWalker.whatToShow % (NodeFilter.SHOW_COMMENT*2)) >= NodeFilter.SHOW_COMMENT) {
		 * 	// treeWalker will show comments
		 * }</listing>
		 * 
		 * @see dom.tr.traversal.NodeFilter NodeFilter
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.whatToShow MDC - treeWalker: whatToShow Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: whatToShow Property
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
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
		 * Moves the <code>TreeWalker</code> to the first visible child of the current node, and returns the new node. If the current 
		 * node has no visible children, returns <code>null</code>, and retains the current node. 
		 * 
		 * @return The new node, or <code>null</code> if the current node has no visible children in the <code>TreeWalker</code>'s logical view.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.firstChild MDC - treeWalker: firstChild Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: firstChild Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function firstChild():Node;
		
		/**
		 * Moves the <code>TreeWalker</code> to the last visible child of the current node, and returns the new node. If the current 
		 * node has no visible children, returns <code>null</code>, and retains the current node. 
		 * 
		 * @return The new node, or <code>null</code> if the current node has no children in the <code>TreeWalker</code>'s logical view.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.lastChild MDC - treeWalker: lastChild Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: lastChild Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function lastChild():Node;
		
		/**
		 * Moves the <code>TreeWalker</code> to the next visible node in document order relative to the current node, and returns the 
		 * new node. If the current node has no next node, or if the search for nextNode attempts to step upward from the 
		 * <code>TreeWalker</code>'s root node, returns <code>null</code>, and retains the current node. 
		 * 
		 * @return The new node, or <code>null</code> if the current node has no next node in the <code>TreeWalker</code>'s logical view.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.nextNode MDC - treeWalker: nextNode Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: nextNode Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
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
		 * Moves the <code>TreeWalker</code> to the next sibling of the current node, and returns the new node. If the current node has 
		 * no visible next sibling, returns <code>null</code>, and retains the current node. 
		 * 
		 * @return The new node, or <code>null</code> if the current node has no next sibling. in the <code>TreeWalker</code>'s logical view.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.nextSibling MDC - treeWalker: nextSibling Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: nextSibling Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function nextSibling():Node;
		
		/**
		 * Moves to and returns the closest visible ancestor node of the current node. If the search for <code>parentNode</code> attempts 
		 * to step upward from the <code>TreeWalker</code>'s root node, or if it fails to find a visible ancestor node, this method 
		 * retains the current position and returns <code>null</code>. 
		 * 
		 * @return The new parent node, or <code>null</code> if the current node has no parent in the <code>TreeWalker</code>'s logical view.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.currentNode MDC - treeWalker: parentNode Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: parentNode Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function parentNode():Node;
		
		/**
		 * Moves the <code>TreeWalker</code> to the previous visible node in document order relative to the current node, and returns the 
		 * new node. If the current node has no previous node, or if the search for previousNode attempts to step upward from 
		 * the <code>TreeWalker</code>'s root node, returns <code>null</code>, and retains the current node. 
		 * 
		 * @return The new node, or <code>null</code> if the current node has no previous node in the <code>TreeWalker</code>'s logical view.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.previousNode MDC - treeWalker: previousNode Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: previousNode Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
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
		
		/**
		 * Moves the <code>TreeWalker</code> to the previous sibling of the current node, and returns the new node. If the current node has 
		 * no visible previous sibling, returns <code>null</code>, and retains the current node. 
		 * 
		 * @return The new node, or <code>null</code> if the current node has no previous sibling. in the <code>TreeWalker</code>'s logical view.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/treeWalker.previousSibling MDC - treeWalker: previousSibling Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-TreeWalker W3C - DOM Level 2 Traversal: previousSibling Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function previousSibling():Node;
	}
}