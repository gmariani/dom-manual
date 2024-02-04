package dom.tr.traversal {
	
	import dom.core.Node;
	
	/**
	 * Contains methods that create iterators and tree-walkers to traverse a node and its children in document order.
	 * 
	 * @see http://developer.mozilla.org/En/DOM/Document MDC - Document
	 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-Document W3C - DOM Level 2 Traversal: DocumentTraversal
	 * 
	 * @playerversion DOMTR 2
	 * @since DOMCore 2
	 */
	public interface DocumentTraversal {
		
		/**
		 * Create a new NodeIterator over the subtree rooted at the specified node. 
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if the specified <code>root</code> is <code>null</code>.
		 * 
		 * @param	root The node which will be iterated together with its children. The iterator is initially positioned 
		 * just before this node. The <code>whatToShow</code> flags and the filter, if any, are not considered when setting this position. The <code>root</code> must not be <code>null</code>.
		 * @param	whatToShow This flag specifies which node types may appear in the logical view of the tree presented 
		 * by the iterator. These flags can be combined using OR.
		 * @param	filter The <code>NodeFilter</code> to be used with this <code>TreeWalker</code>, or <code>null</code> to indicate no filter.
		 * @param	entityReferenceExpansion The value of this flag determines whether entity reference nodes are expanded.
		 * @return The newly created NodeIterator.
		 * 
		 * @example
		 * <listing>
		 * var nodeIterator = document.createNodeIterator(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * var nodeList = new Array();
		 * var currentNode;
		 * 
		 * while (currentNode = nodeIterator.nextNode()) {
		 * 	nodeList.push(currentNode);
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Document.createNodeIterator  MDC - Document: createNodeIterator Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-Document  W3C - DOM Level 2 Traversal: createNodeIterator Method
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
		function createNodeIterator(root:Node, whatToShow:Number, filter:NodeFilter, entityReferenceExpansion:Boolean):NodeIterator;
		
		/**
		 * Create a new TreeWalker over the subtree rooted at the specified node. 
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if the specified <code>root</code> is <code>null</code>.
		 * 
		 * @param	root The node which will serve as the <code>root</code> for the TreeWalker. The whatToShow flags and the NodeFilter 
		 * are not considered when setting this value; any node type will be accepted as the <code>root</code>. The <code>currentNode</code> of the 
		 * TreeWalker is initialized to this node, whether or not it is visible. The <code>root</code> functions as a stopping point for 
		 * traversal methods that look upward in the document structure, such as <code>parentNode</code> and nextNode. The <code>root</code> must not 
		 * be <code>null</code>.
		 * @param	whatToShow This flag specifies which node types may appear in the logical view of the tree presented by 
		 * the tree-walker. These flags can be combined using OR.
		 * @param	filter The <code>NodeFilter</code> to be used with this <code>TreeWalker</code>, or <code>null</code> to indicate no filter.
		 * @param	entityReferenceExpansion If this flag is false, the contents of <code>EntityReference</code> nodes are not presented in the logical view.
		 * @return The newly created <code>TreeWalker</code>.
		 * 
		 * @example
		 * <listing>
		 * var treeWalker = document.createTreeWalker(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * var nodeList = new Array();
		 * while(treeWalker.nextNode()) nodeList.push(treeWalker.currentNode);</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Document.createNodeIterator  MDC - Document: createNodeIterator Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-Document  W3C - DOM Level 2 Traversal: createNodeIterator Method
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
		function createTreeWalker(root:Node, whatToShow:Number, filter:NodeFilter, entityReferenceExpansion:Boolean):TreeWalker;
	}
}