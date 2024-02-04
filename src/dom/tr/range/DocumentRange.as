package dom.tr.range {
	
	/**
	 * Contains a method to create a range object.
	 * 
	 * @see http://developer.mozilla.org/En/DOM/Document MDC - Document
	 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level-2-DocumentRange-idl W3C - DOM Level 2 Range: DocumentRange
	 * 
	 * @playerversion DOMTR 2
	 * @since DOMCore 2
	 */
	public interface DocumentRange {
		
		/**
		 * This interface can be obtained from the object implementing the Document interface using binding-specific 
		 * casting methods. 
		 * 
		 * @return The initial state of the Range returned from this method is such that both of its boundary-points 
		 * are positioned at the beginning of the corresponding Document, before any content. The Range returned can 
		 * only be used to select content associated with this Document, or with DocumentFragments and Attrs for which 
		 * this Document is the ownerDocument.
		 * 
		 * @example
		 * <listing>
		 * var range = document.createRange();
		 * range.setStart(startNode, startOffset);
		 * range.setEnd(endNode, endOffset);</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536394%28VS.85%29.aspx  MSDN: createRange Method
		 * @see http://developer.mozilla.org/en/DOM/document.createRange  MDC - Document: createRange Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level-2-DocumentRange-idl W3C - DOM Level 2 Range: DocumentRange
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		function createRange():Range;
	}
}