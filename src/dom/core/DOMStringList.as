package dom.core {
	
	import dom.core.types.DOMString;
	
	/**
	 * The DOMStringList interface provides the abstraction of an ordered 
	 * collection of DOMString values, without defining or constraining how 
	 * this collection is implemented. The items in the DOMStringList are 
	 * accessible via an integral index, starting from 0. 
	 * 
	 * <p><strong>Note (Mozilla):</strong> This type is presently not available to Mozilla as DOMConfiguration is not implemented.</p>
	 * 
	 * @see http://developer.mozilla.org/En/DOM/DOMStringList MDC - DOMStringList
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMStringList DOMStringList
	 * 
	 * @playerversion DOMCore 3
	 * @since DOMCore 3
	 */
	public interface DOMStringList {
		
		/**
		 * The number of DOMStrings in the list. The range of valid child 
		 * node indices is 0 to length-1  inclusive.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMStringList.length MDC - DOMStringList.length
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMStringList-length W3C - DOMStringList.length
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function get length():Number;
		
		/**
		 * The column number this locator is pointing to, or -1 if there is no 
		 * column number available.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMStringList.contains MDC - DOMStringList.contains()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMStringList-contains W3C - DOMStringList.contains()
		 * 
		 * @param	str The string to look for. 
		 * @return If the string has been found.
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function contains(str:DOMString):Boolean;
		
		/**
		 * Returns the index of the item in the collection. If index is greater than 
		 * or equal to the number of DOMStrings in the list, this returns null. 
		 * 
		 * @param	index Index into the collection.
		 * @return The DOMString at the index position in the DOMStringList, or null 
		 * if that is not a valid index.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMStringList.item MDC - DOMStringList.item()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMStringList-item W3C - DOMStringList.item()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function item(index:Number):DOMString;
	}
}