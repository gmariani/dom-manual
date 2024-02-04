package dom.style.stylesheets {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * The StyleSheet interface is the abstract base interface for any type of style sheet. It represents 
	 * a single style sheet associated with a structured document. In HTML, the StyleSheet interface 
	 * represents either an external style sheet, included via the HTML LINK element, or an inline STYLE 
	 * element. In XML, this interface represents an external style sheet, included via a style sheet 
	 * processing instruction.
	 * 
	 * <p>All browser compatibility information was obtained via Quirksmode.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms535871%28VS.85%29.aspx MSDN: StyleSheet
	 * @see http://developer.mozilla.org/en/DOM/stylesheet MDC - stylesheet
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheet W3C - DOM Level 2 Style: StyleSheet
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class StyleSheet {
		
		/**
		 * This specifies the style sheet language for this style sheet. The style sheet language is 
		 * specified as a content type. The content type is often specified in the ownerNode.
		 * 
		 * @example
		 * <listing>ss.type = "text/css";</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534699%28VS.85%29.aspx MSDN: type Property
		 * @see http://developer.mozilla.org/en/DOM/stylesheet.type MDC - stylesheet: type Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheet W3C - DOM Level 2 Style: StyleSheet
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get type():DOMString { return null; };
		
		/**
		 * This property indicates whether the current stylesheet is applied or not.
		 * 
		 * @example
		 * <listing>
		 * // if the stylesheet is disabled... 
		 * if (stylesheet.disabled) {
		 * 	// apply style in-line 
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533732%28VS.85%29.aspx MSDN: disabled Property
		 * @see http://developer.mozilla.org/en/DOM/stylesheet.disabled MDC - stylesheet: disabled Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheet W3C - DOM Level 2 Style: StyleSheet
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access Quirksmode: Accessing style sheets
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
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
		public function get disabled():Boolean { return false; };
		
		/**
		 * The node that associates this style sheet with the document. For HTML, this may be the corresponding 
		 * LINK or STYLE element. For XML, it may be the linking processing instruction. For style sheets that 
		 * are included by other style sheets, the value of this attribute is null.
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 	&lt;head&gt;
		 * 		&lt;link rel="StyleSheet" href="example.css" type="text/css" /&gt;
		 * 		&lt;script&gt;
		 * 			function stilo() {
		 * 				alert(document.styleSheets[0].ownerNode);
		 * 			}
		 * 		&lt;/script&gt; 
		 * 	&lt;/head&gt;
		 * 
		 * 	&lt;body&gt; 
		 * 		&lt;div class="thunder"&gt;Thunder&lt;/div&gt;
		 * 
		 * 		&lt;button onclick="sref()"&gt;ss&lt;/button&gt;
		 * 	&lt;/body&gt; 
		 * 	// displays "object HTMLLinkElement"
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/stylesheet.ownerNode MDC - stylesheet: ownerNode Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheet W3C - DOM Level 2 Style: StyleSheet
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access Quirksmode: Accessing style sheets
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
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
		public function get ownerNode():Node { return null; };
		
		/**
		 * For style sheet languages that support the concept of style sheet inclusion, this attribute represents 
		 * the including style sheet, if one exists. If the style sheet is a top-level style sheet, or the style 
		 * sheet language does not support inclusion, the value of this attribute is null.
		 * 
		 * @example
		 * <listing>
		 * // find the top level stylesheet
		 * if (stylesheet.parentStyleSheet) {
		 * 	sheet = stylesheet.parentStyleSheet;
		 * } else {
		 * 	sheet = stylesheet;
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534329%28VS.85%29.aspx MSDN: parentStyleSheet Property
		 * @see http://developer.mozilla.org/en/DOM/stylesheet.parentStyleSheet MDC - stylesheet: parentStyleSheet Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheet W3C - DOM Level 2 Style: StyleSheet
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access Quirksmode: Accessing style sheets
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
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
		public function get parentStyleSheet():StyleSheet { return null; };
		
		/**
		 * If the style sheet is a linked style sheet, the value of its attribute is its location. For inline 
		 * style sheets, the value of this attribute is null.
		 * 
		 * @example
		 * <listing>
		 * // on a local machine: 
		 * &lt;html&gt; 
		 * 	&lt;head&gt; 
		 * 		&lt;link rel="StyleSheet" href="example.css" type="text/css" /&gt; 
		 * 		&lt;script&gt; 
		 * 			function sref() { 
		 * 				alert(document.styleSheets[0].href); 
		 * 			}
		 * 		&lt;/script&gt; 
		 * 	&lt;/head&gt; 
		 * 	&lt;body&gt; 
		 * 		&lt;div class="thunder"&gt;Thunder&lt;/div&gt;
		 * 
		 * 		&lt;button onclick="sref()"&gt;ss&lt;/button&gt;
		 * 	&lt;/body&gt; 
		 * &lt;/html&gt;
		 * // returns "file:////C:/Windows/Desktop/example.css</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533860%28VS.85%29.aspx MSDN: href Property
		 * @see http://developer.mozilla.org/en/DOM/stylesheet.href MDC - stylesheet: href Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheet W3C - DOM Level 2 Style: StyleSheet
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access Quirksmode: Accessing style sheets
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
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
		public function get href():DOMString { return null; };
		
		/**
		 * The advisory title.
		 * 
		 * <p><strong>Note:</strong> The title is often specified in the ownerNode.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534682%28VS.85%29.aspx MSDN: title Property
		 * @see http://developer.mozilla.org/en/DOM/stylesheet.title MDC - stylesheet: title Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheet W3C - DOM Level 2 Style: StyleSheet
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get title():DOMString { return null; };
		
		/**
		 * Specifies the intended destination medium for style information. 
		 * 
		 * <strong>DOM 1 Spec</strong>
		 * <p>A string describing a single medium or a comma-separated list.</p>
		 * 
		 * <strong>DOM Level 2 Style Spec</strong>
		 * <p>The intended destination media for style information. The media is often specified in the ownerNode. 
		 * If no media has been specified, the MediaList will be empty.</p>
		 * 
		 * <p><strong>Note:</strong> According to DOM Level 2 Style specification, the Media property is supposed to be Read-Only and return an 
		 * instance of the MediaList object. Most browsers handle this property as it was specified in DOM Level 1.</p>
		 * 
		 * <p><strong>Note:</strong> Acceptable values are as listed:</p>
		 * <ul>
		 * 	<li>screen - Intended for non-paged computer screens.</li>
		 * 	<li>tty - Intended for media using a fixed-pitch character grid, such as teletypes, terminals, or portable devices with limited display capabilities.</li>
		 * 	<li>tv - Intended for television-type devices (low resolution, color, limited scrollability).</li>
		 * 	<li>projection - Intended for projectors.</li>
		 * 	<li>handheld - Intended for handheld devices (small screen, monochrome, bitmapped graphics, limited bandwilih).</li>
		 * 	<li>print - Intended for paged, opaque material and for documents viewed on screen in print preview mode.</li>
		 * 	<li>braille - Intended for braille tactile feedback devices.</li>
		 * 	<li>aural - Intended for speech synthesizers.</li>
		 * 	<li>all - Suitable for all devices. </li>
		 * </ul>
		 * 
		 * @default "screen" for Firefox and "all" for Internet Explorer
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534161%28VS.85%29.aspx MSDN: media Property
		 * @see http://developer.mozilla.org/en/DOM/stylesheet.media MDC - stylesheet: media Property
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheet W3C - DOM Level 2 Style: StyleSheet
		 * @see http://www.w3.org/TR/1998/REC-html40-19980424/types.html#type-media-descriptors W3C - Media descriptors
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 1
		 */
		public function get media():DOMString { return null; };
		public function set media(value:DOMString):void { };
	}
}