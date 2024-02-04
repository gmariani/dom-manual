package dom.core {
	
	import dom.core.DOMImplementation;
	
	/**
	 * Returned by DOMImplementationSource.getDOMImplementationList() and 
	 * DOMImplementationRegistry.getDOMImplementationList(). Can be iterated with 0-based index.
	 * 
	 * @see http://developer.mozilla.org/En/DOM/DOMImplementationList MDC - DOMImplementationList
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMImplementationList W3C - DOMImplementationList
	 * @see dom.core.DOMImplementationSource#getDOMImplementationList()
	 * 
	 * @playerversion DOMCore 3
	 * @since DOMCore 3
	 */
	public interface DOMImplementationList {
		
		/**
		 * The number of DOMImplementations in the list. 
		 * 
		 * <p>The range of valid child node indices is 0 to length-1  inclusive.</p>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMImplementationList.length MDC - DOMImplementationList.length
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMImplementationList-length W3C - DOMImplementationList.length
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function get length():Number;
		
		/**
		 * Returns the indexth item in the collection.
		 * 
		 * <p>If index is greater than 
		 * or equal to the number of DOMImplementations in the list, this 
		 * returns null. </p>
		 * 
		 * @param	index Index into the collection.
		 * @return The DOMImplementation at the indexth position in the 
		 * DOMImplementationList, or null if that is not a valid index. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMImplementationList.item MDC - DOMImplementationList.item()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMImplementationList-item W3C - DOMImplementationList.item()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function item(index:Number):DOMImplementation;
	}
}