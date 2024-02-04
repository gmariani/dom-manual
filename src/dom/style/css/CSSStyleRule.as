package dom.style.css {
	
	import dom.core.types.DOMString;
	
	/**
	 * The CSSStyleRule interface represents a single rule set in a CSS style sheet.
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/dd347053%28VS.85%29.aspx MSDN - CSSStyleRule
	 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSStyleRule MDC - CSSStyleRule
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleRule W3C - DOM Level 2 Style: CSSStyleRule
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSStyleRule extends CSSRule {
		
		/**
		 * The textual representation of the selector for the rule set.
		 * 
		 * <p><strong>Note:</strong> The implementation may have stripped out insignificant whitespace while parsing the selector. </p>
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the specified CSS string value 
		 * has a syntax error and is unparsable.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this rule 
		 * is readonly.
		 * 
		 * @example
		 * <listing>
		 * // for cssrule: body { background-color: darkblue; }
		 * cssrule = document.styleSheets[1];
		 * !!TODO!! 
		 * selector = cssrule.selectorText; 
		 * // selector is now "body"</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534626%28VS.85%29.aspx MSDN - selectorText Property
		 * @see http://developer.mozilla.org/en/DOM/cssRule.selectorText MDC - cssRule.selectorText
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleRule-selectorText W3C - DOM Level 2 Style: CSSStyleRule.selectorText
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get selectorText():DOMString { return null; };
		
		/**
		 * The declaration-block of this rule set.
		 * 
		 * <p><strong>Note:</strong> The declaration block is that part of the style rule that appears within the braces 
		 * and that actually provides the style definitions (for the selector, the part that comes before the braces).</p>
		 * 
		 * @example
		 * <listing>
		 * function stilo() {
		 * 	alert(document.styleSheets[0].cssRules[0].style.cssText);
		 * }
		 * // displays "background-color: gray;"</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534651%28VS.85%29.aspx MSDN - STYLE Attribute
		 * @see http://developer.mozilla.org/en/DOM/cssRule.style MDC - cssRule.style
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleRule-style W3C - DOM Level 2 Style: CSSStyleRule.style
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get style():CSSStyleDeclaration { return null; };
		
		/**
		 * Retrieves whether the rule or style sheet is defined on the page or is imported.
		 * 
		 * <p><strong>Note (IE):</strong> You cannot modify style sheets obtained through a link object or the &#64;import rule while the designMode property is enabled.</p>
		 * 
		 * @default false. Rule or style sheet is obtained through a link object or the &#64;import rule.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534356%28VS.85%29.aspx MSDN - readOnly Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get readOnly():Boolean { return false; };
	}
}