package dom.style.css {
	
	import dom.core.types.DOMString;
	import dom.style.stylesheets.StyleSheet;
	
	/**
	 * The CSSStyleSheet interface is a concrete interface used to represent a CSS style 
	 * sheet i.e., a style sheet whose content type is "text/css".
	 * 
	 * <p>All browser compatibility information was obtained via Quirksmode.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms535871%28VS.85%29.aspx MSDN: StyleSheet
	 * @see http://developer.mozilla.org/en/DOM/stylesheet MDC - stylesheet
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleSheet W3C - DOM Level 2 Style: CSSStyleSheet
	 * 
	 * @playerversion DOMStyle 2
	 */
	public class CSSStyleSheet extends StyleSheet {
		
		/**
		 * The list of all CSS rules contained within the style sheet. This includes both rule sets and at-rules.
		 * 
		 * @example
		 * <listing>
		 * // get the first style sheet’s first rule
		 * first_rule = document.styleSheets[0].cssRules[0];</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/stylesheet.cssRules MDC - stylesheet: cssRules Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleSheet W3C - DOM Level 2 Style: CSSStyleSheet
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access Quirksmode: Accessing style sheets
		 * @see #rules
		 * 
		 * @playerversion DOMStyle 2
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0b
		 */
		public function get cssRules():CSSRuleList { return null; };
		
		/**
		 * Retrieves a collection of rules defined in a style sheet.
		 * 
		 * <p><strong>Note (IE):</strong> IE doesn't count &#64;imports as rules, but splits up selectors like p#test, ul  into two rules.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 	&lt;head&gt;
		 * 		&lt;script&gt;
		 * 			function ruleColor(ruleIndex) {
		 * 				alert("The color of rule " + ruleIndex + " is " +
		 * 				document.styleSheets[0].rules.item(ruleIndex).style.color + ".");
		 * 			}
		 * 		&lt;/script&gt;
		 * 
		 * 		&lt;style&gt;
		 * 			.rule0 {color:"red"}
		 * 			.rule1 {color:"blue"} 
		 * 		&lt;/style&gt;
		 * 	&lt;/head&gt;
		 * 
		 * 	&lt;body&gt;
		 * 		&lt;p class="rule0" id="oRule0Span"&gt;
		 * 			Rule 0 is applied to this line.
		 * 		&lt;/p&gt;
		 * 		&lt;p class="rule1" id="oRule1Span"&gt;
		 * 			Rule 1 is applied to this line.
		 * 		&lt;/p&gt;
		 * 
		 * 		&lt;button onclick="ruleColor(0)"&gt;Color of Rule 0&lt;/button&gt; 
		 * 
		 * 		&lt;button onclick="ruleColor(1)"&gt;Color of Rule 1&lt;/button&gt;
		 * 
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms531199%28VS.85%29.aspx MSDN: rules Property
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access Quirksmode: Accessing style sheets
		 * @see #cssRules
		 * 
		 * @playerversion Non-Standard 0
		 * 
		 * @productversion IE 5.5_incorrect
		 * @productversion IE 6.0_incorrect
		 * @productversion IE 7.0_incorrect
		 * @productversion IE 8.0_as_IE7_incorrect
		 * @productversion IE 8.0_as_IE8_incorrect
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5_no
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		public function get rules():CSSRuleList { return null; };
		
		/**
		 * If this style sheet comes from an &#64;import rule, the ownerRule attribute will contain 
		 * the CSSImportRule. In that case, the ownerNode attribute in the StyleSheet interface 
		 * will be null. If the style sheet comes from an element or a processing instruction, 
		 * the ownerRule attribute will be null and the ownerNode attribute will contain the Node.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/stylesheet.ownerRule MDC - stylesheet: ownerRule Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleSheet W3C - DOM Level 2 Style: CSSStyleSheet
		 * 
		 * @playerversion DOMStyle 2
		 */
		public function get ownerRule():CSSRule { return null; };
		
		/**
		 * Used to delete a rule from the style sheet. 
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified index does not 
		 * correspond to a rule in the style sheet's rule list.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this style sheet is readonly.
		 * 
		 * @param	index The index within the style sheet's rule list of the rule to remove.
		 * 
		 * @example
		 * <listing>myStyles.deleteRule(0);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/stylesheet.deleteRule MDC - stylesheet: deleteRule Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleSheet W3C - DOM Level 2 Style: CSSStyleSheet
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access Quirksmode: Accessing style sheets
		 * 
		 * @playerversion DOMStyle 2
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0b
		 */
		public function deleteRule(index:Number):void { };
		
		/**
		 * Used to insert a new rule into the style sheet. The new rule now becomes part of the cascade. 
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if the rule cannot be inserted at 
		 * the specified index e.g. if an &#64;import rule is inserted after a standard rule set or other at-rule.
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified index is not a valid insertion point.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this style sheet is readonly.
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the specified rule has a syntax error and is unparsable.
		 * 
		 * @param	rule The parsable text representing the rule. For rule sets this contains both the selector 
		 * and the style declaration. For at-rules, this specifies both the at-identifier and the rule content.
		 * @param	index The index within the style sheet's rule list of the rule before which to insert the 
		 * specified rule. If the specified index is equal to the length of the style sheet's rule collection, 
		 * the rule will be added to the end of the style sheet.
		 * @return The index within the style sheet's rule collection of the newly inserted rule.
		 * 
		 * @example
		 * <listing>
		 * // push a new rule onto the top of my stylesheet
		 * myStyle.insertRule("#blanc { color: white }", 0);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/stylesheet.insertRule MDC - stylesheet: insertRule Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleSheet W3C - DOM Level 2 Style: CSSStyleSheet
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access Quirksmode: Accessing style sheets
		 * 
		 * @playerversion DOMStyle 2
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0b
		 */
		public function insertRule(rule:DOMString, index:Number):Number { return 0; };
		
		/**
		 * Creates a new rule for a style sheet.
		 * 
		 * <p><strong>Note (IE):</strong> You can add up to 4095 style rules with the addRule method. After that, the method returns an "Invalid Argument" exception.</p>
		 * <p><strong>Note (IE):</strong> You can apply rules to a disabled styleSheet, but they do not apply to the document until you enable the styleSheet.</p>
		 * 
		 * @param	selector Specifies the selector for the new rule. Single contextual selectors are valid. For example, 
		 * "div p b" is a valid contextual selector.
		 * @param	style Specifies the style assignments for this style rule. This style takes the same form as an inline 
		 * style specification. For example, "color:blue" is a valid style parameter.
		 * @param 	index (Optional) Specifies the zero-based position in the rules collection where the new style rule should be placed.
		 * @default The page object is added to the end of the collection.
		 * @return Reserved. Always returns -1.
		 * 
		 * @example
		 * <listing>
		 * &lt;style&gt;
		 * &lt;/style&gt;
		 * 
		 * &lt;div&gt;
		 * 	Internet Explorer makes &lt;b&gt;HTML&lt;/b&gt; dynamic.
		 * &lt;/div&gt;
		 * 
		 * &lt;script&gt;
		 * 	var new_rule;
		 * 	new_rule = document.styleSheets[0].addRule("div b", "color:blue", 0);
		 * &lt;/script&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa358796%28VS.85%29.aspx MSDN: addRule Method
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access Quirksmode: Accessing style sheets
		 * @see #removeRule()
		 * @see #rules
		 * 
		 * @playerversion Non-Standard 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5_no
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		public function addRule(selector:DOMString, style:DOMString, index:Number = -1):Number { return 0; };
		
		/**
		 * Adds a style sheet to the imports collection for the specified style sheet.
		 * 
		 * <p><strong>Note (IE):</strong> Whether a CSS import is made in a CSS file itself (by using &#64;import) or dynamically by 
		 * JavaScript, the limit per stylesheet is 31. Beyond that number, all other imports in that stylesheet will be 
		 * ignored. Additionally, when trying to add an import by JavaScript, the browser will return an "Invalid argument" error.</p>
		 * 
		 * @param	url Specifies the location of the source file for the style sheet.
		 * @param	indexRequest (Optional) Specifies the requested position for the style sheet in the collection. If this value is not given, the style sheet is added to the end of the collection.
		 * @return Returns a a zero-based index value indicating the position of the imported style sheet in the imports collection. 
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms531193%28VS.85%29.aspx MSDN: addImport Method
		 * 
		 * @playerversion Non-Standard 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0b_unknown
		 */
		public function addImport(url:DOMString, indexRequest:Number):Number { return 0; };
		
		/**
		 * Removes the imported style sheet from the imports collection based on ordinal position. 
		 * 
		 * @param	index Indicates which imported style sheet to remove.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa358799%28VS.85%29.aspx MSDN: removeImport Method
		 * 
		 * @playerversion Non-Standard 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0b_unknown
		 */
		public function removeImport(index:Number):void { };
		
		/**
		 * Creates a new page object for a style sheet.
		 * 
		 * <p><strong>Note (IE):</strong> Each page object represents a style sheet that corresponds to a &#64;page rule in the document.</p>
		 * 
		 * @param	selector Specifies the selector for the new page object.
		 * @param	style Specifies the style assignments for this page object. This style takes the same form as an inline style specification. For example, "color:blue" is a valid style parameter.
		 * @param	index Specifies the zero-based position in the pages collection where the new page object should be placed.
		 * @default The page object is added to the end of the collection.
		 * @return Reserved. Always returns -1.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535928%28VS.85%29.aspx MSDN: addPageRule Method
		 * 
		 * @playerversion Non-Standard 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0b_unknown
		 */
		public function addPageRule(selector:DOMString, style:DOMString, index:Number = -1):Number { return 0; };
		
		/**
		 * Deletes an existing style rule for the styleSheet object, and adjusts the index of the rules collection accordingly. 
		 * 
		 * <p><strong>Note (IE):</strong> The page does not automatically reflow when the rule is removed. To see the change, you 
		 * must reflow the page. You can reflow the objects affected using a number of methods. For example, you can reflow 
		 * the style change only on affected text by setting the text equal to itself. Alternately, you can reload the entire 
		 * page using the reload method. When you use the refresh method on a table, its content is reflowed. </p>
		 * 
		 * @param	index (Optional) Specifies the index value of the rule to be deleted from the style sheet. If an index is not provided, the first rule in the rules collection is removed.
		 * 
		 * @example
		 * This example uses the removeRule method to delete a rule from the rules collection, which causes the text to reflow according to the new rules.
		 * <listing>
		 * &lt;STYLE&gt;
		 * 	P {color:green}
		 * &lt;/STYLE&gt;
		 * ...
		 * &lt;SCRIPT&gt;
		 * 	function removeTheRule() {
		 * 		// Style sheets and rules are zero-based collections; therefore,
		 * 		// the first item is item 0 in the collection.
		 * 		var iSheets = document.styleSheets.length;
		 * 		var iRules = document.styleSheets[iSheets-1].rules.length;
		 * 		// make sure there is a rule to delete
		 * 		if (1 &lt; iRules) {            
		 * 			document.styleSheets[iSheets-1].removeRule(1);
		 * 			// Force the page to render the change.
		 * 			oEffectRules.innerHTML=oEffectRules.innerHTML;
		 * 		}
		 * 	}
		 * &lt;/SCRIPT&gt;
		 * ...
		 * &lt;P ID=oEffectRules&gt;This text has the new style applied to it.&lt;/P&gt;
		 * ...
		 * &lt;BUTTON onclick="removeTheRule()"&gt;Remove the new rule.&lt;/BUTTON&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms531195%28VS.85%29.aspx MSDN: removeRule Method
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access Quirksmode: Accessing style sheets
		 * @see #addRule()
		 * @see #rules
		 * 
		 * @playerversion Non-Standard 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5_no
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		public function removeRule(index:Number):void { };
	}
}