package dom.style.stylesheets {
	
	/**
	 * The StyleSheetList interface provides the abstraction of an ordered collection of style sheets.
	 * 
	 * <p>The items in the StyleSheetList are accessible via an integral index, starting from 0.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheetList W3C - DOM Level 2 Style: StyleSheetList
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class StyleSheetList {
		
		/**
		 * The number of StyleSheets in the list. The range of valid child stylesheet indices is 0 to length-1 inclusive.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.styleSheets  MDC - Document.styleSheets
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheetList-length W3C - DOM Level 2 Style: StyleSheetList.length
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get length():Number { return 0; };
		
		/**
		 * Used to retrieve a style sheet by ordinal index. If index is greater than or equal to the number 
		 * of style sheets in the list, this returns null. 
		 * 
		 * @param	index Index into the collection
		 * @return The style sheet at the index position in the StyleSheetList, or null if that is not a valid index.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.styleSheets  MDC - Document.styleSheets
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheetList-item W3C - DOM Level 2 Style: StyleSheetList.itme()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function item(index:Number):StyleSheet { return null; };
	}
}