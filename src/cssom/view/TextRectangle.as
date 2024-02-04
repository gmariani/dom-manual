package cssom.view {
	
	/**
	 * Objects implementing the TextRectangle interface represent a rectangular box.
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms535906(VS.85).aspx MSDN: TextRectangle Object
	 * @see http://www.w3.org/TR/cssom-view/#the-textrectangle-interface W3C CSSOM Views Specification: TextRectangle
	 * 
	 * @example
	 * In the following excerpt from the Gettysburg Address, four TextRectangle objects are contained in the b element (bold text).
	 * 
	 * <listing>
	 * &lt;p&gt;Four score and seven years ago &lt;b&gt;our fathers&lt;br&gt;
	 * brought forth . . . a new nation, conceived in liberty&lt;br&gt;
	 * and dedicated to the proposition that all men are&lt;br&gt;
	 * created equal.&lt;/b&gt; Now we are engaged in a great civil war . . . 
	 * &lt;/p&gt;
	 * </listing>
	 * 
	 * <p>
	 * The four TextRectangle objects are: 
	 * <ol>
	 * <li>"our fathers"</li>
	 * <li>"brought forth . . . a new nation, conceived in liberty"</li>
	 * <li>"and dedicated to the proposition that all men are"</li>
	 * <li>"created equal"</li>
	 * </ol>
	 * </p>
	 * 
	 * <p>If you resize the window containing this text, the TextRectangle objects do not update. Because the objects are a 
	 * snapshot of the layout, the objects should update after an onresize event occurs.</p>
	 * 
	 * <p>The width of the TextRectangle may not be identical to the width of the TextRange it contains. A TextRange is only 
	 * as wide as the text, but a TextRectangle is as wide as the element containing that text.</p>
	 * 
	 * @playerversion CSSOMView 0
	 * @since DOMCore 0
	 */
	public interface TextRectangle {
		
		/**
		 * Returns the distance between the top of the viewport and the bottom 
		 * of the rectangle box as number of CSS pixels. 
		 * 
		 * @example
		 * <listing>
		 * &lt;script&gt;
		 * function getCoords(oObject) {
		 * 	oBndRct = oObject.getBoundingClientRect();
		 * 	alert("Bounding rectangle = \nUpper left coordinates: "
		 * 	+ oBndRct.left + " " + oBndRct.top +
		 * 	"\nLower right coordinates: "
		 * 	+ oBndRct.right + " " + oBndRct.bottom);
		 * }
		 * &lt;/script&gt;
		 * &lt;/head&gt;	
		 * &lt;body&gt;
		 * &lt;p id=oPara onclick="getCoords(this)"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533535(VS.85).aspx  MSDN: bottom Property
		 * @see http://www.w3.org/TR/cssom-view/#the-textrectangle-interface W3C - CSSOM View: bottom Property
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0a_no
		 */
		function get bottom():Number;
		
		/**
		 * @see http://developer.mozilla.org/en/DOM/element.getClientRects MDC - Element: getClientRects Method
		 * @see http://developer.mozilla.org/en/DOM/element.getBoundingClientRect MDC - Element: getBoundingClientRect Method
		 * 
		 * @playerversion Non-Standard Mozilla
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0a_no
		 */
		function get height():Number;
		
		/**
		 * Returns the distance between the left of the viewport and the left 
		 * of the rectangle box as number of CSS pixels.
		 * 
		 * @example
		 * <listing>
		 * &lt;script&gt;
		 * function getCoords(oObject) {
		 * 	oBndRct = oObject.getBoundingClientRect();
		 * 	alert("Bounding rectangle = \nUpper left coordinates: "
		 * 	+ oBndRct.left + " " + oBndRct.top +
		 * 	"\nLower right coordinates: "
		 * 	+ oBndRct.right + " " + oBndRct.bottom);
		 * }
		 * &lt;/script&gt;
		 * &lt;/head&gt;	
		 * &lt;body&gt;
		 * &lt;p id=oPara onclick="getCoords(this)"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534099(VS.85).aspx MSDN: left Property
		 * @see http://www.w3.org/TR/cssom-view/#the-textrectangle-interface W3C - CSSOM View: left Property
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0a_no
		 */
		function get left():Number;
		
		/**
		 * Returns the distance between the left of the viewport and the right 
		 * of the rectangle box as number of CSS pixels. 
		 * 
		 * @example
		 * <listing>
		 * &lt;script&gt;
		 * function getCoords(oObject) {
		 * 	oBndRct = oObject.getBoundingClientRect();
		 * 	alert("Bounding rectangle = \nUpper left coordinates: "
		 * 	+ oBndRct.left + " " + oBndRct.top +
		 * 	"\nLower right coordinates: "
		 * 	+ oBndRct.right + " " + oBndRct.bottom);
		 * }
		 * &lt;/script&gt;
		 * &lt;/head&gt;	
		 * &lt;body&gt;
		 * &lt;p id=oPara onclick="getCoords(this)"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534374(VS.85).aspx MSDN: right Property
		 * @see http://www.w3.org/TR/cssom-view/#the-textrectangle-interface W3C - CSSOM View: right Property
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0a_no
		 */
		function get right():Number;
		
		/**
		 * Returns the distance between the top of the viewport and the top of 
		 * the rectangle box as number of CSS pixels. 
		 * 
		 * @example
		 * <listing>
		 * &lt;script&gt;
		 * function getCoords(oObject) {
		 * 	oBndRct = oObject.getBoundingClientRect();
		 * 	alert("Bounding rectangle = \nUpper left coordinates: "
		 * 	+ oBndRct.left + " " + oBndRct.top +
		 * 	"\nLower right coordinates: "
		 * 	+ oBndRct.right + " " + oBndRct.bottom);
		 * }
		 * &lt;/script&gt;
		 * &lt;/head&gt;	
		 * &lt;body&gt;
		 * &lt;p id=oPara onclick="getCoords(this)"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534688(VS.85).aspx MSDN: top Property
		 * @see http://www.w3.org/TR/cssom-view/#the-textrectangle-interface W3C - CSSOM View: top Property
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0a_no
		 */
		function get top():Number;
		
		/**
		 * @see http://developer.mozilla.org/en/DOM/element.getClientRects MDC - Element: getClientRects Method
		 * @see http://developer.mozilla.org/en/DOM/element.getBoundingClientRect MDC - Element: getBoundingClientRect Method
		 * 
		 * @playerversion Non-Standard Mozilla
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0a_no
		 */
		function get width():Number;
	}
}