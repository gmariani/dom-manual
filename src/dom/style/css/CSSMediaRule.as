package dom.style.css {
	
	import dom.core.types.DOMString;
	import dom.style.stylesheets.MediaList;
	
	/**
	 * The CSSMediaRule interface represents a &#64;media rule in a CSS style sheet. A &#64;media 
	 * rule can be used to delimit style rules for specific media types.
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms530813%28VS.85%29.aspx MSDN - &#64;media Rule
	 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSMediaRule MDC - cssRule: CSSMediaRule
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSMediaRule W3C - DOM Level 2 Style: CSSMediaRule
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSMediaRule extends CSSRule {
		
		/**
		 * A list of all CSS rules contained within the media block.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSMediaRule MDC - cssRule: CSSMediaRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSMediaRule-cssRules W3C - DOM Level 2 Style: CSSMediaRule.cssRules
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get cssRules():CSSRuleList { return null; };
		
		/**
		 * A list of media types for this rule.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSMediaRule MDC - cssRule: CSSMediaRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSMediaRule-mediaTypes W3C - DOM Level 2 Style: CSSMediaRule.media
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/media.html#media-types W3C - Recognized media types
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get media():MediaList { return null; };
		
		/**
		 * Used to delete a rule from the media block. 
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified index does not correspond 
		 * to a rule in the media rule list.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this media rule is readonly.
		 * 
		 * @param	index The index within the media block's rule collection of the rule to remove.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSMediaRule MDC - cssRule: CSSMediaRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSMediaRule-deleteRule W3C - DOM Level 2 Style: CSSMediaRule.deleteRule()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function deleteRule(index:Number):void { };
		
		/**
		 * Used to insert a new rule into the media block.
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if the rule cannot be inserted at the specified 
		 * index, e.g., if an &#64;import rule is inserted after a standard rule set or other at-rule.
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified index is not a valid insertion point.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this media rule is readonly.
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the specified rule has a syntax error and is unparsable.
		 * 
		 * @param	rule The parsable text representing the rule. For rule sets this contains both 
		 * the selector and the style declaration. For at-rules, this specifies both the at-identifier 
		 * and the rule content.
		 * @param	index The index within the media block's rule collection of the rule before which 
		 * to insert the specified rule. If the specified index is equal to the length of the media 
		 * blocks's rule collection, the rule will be added to the end of the media block.
		 * @return The index within the media block's rule collection of the newly inserted rule.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/cssRule#CSSMediaRule MDC - cssRule: CSSMediaRule
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSMediaRule-insertRule W3C - DOM Level 2 Style: CSSMediaRule.insertRule()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function insertRule(rule:DOMString, index:Number):Number { return 0; };
	}
}