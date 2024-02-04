package dom.objects {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	import dom.tr.range.Range;
	
	/**
	 * Selection is the class of the object returned by window.getSelection() and other methods. A 
	 * selection object represents the ranges that the user has selected.
	 * 
	 * <p><strong>Note (IE):</strong> Internet Explorer uses the document.selection.createRange() to create a TextRange,
	 * which is fundamentally different from Mozilla's Selection and W3C's Range objects.</p>
	 * 
	 * @example
	 * Note the order of the branches: the Mozilla Selection should come first! The reason is that Opera 
	 * supports both objects; if you use window.getSelection() to read out the user selection, Opera 
	 * creates a Selection object, while if you use document.selection it creates a Text Range object.
	 * <listing>
	 * var userSelection;
	 * if (window.getSelection) {
	 * 	userSelection = window.getSelection();
	 * } else if (document.selection) { // should come last; Opera!
	 * 	userSelection = document.selection.createRange();
	 * }</listing>
	 * 
	 * @see http://www.quirksmode.org/dom/range_intro.html Quirksmode - Accessing the user selection
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 */
	public class Selection {
		
		/**
		 * Returns the node in which the selection begins. 
		 * 
		 * <p><strong>Note:</strong> A user may make a selection from left to right (in document order) or right to left (reverse of 
		 * document order). The anchor is where the user began the selection. This can be visualized by holding the 
		 * Shift key and pressing the arrow keys on your keyboard. The selection's anchor does not move, but the 
		 * selection's focus, the other end of the selection, does move.</p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/anchorNode MDC - Selection.anchorNode
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get anchorNode():Node { return null; };
		
		/**
		 * Returns the number of characters that the selection's anchor is offset within the anchorNode. 
		 * 
		 * <p><strong>Note:</strong> This number is zero-based. If the selection begins with the first character in the anchorNode, 
		 * 0 is returned.</p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/anchorOffset MDC - Selection.anchorOffset
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get anchorOffset():Number { return 0; };
		
		/**
		 * Returns the node in which the selection ends. 
		 * 
		 * <p><strong>Note:</strong> A user may make a selection from left to right (in document order) or right to left (reverse of 
		 * document order). The focus is where the user ended the selection. This can be visualized by holding the 
		 * Shift key and pressing the arrow keys on your keyboard to modify the current selection. The selection's 
		 * focus moves, but the selection's anchor, the other end of the selection, does not move. </p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/focusNode MDC - Selection.focusNode
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get focusNode():Node { return null; };
		
		/**
		 * Returns the number of characters that the selection's focus is offset within the focusNode. 
		 * 
		 * <p><strong>Note:</strong> This number is zero-based. If the selection ends with the first character in the focusNode, 
		 * 0 is returned. </p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/focusOffset MDC - Selection.focusOffset
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get focusOffset():Number { return 0; };
		
		/**
		 * Returns a boolean indicating whether the selection's start and end points are at the same position. 
		 * 
		 * <p><strong>Note:</strong> Even a collapsed selection may have a rangeCount greater than 0. sel.getRangeAt(0) may return 
		 * a range that is also collapsed. </p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/isCollapsed MDC - Selection.isCollapsed
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get isCollapsed():Boolean { return false; };
		
		/**
		 * Returns the number of ranges in the selection. 
		 * 
		 * <p><strong>Note:</strong> Before the user has clicked a freshly loaded page, the rangeCount is 0. A user can normally 
		 * only select one range at a time, so the rangeCount will usually be 1. Scripting can be use to make 
		 * the selection contain more than 1 range. </p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/rangeCount MDC - Selection.rangeCount
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get rangeCount():Number { return 0; };
		
		/**
		 * Returns a range object representing one of the ranges currently selected.
		 * 
		 * @param	index The zero-based index of the range to return. A negative number or a number greater than or 
		 * equal to rangeCount will result in an error.
		 * @return The range object that will be returned. 
		 * 
		 * @example
		 * <listing>
		 * ranges = [];
		 * sel = window.getSelection();
		 * for(var i = 0; i &lt; sel.rangeCount; i++) {
		 * 	ranges[i] = sel.getRangeAt(i);
		 * }
		 * // Each item in the ranges array is now 
		 * // a range object representing one of the 
		 * // ranges in the current selection</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/getRangeAt MDC - Selection.getRangeAt()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function getRangeAt(index:Number):Range { return null; };
		
		/**
		 * Collapses the current selection to a single point. The document is not modified. If the content is 
		 * focused and editable, the caret will blink there.
		 * 
		 * @param	parentNode The caret location will be within this node. 
		 * @param	offset 
		 * <ul>
		 * <li>0 - Collapses the selection from the anchor to the beginning of parentNode's text.</li>
		 * <li>1 - Collapses the selection from the anchor to the end of parentNode's text.</li></ul>
		 * 
		 * @example
		 * // Place the caret at the beginning of an HTML document's body.
		 * var body = document.getElementsByTagName("body")[0];
		 * window.getSelection().collapse(body,0);
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/collapse MDC - Selection.collapse()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function collapse(parentNode:Node, offset:Number):void { };
		
		/**
		 * Moves the focus of the selection to a specified point.
		 * 
		 * <p>The anchor of the selection does not move. The selection will be from the anchor 
		 * to the new focus regardless of direction.</p>
		 *  
		 * @param	parentNode The node within which the focus will be moved.
		 * @param	offset The offset position within parentNode where the focus will be moved to.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/extend MDC - Selection.extend()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function extend(parentNode:Node, offset:Number):void { };
		
		/**
		 * Moves the focus of the selection to the same point at the anchor.
		 * 
		 * <p>The anchor does not move. If the content is focused and editable, the caret will blink there. </p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/collapseToStart MDC - Selection.collapseToStart()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function collapseToStart():void { };
		
		/**
		 * Moves the anchor of the selection to the same point as the focus.
		 * 
		 * <p>The focus does not move. If the content is focused and editable, the caret will blink there. </p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/collapseToEnd MDC - Selection.collapseToEnd()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function collapseToEnd():void { };
		
		/**
		 * Adds all the children of the specified node to the selection. Previous selection is lost. 
		 * 
		 * @param	parentNode All children of parentNode will be selected. parentNode itself is not 
		 * part of the selection. 
		 * 
		 * @example
		 * footer = document.getElementById("footer");
		 * window.getSelection().selectAllChildren(footer);
		 * // Everything inside the footer is now selected
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/selectAllChildren MDC - Selection.selectAllChildren()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function selectAllChildren(parentNode:Node):void { };
		
		/**
		 * Adds a range to the selection. 
		 * 
		 * @param	range A range object that will be added to the selection. 
		 * 
		 * @example
		 * <listing>
		 * // Select all STRONG elements in an HTML document
		 * var strongs = document.getElementsByTagName("strong");
		 * var s = window.getSelection();
		 * if(s.rangeCount &gt; 0) s.removeAllRanges();
		 * for(var i = 0; i &lt; strongs.length; i++) {
		 *   var range = document.createRange();
		 *   range.selectNode(strongs[i]);
		 *   s.addRange(range);
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/addRange MDC - Selection.addRange()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function addRange(range:Range):void { };
		
		/**
		 * Removes a range from the selection. 
		 * 
		 * @param	range A range object that will be removed to the selection. 
		 * @example
		 * <listing>
		 * // Programmaticaly, more than one range can be selected.  
		 * // This will remove all ranges except the first.
		 * s = window.getSelection();
		 * if(s.rangeCount &gt; 1) {
		 *   for(var i = 1; i &lt; s.rangeCount; i++) {
		 *     s.removeRange(s.getRangeAt(i));
		 *   }
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/removeRange MDC - Selection.removeRange()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function removeRange(range:Range):void { };
		
		/**
		 * Removes all ranges from the selection, leaving the anchorNode and focusNode 
		 * properties equal to null and leaving nothing selected. 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/removeAllRanges MDC - Selection.removeAllRanges()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function removeAllRanges():void { };
		
		/**
		 * Deletes the actual text being represented by a selection object from the document's DOM. 
		 * 
		 * @example
		 * A user selects the (imaginary) text "ve two ea" from "Rabbits have two ears." on a web page. 
		 * The user then clicks a button that executes the JavaScript snippet 
		 * window.getSelection().deleteFromDocument(). The document's text becomes "Rabbits hars." 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/deleteFromDocument MDC - Selection.deleteFromDocument()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function deleteFromDocument():void { };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/selectionLanguageChange MDC - Selection.selectionLanguageChange()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function selectionLanguageChange():void { };
		
		/**
		 * Returns a string currently being represented by the selection object, i.e. the currently selected text. 
		 * 
		 * <p><strong>Note:</strong> In JavaScript, this method is called automatically when a function the selection object is passed 
		 * to requires a string: alert(window.getSelection()) // What is called alert(window.getSelection().toString()) 
		 * // What is actually being effectively called.</p>
		 * 
		 * @return The string representation of selection. 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/toString MDC - Selection.toString()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function toString():DOMString { return null; };
		
		/**
		 * Indicates if the node is part of the selection. 
		 * 
		 * @param	node The node that is being looked for whether it is part of the selection 
		 * @param	partlyContained When true, containsNode returns true when a part of the node is part of the selection. 
		 * When false, containsNode only returns true when the entire node is part of the selection. 
		 * @return If the node is part of the selection.
		 * 
		 * @example
		 * // Check to see if anything inside the body element is selected
		 * alert(window.getSelection().containsNode(document.body, true));
		 * 
		 * @see http://developer.mozilla.org/en/DOM/Selection/containsNode MDC - Selection.containsNode()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function containsNode(node:Node, partlyContained:Boolean):Boolean { return false; };
	}
}