package dom.style.css {
	
	import dom.core.types.DOMString;
	
	/**
	 * The CSSCharsetRule interface represents a &#64;charset rule in a CSS style sheet.
	 * 
	 * <p>The value of the 
	 * encoding attribute does not affect the encoding of text data in the DOM objects; this encoding 
	 * is always UTF-16. After a stylesheet is loaded, the value of the encoding attribute is the value 
	 * found in the &#64;charset rule. If there was no &#64;charset in the original document, then no 
	 * CSSCharsetRule is created. The value of the encoding attribute may also be used as a hint for 
	 * the encoding used on serialization of the style sheet.</p>
	 * 
	 * <p>The value of the &#64;charset rule (and therefore of the CSSCharsetRule) may not correspond to the 
	 * encoding the document actually came in; character encoding information e.g. in an HTTP header, 
	 * has priority but this is not reflected in the CSSCharsetRule.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms530746%28VS.85%29.aspx MSDN - &#64;charset Rule
	 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSCharsetRule MDC - cssRule: CSSCharsetRule
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSCharsetRule W3C - DOM Level 2 Style: CSSCharsetRule
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSCharsetRule extends CSSRule {
		
		/**
		 * The encoding information used in this &#64;charset rule.
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the specified CSS string 
		 * value has a syntax error and is unparsable.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this 
		 * declaration is readonly or a property is readonly.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSCharsetRule MDC - cssRule: CSSCharsetRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSCharsetRule-encoding W3C - DOM Level 2 Style: CSSCharsetRule.encoding
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get encoding():DOMString { return null; };
	}
}