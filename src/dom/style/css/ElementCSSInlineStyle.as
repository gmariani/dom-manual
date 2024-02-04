package dom.style.css {
	
	/**
	 * Inline style information attached to elements is exposed through the style attribute. 
	 * 
	 * <p>This represents 
	 * the contents of the STYLE attribute for HTML elements (or elements in other schemas or DTDs which use 
	 * the STYLE attribute in the same way). The expectation is that an instance of the ElementCSSInlineStyle 
	 * interface can be obtained by using binding-specific casting methods on an instance of the Element 
	 * interface when the element supports inline CSS style informations.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-ElementCSSInlineStyle W3C - DOM Level 2 Style: ElementCSSInlineStyle
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public interface ElementCSSInlineStyle {
		
		/**
		 * Returns an object that represents the element's style attribute.
		 * 
		 * <p>Note: Since the style property has the same (and highest) priority 
		 * in the CSS cascade as an inline style declaration via the style 
		 * attribute, it is useful for setting style on one specific element.</p>
		 * 
		 * <p>Note: However, it is not useful for learning about the element's 
		 * style in general, since it represents only the CSS declarations set 
		 * in the element's inline style attribute, not those that come from 
		 * style rules elsewhere, such as style rules in the &lt;head&gt; section, or
		 * external style sheets.</p>
		 * 
		 * <p><strong>Note:</strong> To get the values of all CSS properties for an element you 
		 * should use window.getComputedStyle instead.</p>
		 * 
		 * @example
		 * <listing>
		 * var div = document.getElementById("div1");
		 * div.style.marginTop = ".25in";</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534651%28VS.85%29.aspx MSDN - STYLE Attribute
		 * @see http://developer.mozilla.org/en/DOM/element.style MDC - element.style
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-ElementCSSInlineStyle-style W3C - DOM Level 2 Style: ElementCSSInlineStyle.style
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get style():CSSStyleDeclaration;
	}
}