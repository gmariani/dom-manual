package dom.style.css {
	
	import dom.core.types.DOMString;
	
	/**
	 * The CSSRule interface is the abstract base interface for any type of CSS statement. 
	 * 
	 * <p>This includes both rule sets and at-rules. An implementation is expected to preserve 
	 * all rules specified in a CSS style sheet, even if the rule is not recognized by the 
	 * parser. Unrecognized rules are represented using the CSSUnknownRule interface.</p>
	 * 
	 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSRule MDC - CSSRule
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule W3C - DOM Level 2 Style: CSSRule
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSRule {
		
		/**
		 * The rule is a CSSUnknownRule.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule W3C - DOM Level 2 Style: CSSRule
		 * @see dom.style.css.CSSUnknownRule
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const UNKNOWN_RULE:Number = 0;
		
		/**
		 * The rule is a CSSStyleRule.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule W3C - DOM Level 2 Style: CSSRule
		 * @see dom.style.css.CSSStyleRule
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const STYLE_RULE:Number = 1;
		
		/**
		 * The rule is a CSSCharsetRule.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule W3C - DOM Level 2 Style: CSSRule
		 * @see dom.style.css.CSSCharsetRule
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CHARSET_RULE:Number = 2;
		
		/**
		 * The rule is a CSSImportRule.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule W3C - DOM Level 2 Style: CSSRule
		 * @see dom.style.css.CSSImportRule
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const IMPORT_RULE:Number = 3;
		
		/**
		 * The rule is a CSSMediaRule.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule W3C - DOM Level 2 Style: CSSRule
		 * @see dom.style.css.CSSMediaRule
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const MEDIA_RULE:Number = 4;
		
		/**
		 * The rule is a CSSFontFaceRule.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule W3C - DOM Level 2 Style: CSSRule
		 * @see dom.style.css.CSSFontFaceRule
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const FONT_FACE_RULE:Number = 5;
		
		/**
		 * The rule is a CSSPageRule.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule W3C - DOM Level 2 Style: CSSRule
		 * @see dom.style.css.CSSPageRule
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const PAGE_RULE:Number = 6;
		
		/**
		 * The parsable textual representation of the rule. This reflects the current state of the 
		 * rule and not its initial value.
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the specified CSS string 
		 * value has a syntax error and is unparsable.
		 * 
		 * @throws dom.core.DOMException INVALID_MODIFICATION_ERR: Raised if the specified CSS string 
		 * value represents a different type of rule than the current one.
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if the rule cannot be inserted 
		 * at this point in the style sheet.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if the rule is readonly.
		 * 
		 * @example
		 * <listing>
		 * if ( myRule.cssText.indexOf("background-color") != -1 ) {
		 * 	bgRule = myRule;
		 * } </listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule.cssText MDC - cssRule.cssText
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule-cssText W3C - DOM Level 2 Style: CSSRule.cssText
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get cssText():DOMString { return null; };
		
		/**
		 * If this rule is contained inside another rule (e.g. a style rule inside an &#64;media block), 
		 * this is the containing rule. If this rule is not nested inside any other rules, this returns null.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule.parentRule MDC - cssRule.parentRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule-parentRule W3C - DOM Level 2 Style: CSSRule.parentRule
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get parentRule():CSSRule { return null; };
		
		/**
		 * The style sheet that contains this rule.
		 * 
		 * @example
		 * <listing>
		 * if ( bgRule.parentStyleSheet != mySheet ) {
		 * 	// alien style rule!
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule.parentStyleSheet MDC - cssRule.parentStyleSheet
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule-sheet W3C - DOM Level 2 Style: CSSRule.parentStyleSheet
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get parentStyleSheet():CSSStyleSheet { return null; };
		
		/**
		 * The type of the rule, as defined above. 
		 * 
		 * <p>The expectation is that binding-specific casting 
		 * methods can be used to cast down from an instance of the CSSRule interface to the 
		 * specific derived interface implied by the type.</p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule.type MDC - cssRule.type
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSRule-type W3C - DOM Level 2 Style: CSSRule.type
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get type():Number { return 0; };
	}
}