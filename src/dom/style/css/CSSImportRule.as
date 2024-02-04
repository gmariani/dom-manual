package dom.style.css {
	
	import dom.core.types.DOMString;
	import dom.style.stylesheets.MediaList;
	
	/**
	 * The CSSImportRule interface represents a &#64;import rule within a CSS style sheet. The &#64;import 
	 * rule is used to import style rules from other style sheets.
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms530768%28VS.85%29.aspx MSDN - &#64;import Rule
	 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSImportRule MDC - cssRule: CSSImportRule
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSImportRule W3C - DOM Level 2 Style: CSSImportRule
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSImportRule extends CSSRule {
		
		/**
		 * The location of the style sheet to be imported. The attribute will not contain the "url(...)" 
		 * specifier around the URI.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSImportRule MDC - cssRule: CSSImportRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSImportRule-href W3C - DOM Level 2 Style: CSSImportRule.href
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get href():DOMString { return null; };
		
		/**
		 * A list of media types for which this style sheet may be used.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSImportRule MDC - cssRule: CSSImportRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSImportRule-media W3C - DOM Level 2 Style: CSSImportRule.media
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get media():MediaList { return null; };
		
		/**
		 * The style sheet referred to by this rule, if it has been loaded. The value of this attribute is 
		 * null if the style sheet has not yet been loaded or if it will not be loaded.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSImportRule MDC - cssRule: CSSImportRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSImportRule-styleSheet W3C - DOM Level 2 Style: CSSImportRule.styleSheet
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get styleSheet():CSSStyleSheet { return null; };
	}
}