package dom.tr.traversal {
	
	import dom.core.Node;
	
	/**
	 * Filters are objects that know how to "filter out" nodes. 
	 * 
	 * <p>If a <code>NodeIterator</code> or <code>TreeWalker</code> is given a <code>NodeFilter</code>, it 
	 * applies the filter before it returns the next node. If the filter says to accept the node, the traversal logic 
	 * returns it; otherwise, traversal looks for the next node and pretends that the node that was rejected was not there.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-NodeFilter W3C - DOM Level 2 Traversal: NodeFilter
	 * 
	 * @playerversion DOMTR 2
	 * @since DOMCore 2
	 */
	public class NodeFilter {
		
		// Constants returned by acceptNode
		/**
		 * Accept the node. Navigation methods defined for NodeIterator or TreeWalker will return this node.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const FILTER_ACCEPT:Number = 1;
		/**
		 * Reject the node. Navigation methods defined for NodeIterator or TreeWalker will not return this node. For 
		 * TreeWalker, the children of this node will also be rejected. NodeIterators treat this as a synonym for 
		 * FILTER_SKIP.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const FILTER_REJECT:Number = 2;
		/**
		 * Skip this single node. Navigation methods defined for NodeIterator or TreeWalker will not return this node. 
		 * For both NodeIterator and TreeWalker, the children of this node will still be considered.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const FILTER_SKIP:Number = 3;
		
		
		// Constants for whatToShow
		/**
		 * Show all <code>Nodes</code>.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_ALL:Number = -1;
		/**
		 * Show Element nodes.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_ELEMENT:Number = 1;
		/**
		 * Show <code>Attr</code> nodes. This is meaningful only when creating an iterator or tree-walker with an attribute node as 
		 * its <code>root</code>; in this case, it means that the attribute node will appear in the first position of the iteration 
		 * or traversal. Since attributes are never children of other nodes, they do not appear when traversing over 
		 * the document tree.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_ATTRIBUTE:Number = 2;
		/**
		 * Show <code>Text</code> nodes.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_TEXT:Number = 4;
		/**
		 * Show <code>CDATASection</code> nodes.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_CDATA_SECTION:Number = 8;
		/**
		 * Show <code>EntityReference</code> nodes.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_ENTITY_REFERENCE:Number = 16;
		/**
		 * Show <code>Entity</code> nodes. This is meaningful only when creating an iterator or tree-walker with an <code>Entity</code> node as 
		 * its <code>root</code>; in this case, it means that the <code>Entity</code> node will appear in the first position of the traversal. 
		 * Since entities are not part of the document tree, they do not appear when traversing over the document tree.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_ENTITY:Number = 32;
		/**
		 * Show <code>ProcessingInstruction</code> nodes.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_PROCESSING_INSTRUCTION:Number = 64;
		/**
		 * Show <code>Comment</code> nodes.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_COMMENT:Number = 128;
		/**
		 * Show <code>Document</code> nodes.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_DOCUMENT:Number = 256;
		/**
		 * Show <code>DocumentType</code> nodes.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_DOCUMENT_TYPE:Number = 512;
		/**
		 * Show <code>DocumentFragment</code> nodes.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_DOCUMENT_FRAGMENT:Number = 1024;
		/**
		 * Show <code>Notation</code> nodes. This is meaningful only when creating an iterator or tree-walker with a <code>Notation</code> node as 
		 * its <code>root</code>; in this case, it means that the <code>Notation</code> node will appear in the first position of the traversal. 
		 * Since notations are not part of the document tree, they do not appear when traversing over the document tree.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const SHOW_NOTATION:Number = 2048;
		
		/**
		 * Test whether a specified node is visible in the logical view of a TreeWalker or NodeIterator. This function will be 
		 * called by the implementation of TreeWalker and NodeIterator; it is not normally called directly from user code. 
		 * 
		 * @param	n The node to check to see if it passes the filter or not.
		 * @return A constant to determine whether the node is accepted, rejected, or skipped.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NodeIterator.filter  MDC - NodeIterator: filter Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-NodeFilter  W3C - DOM Level 2 Traversal: acceptNode Method
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
		public function acceptNode(n:Node):Number { return 0; };
	}
}