package dom.style.css {
	
	/**
	 * The CSSRuleList interface provides the abstraction of an ordered collection of CSS rules.
	 * 
	 * <p>The items in the CSSRuleList are accessible via an integral index, starting from 0.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/dd347050%28VS.85%29.aspx MSDN - CSSRuleList
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRuleList W3C - DOM Level 2 Style: CSSRuleList
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSRuleList {
		
		/**
		 * The number of CSSRules in the list. The range of valid child rule indices is 0 to length-1 inclusive.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc304101%28VS.85%29.aspx MSDN - length Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRuleList-length W3C - DOM Level 2 Style: CSSRuleList.length
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get length():Number { return 0; };
		
		/**
		 * Used to retrieve a CSS rule by ordinal index. 
		 * 
		 * <p>The order in this collection represents the order of the 
		 * rules in the CSS style sheet. If index is greater than or equal to the number of rules in the list, 
		 * this returns null.</p>
		 * 
		 * @param	index Index into the collection
		 * @return The style rule at the index position in the CSSRuleList, or null if that is not a valid index.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc304123%28VS.85%29.aspx MSDN - item Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRuleList-item W3C - DOM Level 2 Style: CSSRuleList.item()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function item(index:Number):CSSRule { return null; };
	}
}