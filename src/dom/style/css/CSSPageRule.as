package dom.style.css {
	
	import dom.core.types.DOMString;
	
	/**
	 * The CSSPageRule interface represents a &#64;page rule within a CSS style sheet. The &#64;page rule is used to 
	 * specify the dimensions, orientation, margins, etc. of a page box for paged media.
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms530841%28VS.85%29.aspx MSDN - &#64;page Rule
	 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSPageRule MDC - cssRule: CSSPageRule
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPageRule W3C - DOM Level 2 Style: CSSPageRule
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSPageRule extends CSSRule {
		
		/**
		 * The parsable textual representation of the page selector for the rule.
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the specified CSS string 
		 * value has a syntax error and is unparsable.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this rule is readonly.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSPageRule MDC - cssRule: CSSPageRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPageRule-name W3C - DOM Level 2 Style: CSSPageRule.selectorText
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get selectorText():DOMString { return null; };
		
		/**
		 * The declaration-block of this rule.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSPageRule MDC - cssRule: CSSPageRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPageRule-style W3C - DOM Level 2 Style: CSSPageRule.style
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get style():CSSStyleDeclaration { return null; };
	}
}