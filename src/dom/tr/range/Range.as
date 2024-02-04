package dom.tr.range {
	
	import cssom.view.RangeView;
	import cssom.view.TextRectangle;
	import cssom.view.TextRectangleList;
	import dom.core.DocumentFragment;
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * The Range object represents a fragment of a document that can contain nodes and parts of text nodes in a given document. 
	 * 
	 * <p>A range can be created using the createRange method of the Document object. Range objects can also be retrieved by using 
	 * the getRangeAt method of the selection object. </p>
	 * 
	 * @see http://developer.mozilla.org/en/DOM/range MDC - range
	 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level-2-Range-idl W3C - DOM Level 2 Range: Range
	 * 
	 * @playerversion DOMTR 2
	 * @since DOMCore 2
	 */
	public class Range implements RangeView {
		
		/**
		 * Compare start boundary-point of sourceRange to start boundary-point of Range on which 
		 * compareBoundaryPoints is invoked.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const START_TO_START:Number = 0;
		
		/**
		 * Compare start boundary-point of sourceRange to end boundary-point of Range on which 
		 * compareBoundaryPoints is invoked.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const START_TO_END:Number = 1;
		
		/**
		 * Compare end boundary-point of sourceRange to end boundary-point of Range on which 
		 * compareBoundaryPoints is invoked.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const END_TO_END:Number = 2;
		
		/**
		 * Compare end boundary-point of sourceRange to start boundary-point of Range on which 
		 * compareBoundaryPoints is invoked.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const END_TO_START:Number = 3;
		
		/**
		 * Returns a boolean of true if the start and end boundary points of the Range are the same point in the DOM, false if not.
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.setStart(startNode, startOffset); 
		 * range.setEnd(endNode, endOffset);
		 * isCollapsed = range.collapsed;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.collapsed  MDC - range.collapsed
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level-2-Range-attr-collapsed W3C - DOM Level 2 Range: Range.collapsed
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function get collapsed():Boolean { return false; };
		
		/**
		 * The deepest common ancestor container of the Range's two boundary-points.
		 * 
		 * <p><strong>Note:</strong> Returns the deepest, or further down the document tree, Node that contains both the startContainer and 
		 * endContainer nodes. Since a Range need not be continuous, and may also partially select Nodes, this is a convenient way to find 
		 * a Node which encloses a Range. </p>
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.setStart(startNode,startOffset);
		 * range.setEnd(endNode,endOffset);
		 * rangeAncestor = range.commonAncestorContainer;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.commonAncestorContainer  MDC - range.commonAncestorContainer
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level-2-Range-attr-commonParent W3C - DOM Level 2 Range: Range.commonAncestorContainer
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function get commonAncestorContainer():Node { return null; };
		
		/**
		 * Node within which the Range ends
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.setStart(startNode,startOffset); 
		 * range.setEnd(endNode,endOffset);
		 * endRangeNode = range.endContainer;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.endContainer  MDC - range.endContainer
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level-2-Range-attr-endParent W3C - DOM Level 2 Range: Range.endContainer
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function get endContainer():Node { return null; };
		
		/**
		 * Offset within the ending node of the Range.
		 * 
		 * <p><strong>Note:</strong> endOffset has two meanings. If the endContainer is a Node of type Text, Comment, or CDATASection, 
		 * then the offset is the number of characters from the start of the endContainer to the boundary point of the Range. For other 
		 * Node types, the endOffset is the number of child nodes between the start of the endContainer and the boundary point of the Range.</p>
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.setStart(startNode,startOffset);
		 * range.setEnd(endNode,endOffset);
		 * endRangeOffset = range.endOffset;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.endOffset  MDC - range.endOffset
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level-2-Range-attr-endOffset W3C - DOM Level 2 Range: Range.endOffset
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function get endOffset():Number { return 0; };
		
		/**
		 * Node within which the Range begins.
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.setStart(startNode,startOffset);
		 * range.setEnd(endNode,endOffset);
		 * startRangeNode = range.startContainer;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.startContainer  MDC - range.startContainer
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level-2-Range-attr-startParent W3C - DOM Level 2 Range: Range.startContainer
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function get startContainer():Node { return null; };
		
		/**
		 * Offset within the starting node of the Range.
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.setStart(startNode,startOffset);
		 * range.setEnd(endNode,endOffset);
		 * startRangeOffset = range.startOffset;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.startOffset  MDC - range.startOffset
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level-2-Range-attr-startOffset W3C - DOM Level 2 Range: Range.startOffset
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function get startOffset():Number { return 0; };
		
		/**
		 * Sets the attributes describing the start of the Range. 
		 * 
		 * @throws dom.tr.range.RangeException INVALID_NODE_TYPE_ERR: Raised if refNode or an ancestor of refNode is an Entity, Notation, or DocumentType node.
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if offset is negative or greater than the number of child units in refNode. Child units are 16-bit units if refNode is a type of CharacterData node (e.g., a Text or Comment node) or a ProcessingInstruction node. Child units are Nodes in all other cases.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @param	refNode The refNode value. This parameter must be different from null.
		 * @param	offset The startOffset value.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * startNode = document.getElementsByTagName("p").item(2);
		 * startOffset = 0;
		 * range.setStart(startNode,startOffset);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.setStart  MDC - range.setStart()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-setStart W3C - DOM Level 2 Range: Range.setStart()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function setStart(refNode:Node, offset:Number):void { };
		
		/**
		 * Sets the attributes describing the end of a Range. 
		 * 
		 * @throws dom.tr.range.RangeException INVALID_NODE_TYPE_ERR: Raised if refNode or an ancestor of refNode is an Entity, Notation, or DocumentType node.
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if offset is negative or greater than the number of child units in refNode. Child units are 16-bit units if refNode is a type of CharacterData node (e.g., a Text or Comment node) or a ProcessingInstruction node. Child units are Nodes in all other cases.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @param	refNode The refNode value. This parameter must be different from null.
		 * @param	offset The endOffset value.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * endNode = document.getElementsByTagName("p").item(3);
		 * endOffset = document.getElementsByTagName("p").item(3).childNodes.length;
		 * range.setEnd(endNode,endOffset);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.setEnd  MDC - range.setEnd()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-setEnd W3C - DOM Level 2 Range: Range.setEnd()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function setEnd(refNode:Node, offset:Number):void { };
		
		/**
		 * Sets the start position to be before a node 
		 * 
		 * @throws dom.tr.range.RangeException INVALID_NODE_TYPE_ERR: Raised if the root container of refNode is not an Attr, Document, or DocumentFragment node or if refNode is a Document, DocumentFragment, Attr, Entity, or Notation node.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @param	refNode Range starts before refNode
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * referenceNode = document.getElementsByTagName("div").item(0);
		 * range.setStartBefore(referenceNode);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.setStartBefore  MDC - range.setStartBefore()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-setStartBefore W3C - DOM Level 2 Range: Range.setStartBefore()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function setStartBefore(refNode:Node):void { };
		
		/**
		 * Sets the start position to be after a node 
		 * 
		 * @throws dom.tr.range.RangeException INVALID_NODE_TYPE_ERR: Raised if the root container of refNode is not an Attr, Document, or DocumentFragment node or if refNode is a Document, DocumentFragment, Attr, Entity, or Notation node.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @param	refNode Range starts after refNode
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * referenceNode = document.getElementsByTagName("div").item(0);
		 * range.setStartAfter(referenceNode);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.setStartAfter  MDC - range.setStartAfter()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-setStartAfter W3C - DOM Level 2 Range: Range.setStartAfter()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function setStartAfter(refNode:Node):void { };
		
		/**
		 * Sets the end position to be before a node. 
		 * 
		 * @throws dom.tr.range.RangeException INVALID_NODE_TYPE_ERR: Raised if the root container of refNode is not an Attr, Document, or DocumentFragment node or if refNode is a Document, DocumentFragment, Attr, Entity, or Notation node.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @param	refNode Range ends before refNode
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * referenceNode = document.getElementsByTagName("div").item(0);
		 * range.setEndBefore(referenceNode);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.setEndBefore  MDC - range.setEndBefore()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-setEndBefore W3C - DOM Level 2 Range: Range.setEndBefore()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function setEndBefore(refNode:Node):void { };
		
		/**
		 * Sets the end of a Range to be after a node 
		 * 
		 * <p><strong>Note:</strong> The parent Node of end of the Range will be the same as that for the referenceNode. </p>
		 * 
		 * @throws dom.tr.range.RangeException INVALID_NODE_TYPE_ERR: Raised if the root container of refNode is not an Attr, Document or DocumentFragment node or if refNode is a Document, DocumentFragment, Attr, Entity, or Notation node.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @param	refNode Range ends after refNode.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * referenceNode = document.getElementsByTagName("div").item(0);
		 * range.setEndAfter(referenceNode);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.setEndAfter  MDC - range.setEndAfter()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-setEndAfter W3C - DOM Level 2 Range: Range.setEndAfter()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function setEndAfter(refNode:Node):void { };
		
		/**
		 * Select a node and its contents 
		 * 
		 * @throws dom.tr.range.RangeException INVALID_NODE_TYPE_ERR: Raised if an ancestor of refNode is an Entity, Notation or DocumentType node or if refNode is a Document, DocumentFragment, Attr, Entity, or Notation node.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @param	refNode The node to select.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * referenceNode = document.getElementsByTagName("div").item(0);
		 * range.selectNode(referenceNode);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.selectNode  MDC - range.selectNode()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-selectNode W3C - DOM Level 2 Range: Range.selectNode()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function selectNode(refNode:Node):void { };
		
		/**
		 * Select the contents within a node 
		 * 
		 * <p><strong>Note:</strong> The parent Node of the start and end of the Range will be the referenceNode. The startOffset is 0, and the endOffset is the number of child Nodes or number of characters contained in the reference node. </p>
		 * 
		 * @throws dom.tr.range.RangeException INVALID_NODE_TYPE_ERR: Raised if refNode or an ancestor of refNode is an Entity, Notation or DocumentType node.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @param	refNode Node to select from
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * referenceNode = document.getElementsByTagName("div")[0];
		 * range.selectNodeContents(referenceNode);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.selectNodeContents  MDC - range.selectNodeContents()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-selectNodeContents W3C - DOM Level 2 Range: Range.selectNodeContents()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function selectNodeContents(refNode:Node):void { };
		
		/**
		 * Collapse a Range onto one of its boundary-points 
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @param	toStart If TRUE, collapses the Range onto its start; if FALSE, collapses it onto its end.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * referenceNode = document.getElementsByTagName("div").item(0);
		 * range.selectNode(referenceNode);
		 * range.collapse(true);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.collapse  MDC - range.collapse()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-collapse W3C - DOM Level 2 Range: Range.collapse()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function collapse(toStart:Boolean):void { };
		
		/**
		 * Duplicates the contents of a Range.
		 * 
		 * <p><strong>Note:</strong> Event Listeners added using DOM Events are not copied during cloning. HTML attribute events 
		 * are duplicated as they are for the DOM Core cloneNode method. HTML id attributes are also cloned, which can lead to an 
		 * invalid document through cloning.</p>
		 * 
		 * <p><strong>Note:</strong> Partially selected nodes include the parent tags necessary to make the document fragment valid.</p>
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if a DocumentType node would be extracted 
		 * into the new DocumentFragment.
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @return A DocumentFragment that contains content equivalent to this Range.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * documentFragment = range.cloneContents();
		 * document.body.appendChild(documentFragment);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.cloneContents  MDC - range.cloneContents()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-cloneContents W3C - DOM Level 2 Range: Range.cloneContents()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function cloneContents():DocumentFragment { return null; };
		
		/**
		 * Removes the contents of a Range from the containing document or document fragment without returning a reference 
		 * to the removed content. 
		 * 
		 * <p><strong>Note:</strong> Unlike extractContents, this method does not return a documentFragment containing the deleted content. </p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if any portion of the content of the Range is 
		 * read-only or any of the nodes that contain any of the content of the Range are read-only.
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * range.deleteContents();</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.deleteContents  MDC - range.deleteContents()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-deleteContents W3C - DOM Level 2 Range: Range.deleteContents()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function deleteContents():void { };
		
		/**
		 * Moves the contents of a Range from the containing document or document fragment to a new DocumentFragment. 
		 * 
		 * <p><strong>Note:</strong> Event Listeners added using DOM Events are not retained during extraction. HTML 
		 * attribute events are retained or duplicated as they are for the DOM Core cloneNode method. HTML id attributes 
		 * are also cloned, which can lead to an invalid document if a partially-selected node is extracted and appened 
		 * to the document. </p>
		 * 
		 * <p><strong>Note:</strong> Partially selected nodes are cloned to include the parent tags necessary to make the document fragment valid. </p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if any portion of the content of the Range is 
		 * read-only or any of the nodes which contain any of the content of the Range are read-only.
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if a DocumentType node would be extracted into the 
		 * new DocumentFragment.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @return A DocumentFragment containing the extracted contents.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * documentFragment = range.extractContents();
		 * document.body.appendChild(documentFragment);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.extractContents  MDC - range.extractContents()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-extractContents W3C - DOM Level 2 Range: Range.extractContents()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function extractContents():DocumentFragment { return null; };
		
		/**
		 * Inserts a node into the Document or DocumentFragment at the start of the Range.
		 * 
		 * <p>If the container is a 
		 * Text node, this will be split at the start of the Range (as if the Text node's splitText method was 
		 * performed at the insertion point) and the insertion will occur between the two resulting Text nodes. 
		 * Adjacent Text nodes will not be automatically merged. If the node to be inserted is a DocumentFragment 
		 * node, the children will be inserted rather than the DocumentFragment node itself. </p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if an ancestor container of the start of the Range is read-only.
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if newNode and the container of the start of the Range were not created from the same document.
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if the container of the start of the Range is of a type that does not allow children of the type of newNode or if newNode is an ancestor of the container.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * @throws dom.tr.range.RangeException INVALID_NODE_TYPE_ERR: Raised if newNode is an Attr, Entity, Notation, or Document node.
		 * 
		 * @param	newNode The node to insert at the start of the Range
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * newNode = document.createElement("p");
		 * newNode.appendChild(document.createTextNode("New Node Inserted Here"));
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * range.insertNode(newNode);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.insertNode  MDC - range.insertNode()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-insertNode W3C - DOM Level 2 Range: Range.insertNode()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function insertNode(newNode:Node):void { };
		
		/**
		 * Reparents the contents of the Range to the given node and inserts the node at the position of the start of the Range. 
		 * 
		 * <p><strong>Note:</strong> surroundContents is equivalent to newNode.appendChild(range.extractContents()); range.insertNode(newNode). After surrounding, the boundary points of the range include newNode.</p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if an ancestor container of either boundary-point of the Range is read-only.
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if newParent and the container of the start of the Range were not created from the same document.
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if the container of the start of the Range is of a type that does not allow children of the type of newParent or if newParent is an ancestor of the container or if node would end up with a child node of a type not allowed by the type of node.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * @throws dom.tr.range.RangeException BAD_BOUNDARYPOINTS_ERR: Raised if the Range partially selects a non-text node.
		 * @throws dom.tr.range.RangeException INVALID_NODE_TYPE_ERR: Raised if node is an Attr, Entity, DocumentType, Notation, Document, or DocumentFragment node.
		 * 
		 * @param	newParent The node to surround the contents with.
		 * 
		 * @example
		 * <listing>
		 * var range = document.createRange();
		 * var newNode = document.createElement("p");
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * range.surroundContents(newNode);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.surroundContents  MDC - range.surroundContents()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-surroundContents W3C - DOM Level 2 Range: Range.surroundContents()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function surroundContents(newParent:Node):void { };
		
		/**
		 * Compare the boundary-points of two Ranges in a document. 
		 * 
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if the two Ranges are not in the same Document or DocumentFragment.
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @param	how A code representing the type of comparison, as defined above.
		 * @param	sourceRange The Range on which this current Range is compared to.
		 * @return 	-1, 0 or 1 depending on whether the corresponding boundary-point of the Range is 
		 * respectively before, equal to, or after the corresponding boundary-point of sourceRange.
		 * 
		 * @example
		 * <listing>
		 * var range, sourceRange, compare;
		 * range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div")[0]);
		 * sourceRange = document.createRange();
		 * sourceRange.selectNode(document.getElementsByTagName("div")[1]);
		 * compare = range.compareBoundaryPoints(Range.START_TO_END, sourceRange);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.compareBoundaryPoints  MDC - range.compareBoundaryPoints()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-compareBoundaryPoints W3C - DOM Level 2 Range: Range.compareBoundaryPoints()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function compareBoundaryPoints(how:Number, sourceRange:Range):Number { return 0; };
		
		/**
		 * Produces a new Range whose boundary-points are equal to the boundary-points of the Range. 
		 * 
		 * <p><strong>Note:</strong> clone is copied by value, not reference, so a change in either Range does not effect the other. </p>
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @return The duplicated Range.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * clone = range.cloneRange();</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.cloneRange  MDC - range.cloneRange()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-clone W3C - DOM Level 2 Range: Range.cloneRange()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function cloneRange():Range { return null; };
		
		/**
		 * Called to indicate that the Range is no longer in use and that the implementation may relinquish any resources 
		 * associated with this Range. Subsequent calls to any methods or attribute getters on this Range will result in 
		 * a DOMException being thrown with an error code of INVALID_STATE_ERR. 
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * range.detach();</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.detach  MDC - range.detach()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-detach W3C - DOM Level 2 Range: Range.detach()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function detach():void { };
		
		/**
		 * Returns the contents of a Range as a string. This string contains only the data characters, not any markup. 
		 * 
		 * <p><strong>Note:</strong> Alerting the contents of a Range makes an implicit toString() call, so comparing range and text through an alert dialog is ineffective </p>
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: Raised if detach() has already been invoked on this object.
		 * 
		 * @return 	The contents of the Range.
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * text = range.toString();</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.toString  MDC - range.toString()
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level2-Range-method-toString W3C - DOM Level 2 Range: Range.toString()
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function toString():DOMString { return null; };
		
		// Gecko only
		
		/**
		 * Node starts before the Range 
		 * 
		 * @see dom.tr.range.Range#compareNode()
		 * 
		 * @playerversion Non-Standard Mozilla
		 * @playerversion Obsolete 0
		 */
		public static const NODE_BEFORE:Number = 0;
		
		/**
		 * Node ends after the Range 
		 * 
		 * @see dom.tr.range.Range#compareNode()
		 * 
		 * @playerversion Non-Standard Mozilla
		 * @playerversion Obsolete 0
		 */
		public static const NODE_AFTER:Number = 1;
		
		/**
		 * Node starts before and ends after the Range 
		 * 
		 * @see dom.tr.range.Range#compareNode()
		 * 
		 * @playerversion Non-Standard Mozilla
		 * @playerversion Obsolete 0
		 */
		public static const NODE_BEFORE_AND_AFTER:Number = 2;
		
		/**
		 * Node starts after and ends before the Range, i.e. the Node is completely selected by the Range. 
		 * 
		 * @see dom.tr.range.Range#compareNode()
		 * 
		 * @playerversion Non-Standard Mozilla
		 * @playerversion Obsolete 0
		 * @as-of Gecko 1.9
		 */
		public static const NODE_INSIDE:Number = 3;
		
		/**
		 * Returns a constant (see notes). 
		 * 
		 * <p><strong>Note:</strong> This method is obsolete; you should use the W3C DOM Range methods (see compareBoundaryPoints()).</p>
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * returnValue = range.compareNode(document.getElementsByTagName("p").item(0));</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.compareNode  MDC - range.compareNode()
		 * @see dom.tr.range.Range#NODE_BEFORE
		 * @see dom.tr.range.Range#NODE_AFTER
		 * @see dom.tr.range.Range#NODE_BEFORE_AND_AFTER
		 * @see dom.tr.range.Range#NODE_INSIDE
		 * @see dom.tr.range.Range#compareBoundaryPoints()
		 * 
		 * @playerversion Non-Standard Mozilla
		 * @playerversion Obsolete 0
		 * @as-of Gecko 1.9
		 */
		public function compareNode(refNode:Node):Number { return 0; };
		
		/**
		 * If the referenceNode is a Node of type Text, Comment, or CDATASection, then offset is the number of characters 
		 * from the start of referenceNode. For other Node types, offset is the number of child nodes between the start of the referenceNode.
		 * 
		 * @param	refNode The Node to compare with the Range. 
		 * @param	offset An integer greater than or equal to zero representing the offset inside the referenceNode. 
		 * @return Returns -1, 0, or 1 depending on whether the referenceNode is before, the same as, or after the range. 
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * returnValue = range.comparePoint(document.getElementsByTagName("p").item(0),1);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.comparePoint  MDC - range.comparePoint()
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function comparePoint(refNode:Node, offset:Number):Number { return 0; };
		
		/**
		 * This method takes a string and uses Mozilla's parser to convert it to a DOM tree.
		 * 
		 * @param	tagString Text that contains text and tags to be converted to a document fragment. 
		 * @return Returns a document fragment. 
		 * 
		 * @example
		 * <listing>
		 * var tagString = "&lt;div&gt;I am a div node&lt;/div&gt;";
		 * var range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * var documentFragment = range.createContextualFragment(tagString);
		 * document.body.appendChild(documentFragment);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.createContextualFragment  MDC - range.createContextualFragment()
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function createContextualFragment(tagString:DOMString):DocumentFragment { return null; };
		
		/**
		 * Returns a boolean indicating whether the given node intersects the range. 
		 * 
		 * <p><strong>Note:</strong> This method is obsolete; you should instead use the W3C DOM Range methods (see compareBoundaryPoints()).</p>
		 * 
		 * <p><strong>Warning:</strong> This method has been removed from Gecko 1.9 and will not exist in future versions of Firefox; you should switch to compareBoundaryPoints() as soon as possible.</p>
		 * 
		 * @param	refNode The Node to compare with the Range. 
		 * @return Returns a boolean indicating whether the given node intersects the range. 
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * bool = range.intersectsNode(document.getElementsByTagName("p").item(0));</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.intersectsNode  MDC - range.intersectsNode()
		 * @see dom.tr.range.Range#compareBoundaryPoints()
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function intersectsNode(refNode:Node):Boolean { return false; };
		
		/**
		 * Returns true if the point (cursor position) at offset within ReferenceNode is within this range.
		 * 
		 * @param	refNode The Node to compare with the Range. 
		 * @param	offset The offset into Node of the point to compare with the Range. 
		 * @return Returns a boolean indicating whether the given point is in the range. 
		 * 
		 * @example
		 * <listing>
		 * range = document.createRange();
		 * range.selectNode(document.getElementsByTagName("div").item(0));
		 * bool = range.isPointInRange(document.getElementsByTagName("p").item(0),1);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/range.isPointInRange  MDC - range.isPointInRange()
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function isPointInRange(refNode:Node, offset:Number):Boolean { return false; };
		
		/* INTERFACE cssom.view.RangeView */
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/cssom-view/#rangeview-getclientrects  W3C - CSSOM View: RangeView.getClientRects()
		 * @see cssom.view.ElementView#getClientRects() ElementView.getClientRects()
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMTR 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.1b_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function getClientRects():TextRectangleList{	return null; }
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/cssom-view/#rangeview-getboundingclientrect  W3C - CSSOM View: RangeView.getBoundingClientRect()
		 * @see cssom.view.ElementView#getBoundingClientRect() ElementView.getBoundingClientRect()
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMTR 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.1b_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function getBoundingClientRect():TextRectangle { return null; }
	}
}