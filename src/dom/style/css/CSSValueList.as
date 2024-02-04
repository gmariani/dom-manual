package dom.style.css {
	
	/**
	 * The CSSValueList interface provides the abstraction of an ordered collection of CSS values.
	 * 
	 * <p>Some properties allow an empty list into their syntax. In that case, these properties take the 
	 * none identifier. So, an empty list means that the property has the value none.</p>
	 * 
	 * <p>The items in the CSSValueList are accessible via an integral index, starting from 0.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSValueList W3C - DOM Level 2 Style: CSSValueList
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSValueList extends CSSValue {
		
		/**
		 * The number of CSSValues in the list. The range of valid values of the indices is 0 to length-1 inclusive.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSValueList-length W3C - DOM Level 2 Style: CSSValueList.length
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get length():Number { return 0; };
		
		/**
		 * Used to retrieve a CSSValue by ordinal index. The order in this collection represents the order of the values 
		 * in the CSS style property. If index is greater than or equal to the number of values in the list, this returns null. 
		 * 
		 * @param	index Index into the collection.
		 * @return The CSSValue at the index position in the CSSValueList, or null if that is not a valid index.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSValueList-item W3C - DOM Level 2 Style: CSSValueList.item()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function item(index:Number):CSSValue { return null; };
	}
}