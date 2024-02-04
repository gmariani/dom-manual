package dom.style.css {
	
	/**
	 * The CSSFontFaceRule interface represents a &#64;font-face rule in a CSS style sheet. The 
	 * &#64;font-face rule is used to hold a set of font descriptions.
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms530757%28VS.85%29.aspx MSDN - &#64;font-face Rule
	 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSFontFaceRule MDC - cssRule: CSSFontFaceRule
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSFontFaceRule W3C - DOM Level 2 Style: CSSFontFaceRule
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSFontFaceRule extends CSSRule {
		
		/**
		 * The declaration-block of this rule.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSFontFaceRule MDC - cssRule: CSSFontFaceRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSFontFaceRule-style W3C - DOM Level 2 Style: CSSFontFaceRule.style
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get style():CSSStyleDeclaration { return null; };
	}
}