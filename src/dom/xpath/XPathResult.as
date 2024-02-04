package dom.xpath {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * The XPathResult interface represents the result of the evaluation of an XPath 1.0 expression 
	 * within the context of a particular node. Since evaluation of an XPath expression can result in 
	 * various result types, this object makes it possible to discover and manipulate the type and 
	 * value of the result. 
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult W3C - XPathResult
	 * 
	 * @playerversion DOMXPath 3
	 * @since DOMXPath 3
	 */
	public class XPathResult {
		
		// XPathResultType
		/**
		 * This code does not represent a specific type. An evaluation of an XPath expression will never 
		 * produce this type. If this type is requested, then the evaluation returns whatever type naturally 
		 * results from evaluation of the expression. If the natural result is a node set when ANY_TYPE was 
		 * requested, then UNORDERED_NODE_ITERATOR_TYPE is always the resulting type. Any other representation 
		 * of a node set must be explicitly requested.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-ANY-TYPE W3C - XPathResult.ANY_TYPE
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const ANY_TYPE:Number = 0;
		
		/**
		 * The result is a number as defined by [XPath 1.0]. Document modification does not invalidate the number, 
		 * but may mean that reevaluation would not yield the same number.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-NUMBER-TYPE W3C - XPathResult.NUMBER_TYPE
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const NUMBER_TYPE:Number = 1;
		
		/**
		 * The result is a string as defined by [XPath 1.0]. Document modification does not invalidate the string, but 
		 * may mean that the string no longer corresponds to the current document.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-STRING-TYPE W3C - XPathResult.STRING_TYPE
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const STRING_TYPE:Number = 2;
		
		/**
		 * The result is a boolean as defined by [XPath 1.0]. Document modification does not invalidate the boolean, 
		 * but may mean that reevaluation would not yield the same boolean.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-BOOLEAN-TYPE W3C - XPathResult.BOOLEAN_TYPE
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const BOOLEAN_TYPE:Number = 3;
		
		/**
		 * The result is a node set as defined by [XPath 1.0] that will be accessed iteratively, which may not produce nodes 
		 * in a particular order. Document modification invalidates the iteration. This is the default type returned if the 
		 * result is a node set and ANY_TYPE is requested.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-UNORDERED-NODE-ITERATOR-TYPE W3C - XPathResult.UNORDERED_NODE_ITERATOR_TYPE
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const UNORDERED_NODE_ITERATOR_TYPE:Number = 4;
		
		/**
		 * The result is a node set as defined by [XPath 1.0] that will be accessed iteratively, which will produce 
		 * document-ordered nodes. Document modification invalidates the iteration.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-ORDERED-NODE-ITERATOR-TYPE W3C - XPathResult.ORDERED_NODE_ITERATOR_TYPE
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const ORDERED_NODE_ITERATOR_TYPE:Number = 5;
		
		/**
		 * The result is a node set as defined by [XPath 1.0] that will be accessed as a snapshot list of nodes that may 
		 * not be in a particular order. Document modification does not invalidate the snapshot but may mean that reevaluation 
		 * would not yield the same snapshot and nodes in the snapshot may have been altered, moved, or removed from the document.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-UNORDERED-NODE-SNAPSHOT-TYPE W3C - XPathResult.UNORDERED_NODE_SNAPSHOT_TYPE
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const UNORDERED_NODE_SNAPSHOT_TYPE:Number = 6;
		
		/**
		 * The result is a node set as defined by [XPath 1.0] that will be accessed as a snapshot list of nodes that will be 
		 * in original document order. Document modification does not invalidate the snapshot but may mean that reevaluation 
		 * would not yield the same snapshot and nodes in the snapshot may have been altered, moved, or removed from the document.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-ORDERED-NODE-SNAPSHOT-TYPE W3C - XPathResult.ORDERED_NODE_SNAPSHOT_TYPE
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const ORDERED_NODE_SNAPSHOT_TYPE:Number = 7;
		
		/**
		 * The result is a node set as defined by [XPath 1.0] and will be accessed as a single node, which may be 
		 * null if the node set is empty. Document modification does not invalidate the node, but may mean that the 
		 * result node no longer corresponds to the current document. This is a convenience that permits optimization 
		 * since the implementation can stop once any node in the resulting set has been found. If there is more than 
		 * one node in the actual result, the single node returned might not be the first in document order.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-ANY-UNORDERED-NODE-TYPE W3C - XPathResult.ANY_UNORDERED_NODE_TYPE
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const ANY_UNORDERED_NODE_TYPE:Number = 8;
		
		/**
		 * The result is a node set as defined by [XPath 1.0] and will be accessed as a single node, which may be null if the 
		 * node set is empty. Document modification does not invalidate the node, but may mean that the result node no longer 
		 * corresponds to the current document. This is a convenience that permits optimization since the implementation can 
		 * stop once the first node in document order of the resulting set has been found. If there are more than one node in
		 * the actual result, the single node returned will be the first in document order.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-FIRST-ORDERED-NODE-TYPE W3C - XPathResult.FIRST_ORDERED_NODE_TYPE
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const FIRST_ORDERED_NODE_TYPE:Number= 9;
		
		/**
		 * A code representing the type of this result, as defined by the type constants.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-resultType W3C - XPathResult.resultType
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function get resultType():Number { return 0; };
		
		/**
		 * The value of this number result. If the native double type of the DOM binding does not directly support the exact IEEE 754 result 
		 * of the XPath expression, then it is up to the definition of the binding to specify how the XPath number is converted to the native binding number.
		 * 
		 * @throws dom.xpath.XPathException TYPE_ERR: Raised if resultType is not NUMBER_TYPE.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-numberValue W3C - XPathResult.numberValue
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function get numberValue():Number { return 0; };
		
		/**
		 * The value of this string result.
		 * 
		 * @throws dom.xpath.XPathException TYPE_ERR: Raised if resultType is not STRING_TYPE.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-stringValue W3C - XPathResult.stringValue
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function get stringValue():DOMString { return null; };
		
		/**
		 * The value of this boolean result.
		 * 
		 * @throws dom.xpath.XPathException TYPE_ERR: Raised if resultType is not BOOLEAN_TYPE.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-booleanValue W3C - XPathResult.booleanValue
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function get booleanValue():Boolean { return false; };
		
		/**
		 * The value of this single node result, which may be null.
		 * 
		 * @throws dom.xpath.XPathException TYPE_ERR: Raised if resultType is not ANY_UNORDERED_NODE_TYPE or FIRST_ORDERED_NODE_TYPE.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-singleNodeValue W3C - XPathResult.singleNodeValue
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function get singleNodeValue():Node { return null; };
		
		/**
		 * Signifies that the iterator has become invalid. True if resultType is UNORDERED_NODE_ITERATOR_TYPE or ORDERED_NODE_ITERATOR_TYPE 
		 * and the document has been modified since this result was returned.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-invalid-iterator-state W3C - XPathResult.invalideIteratorState
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function get invalideIteratorState():Boolean { return false; };
		
		/**
		 * The number of nodes in the result snapshot. Valid values for snapshotItem indices are 0 to snapshotLength-1 inclusive.
		 * 
		 * @throws dom.xpath.XPathException TYPE_ERR: Raised if resultType is not UNORDERED_NODE_SNAPSHOT_TYPE or ORDERED_NODE_SNAPSHOT_TYPE.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-snapshot-length W3C - XPathResult.snapshotLength
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function get snapshotLength():Number { return 0; };
		
		/**
		 * Iterates and returns the next node from the node set or nullif there are no more nodes. 
		 * 
		 * @throws dom.xpath.XPathException TYPE_ERR: Raised if resultType is not UNORDERED_NODE_ITERATOR_TYPE or ORDERED_NODE_ITERATOR_TYPE.
		 * 
		 * @throws dom.events.EventException INVALID_STATE_ERR: The document has been mutated since the result was returned.
		 * 
		 * @return Returns the next node.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-iterateNext W3C - XPathResult.iterateNext()
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function iterateNext():Node { return null; };
		
		/**
		 * Returns the indexth item in the snapshot collection. If index is greater than or equal to the number of nodes in the list, 
		 * this method returns null. Unlike the iterator result, the snapshot does not become invalid, but may not correspond to the 
		 * current document if it is mutated.
		 * 
		 * @throws dom.xpath.XPathException TYPE_ERR: Raised if resultType is not UNORDERED_NODE_SNAPSHOT_TYPE or ORDERED_NODE_SNAPSHOT_TYPE.
		 * 
		 * @param	index Index into the snapshot collection.
		 * @return The node at the indexth position in the NodeList, or null if that is not a valid index.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathResult-snapshotItem W3C - XPathResult.snapshotItem()
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function snapshotItem(index:Number):Node { return null; };
	}
}