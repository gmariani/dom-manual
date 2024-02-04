package dom.style.css {
	
	import dom.core.types.DOMString;
	
	/**
	 * INCOMPLETE
	 * 
	 * The CSS2Properties interface represents a convenience mechanism for retrieving and setting properties within a 
	 * CSSStyleDeclaration. 
	 * 
	 * <p>The attributes of this interface correspond to all the properties specified in CSS2. 
	 * Getting an attribute of this interface is equivalent to calling the getPropertyValue method of the 
	 * CSSStyleDeclaration interface. Setting an attribute of this interface is equivalent to calling the 
	 * setProperty method of the CSSStyleDeclaration interface.</p>
	 * 
	 * <p><strong>Note:</strong> When the margin property is set, for example, the marginTop, marginRight, marginBottom and marginLeft 
	 * properties are actually being set.</p>
	 * 
	 * @see http://developer.mozilla.org/en/DOM/CSS MDC - DOM CSS Properties
	 * @see http://developer.mozilla.org/en/CSS_Reference MDC - CSS Reference
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSS2Properties W3C - DOM Level 2 Style: CSS2Properties
	 * 
	 * @playerversion DOMStyle 2
	 * @since CSS 2
	 */
	public interface CSS2Properties {
		/**
		 * In combination with elevation, azimuth enables different audio sources to be positioned spatially for aural presentation. 
		 * 
		 * <p>This is important in that it provides a natural way to tell several voices apart, as each can be positioned to originate 
		 * at a different location on the sound stage. Stereo output produce a lateral sound stage, while binaural headphones and 
		 * multi-speaker setups allow for a fully three-dimensional stage.</p>
		 * 
		 * <listing>azimuth: angle | [[ left-side | far-left | left | center-left | center | center-right | 
		 * right | far-right | right-side ] || behind ] | leftwards | rightwards | inherit</listing>
		 * 
		 * <strong>angle</strong>
		 * <p>Audible source position is described as an angle within the range <code>-360deg</code> to <code>360deg</code>. 
		 * The value <code>0deg</code> means directly ahead in the center of the sound stage (this is the default value). 
		 * <code>90deg</code> is to the right, <code>180deg</code> is behind, and <code>270deg</code> or <code>-90deg</code> is to the left.</p>
		 * 
		 * <strong>Positional keywords</strong>
		 * <p>
		 * <ul><li> <b>left-side</b>: Same as <code>270deg</code>.
		 * </li><li> <b>left-side behind</b>: Same as <code>270deg</code>.
		 * </li><li> <b>far-left</b>: Same as <code>300deg</code>.
		 * 
		 * </li><li> <b>far-left behind</b>: Same as <code>240deg</code>.
		 * </li><li> <b>left</b>: Same as <code>320deg</code>.
		 * </li><li> <b>left behind</b>: Same as <code>220deg</code>.
		 * </li><li> <b>center-left</b>: Same as <code>340deg</code>.
		 * 
		 * </li><li> <b>center-left behind</b>: Same as <code>200deg</code>.
		 * </li><li> <b>center</b>: Same as <code>0deg</code>.
		 * </li><li> <b>center behind</b>: Same as <code>180deg</code>.
		 * </li><li> <b>center-right</b>: Same as <code>20deg</code>.
		 * 
		 * </li><li> <b>center-right behind</b>: Same as <code>160deg</code>.
		 * </li><li> <b>right</b>: Same as <code>40deg</code>.
		 * </li><li> <b>right behind</b>: Same as <code>140deg</code>.
		 * </li><li> <b>far-right</b>: Same as <code>60deg</code>.
		 * 
		 * </li><li> <b>far-right behind</b>: Same as <code>120deg</code>.
		 * </li><li> <b>right-side</b>: Same as <code>90deg</code>.
		 * </li><li> <b>right-side behind</b>: Same as <code>90deg</code>.
		 * </li><li> <b>behind</b>: Same as <code>180deg</code>. Also used as a modifier for other positional keyword values, as above.
		 * 
		 * </li><li> <b>leftwards</b>: Moves the sound counter-clockwise by 20 degrees, relative to the current angle.
		 * </li><li> <b>rightwards</b>: Moves the sound clockwise by 20 degrees, relative to the current angle.
		 * </li></ul>
		 * </p>
		 * 
		 * @default center
		 * 
		 * @example
		 * <listing>
		 * h1   { azimuth: 30deg }
		 * td.a { azimuth: far-right }          /~~  60deg ~~/
		 * #12  { azimuth: behind far-right }   /~~ 120deg ~~/
		 * p.comment { azimuth: behind }        /~~ 180deg ~~/</listing>
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @see http://developer.mozilla.org/en/CSS/azimuth MDC - CSS: azimuth
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSS2Properties-azimuth W3C - DOM Level 2 Style: CSS2Properties.azimuth
		 * @see #elevation
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get azimuth():DOMString;
		
		/**
		 * The background property is a shorthand property for setting the individual background property values in a 
		 * single place in the style sheet. background can be used to set the values for one or more of: background-attachment, 
		 * background-color, background-image, background-position, background-repeat.
		 * 
		 * <listing>background: [ &lt;background-color&gt; || &lt;background-image&gt; || &lt;background-repeat&gt; 
		 * || &lt;background-attachment&gt; || &lt;background-position&gt; ] | inherit;</listing>
		 * 
		 * <p><strong>Note:</strong> Given a valid declaration, the background property first sets the individual background 
		 * properties to their initial values, then assigns the explicit values specified in the declaration. You do not have 
		 * to define a value for each of the individual properties, only those you want to change from their initial defaults. </p>
		 * 
		 * @example
		 * <listing>
		 * body { 
		 * 	background: red;
		 * }
		 * 
		 * .topbanner {
		 * 	background: url("topbanner.png") #00D repeat fixed;
		 * }</listing>
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @see http://developer.mozilla.org/en/CSS/background MDC - CSS: background
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSS2Properties-background W3C - DOM Level 2 Style: CSS2Properties.background
		 * @see #backgroundAttachment
		 * @see #backgroundColor
		 * @see #backgroundImage
		 * @see #backgroundPosition
		 * @see #backgroundRepeat
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get background():DOMString;
		
		/**
		 * If a background-image is specified, background-attachment determines whether that image's position is 
		 * fixed within the viewport, or scrolls along with its containing block.
		 * 
		 * <listing>background-attachment:  scroll | fixed | inherit</listing>
		 * 
		 * <strong>scroll</strong>
		 * <p>If scroll is specified, the background image will scroll within the viewport along with the block the image is contained within. </p>
		 * 
		 * <strong>inherit</strong>
		 * <p>If fixed is specified, the background image will not scroll with its containing element, instead remaining stationary within the viewport.</p>
		 * 
		 * @example
		 * <listing>
		 * body {
		 * 	background-image: url("images/cartooncat.png");
		 * 	background-attachment: fixed;
		 * }</listing>
		 * 
		 * @default scroll
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @see http://developer.mozilla.org/en/CSS/background-attachment MDC - CSS: background-attachment
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSS2Properties-backgroundAttachment W3C - DOM Level 2 Style: CSS2Properties.backgroundAttachment
		 * @see #background
		 * @see #backgroundColor
		 * @see #backgroundImage
		 * @see #backgroundPosition
		 * @see #backgroundRepeat
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get backgroundAttachment():DOMString;
		
		/**
		 * background-color sets the background color of an element, either through a color value or the keyword transparent. 
		 * 
		 * <listing>background-color: color | transparent | inherit</listing>
		 * 
		 * <strong>color</strong>
		 * <p>The color can be specified as a hexidecimal RGB value, a regular RGB value, or by using one of the pre-defined color keywords.</p>
		 * 
		 * <strong>transparent</strong>
		 * <p>The default value for background-color is transparent meaning the element has no color of its own, instead showing the color of the element behind it.</p>
		 * 
		 * @example
		 * <listing>
		 * .exampleone {
		 * 	background-color: teal;
		 * 	color: white;
		 * }
		 * 
		 * .exampletwo {
		 * 	background-color: rgb(153,102,153);
		 * 	color: rgb(255,255,204);
		 * }
		 * 
		 * .examplethree {
		 * 	background-color: #666699;
		 * 	color: #FFFFFF;
		 * }</listing>
		 * 
		 * @default transparent
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @see http://developer.mozilla.org/en/CSS/background-color MDC - CSS: background-color
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSS2Properties-backgroundColor W3C - DOM Level 2 Style: CSS2Properties.backgroundColor
		 * @see #background
		 * @see #backgroundAttachment
		 * @see #backgroundImage
		 * @see #backgroundPosition
		 * @see #backgroundRepeat
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get backgroundColor():DOMString;
		
		/**
		 * The background-image property sets the background image for an element.
		 * 
		 * <listing>background-image: uri | none | inherit</listing>
		 * 
		 * <p><strong>Note:</strong> Developers should ensure that they specify a background-color to be used if an image is not available. Background images are rendered on top of the background color.</p>
		 * 
		 * <strong>uri</strong>
		 * <p>The location of the image resource to be used as a background image.</p>
		 * 
		 * <strong>none</strong>
		 * <p>Used to specify that an element is to have no background image.</p>
		 * 
		 * @example
		 * <listing>
		 * body { background-image: url("images/darkpattern.png"); }
		 * 
		 * p { background-image: none; }</listing>
		 * 
		 * @default none
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @see http://developer.mozilla.org/en/CSS/background-image MDC - CSS: background-image
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSS2Properties-backgroundImage W3C - DOM Level 2 Style: CSS2Properties.backgroundImage
		 * @see #background
		 * @see #backgroundAttachment
		 * @see #backgroundColor
		 * @see #backgroundPosition
		 * @see #backgroundRepeat
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get backgroundImage():DOMString;
		
		/**
		 * background-position sets the initial position of any background image that has been set. 
		 * 
		 * <listing>background-position: [ &lt;percentage&gt; | &lt;length&gt; | left | center | right  ] 
		 * [ &lt;percentage&gt; | &lt;length&gt; | top  | center | bottom ] ? ;</listing>
		 * 
		 * <listing>background-position: [ top | center | bottom ];</listing>
		 * 
		 * <listing>background-position: inherit;</listing>
		 * 
		 * <strong>&lt;percentage&gt;</strong>
		 * <p>With a value pair of '0% 0%', the upper left corner of the image is aligned with the upper left corner of the box's padding edge. A value pair of '100% 100%' places the lower right corner of the image in the lower right corner of padding area. With a value pair of '14% 84%', the point 14% across and 84% down the image is to be placed at the point 14% across and 84% down the padding area.</p>
		 * 
		 * <strong>&lt;length&gt;</strong>
		 * <p>With a value pair of '2cm 1cm', the upper left corner of the image is placed 2cm to the right and 1cm below the upper left corner of the padding area.</p>
		 * 
		 * <strong>top left and left top</strong>
		 * <p> Same as '0% 0%'. </p>
		 * 
		 * <strong>top, top center, and center top</strong>
		 * <p> Same as '50% 0%'. </p>
		 * 
		 * <strong>right top and top right</strong>
		 * <p>Same as '100% 0%'. </p>
		 * 
		 * <strong>left, left center, and center left</strong>
		 * <p>Same as '0% 50%'. </p>
		 * 
		 * <strong>center and center center</strong>
		 * <p>Same as '50% 50%'. </p>
		 * 
		 * <strong>right, right center, and center right</strong>
		 * <p>Same as '100% 50%'. </p>
		 * 
		 * <strong>bottom left and left bottom</strong>
		 * <p>Same as '0% 100%'. </p>
		 * 
		 * <strong>bottom, bottom center, and center bottom</strong>
		 * <p>Same as '50% 100%'. </p>
		 * 
		 * <strong>bottom right and right bottom</strong>
		 * <p>Same as '100% 100%'. </p>
		 * 
		 * <p>If only one value is specified, then it sets the horizontal position, with the vertical position at 50%. Otherwise, 
		 * the first value specifies the horizontal position. Combinations are allowed of keyword, length, or percentage values, 
		 * but if keywords are mixed with other values, 'left' and 'right' may only be used as the first value, and 'top' and 
		 * 'bottom' may only be used as the second value. Negative positions are allowed.</p>
		 * 
		 * @example
		 * <listing>
		 * .exampleone {
		 * 	background-image: url("logo.png");
		 * 	background-position: top center;
		 * }
		 * 
		 * .exampletwo {
		 * 	background-image: url("logo.png");
		 * 	background-position: 25% 75%;
		 * }
		 * 
		 * .examplethree {
		 * 	background-image: url("logo.png");
		 * 	background-position: 2cm bottom;
		 * }
		 * 
		 * .examplefour {
		 * 	background-image: url("logo.png");
		 * 	background-position: center 10%;
		 * }
		 * 
		 * .examplefive {
		 * 	background-image: url("logo.png");
		 * 	background-position: 2cm 50%;
		 * }</listing>
		 * 
		 * @default 0% 0%
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @see http://developer.mozilla.org/en/CSS/background-position MDC - CSS: background-position
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSS2Properties-backgroundPosition W3C - DOM Level 2 Style: CSS2Properties.backgroundPosition
		 * @see #background
		 * @see #backgroundAttachment
		 * @see #backgroundColor
		 * @see #backgroundImage
		 * @see #backgroundRepeat
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get backgroundPosition():DOMString;
		
		/**
		 * background-repeat specifies whether the image is repeated (tiled), and how. 
		 * 
		 * <listing>background-repeat: repeat | repeat-x | repeat-y | no-repeat | inherit</listing>
		 * 
		 * <strong> repeat</strong>
		 * <p> The image is repeated both horizontally and vertically.</p>
		 * 
		 * <strong> repeat-x</strong>
		 * <p> The image is repeated horizontally only.</p>
		 * 
		 * <strong> repeat-y</strong>
		 * <p> The image is repeated vertically only.</p>
		 * 
		 * <strong> no-repeat</strong>
		 * <p> The image is not repeated: only one copy of the image is drawn.</p>
		 * 
		 * @example
		 * <listing>
		 * .exampleone {
		 * 	background-image: url("logo.png");
		 * 	background-repeat: repeat-x;
		 * }
		 * 
		 * .exampletwo {
		 * 	background-image: url("logo.png");
		 * 	background-repeat: no-repeat;
		 * }</listing>
		 * 
		 * @default repeat
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @see http://developer.mozilla.org/en/CSS/background-repeat MDC - CSS: background-repeat
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSS2Properties-backgroundRepeat W3C - DOM Level 2 Style: CSS2Properties.backgroundRepeat
		 * @see #background
		 * @see #backgroundAttachment
		 * @see #backgroundColor
		 * @see #backgroundImage
		 * @see #backgroundPosition
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get backgroundRepeat():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get border():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderCollapse():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderColor():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderSpacing():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderStyle():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderTop():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderRight():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderBottom():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderLeft():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderTopColor():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderRightColor():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderBottomColor():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderLeftColor():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderTopStyle():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderRightStyle():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderBottomStyle():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderLeftStyle():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderTopWidth():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderRightWidth():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 */
		function get borderBottomWidth():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderLeftWidth():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get borderWidth():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get bottom():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get captionSide():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get clear():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get clip():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get color():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get content():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get counterIncrement():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get counterReset():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get cue():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get cueAfter():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get cueBefore():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get cursor():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get direction():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get display():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get elevation():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get emptyCells():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get cssFloat():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get font():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get fontFamily():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get fontSize():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get fontSizeAdjust():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get fontStretch():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get fontStyle():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get fontVariant():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get fontWeight():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get height():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get left():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get letterSpacing():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get lineHeight():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get listStyle():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get listStyleImage():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get listStylePosition():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get listStyleType():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get margin():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get marginTop():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get marginRight():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get marginBottom():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get marginLeft():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get markerOffset():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get marks():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get maxHeight():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get maxWidth():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get minHeight():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get minWidth():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get orphans():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get outline():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get outlineColor():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get outlineStyle():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get outlineWidth():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get overflow():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get padding():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get paddingTop():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get paddingRight():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get paddingBottom():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get paddingLeft():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get page():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get pageBreakAfter():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get pageBreakBefore():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get pageBreakInside():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get pause():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get pauseAfter():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get pauseBefore():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get pitch():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get pitchRange():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get playDuring():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get position():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get quotes():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get richness():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get right():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get size():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get speak():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get speakHeader():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get speakNumeral():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get speakPunctuation():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get speechRate():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get stress():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get tableLayout():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get textAlign():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get textDecoration():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get textIndent():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get textShadow():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get textTransform():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get top():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get unicodeBidi():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get verticalAlign():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get visibility():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get voiceFamily():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get volume():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get whiteSpace():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get widows():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get width():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get wordSpacing():DOMString;

		/**
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the new value has a syntax error and is unparsable.
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function get zIndex():DOMString;
	}
}