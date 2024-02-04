package cssom.view {
	
	import dom.core.Element;
	
	/**
	 * Has properties and methods that give information about the dimensions of an Element node (HTML tag).
	 * 
	 * <p>ElementView contains many properties and a few methods that were previously not part of any specification. They originated as part of 
	 * MSIE's DHTML object model. They are now all part of the CSSOM Views specification which should be implemented on any browser supporting
	 * DOM 3 Core.</p>
	 * 
	 * <p>All browser compatibility information was obtained via Quirksmode.</p>
	 * 
	 * @see http://www.w3.org/TR/cssom-view/#the-elementview  W3C CSSOM Views Specification: ElementView
	 * @see http://www.quirksmode.org/dom/w3c_cssom.html  Quirksmode: W3C DOM Compatibility - CSS Object Model View
	 * 
	 * @playerversion CSSOMView 0
	 * @since DOMCore 0
	 * @modified DOMCore 3
	 */
	public interface ElementView {
		
		/**
		 * Returns the inner height of an element in pixels, including padding but not the horizontal scrollbar height, border, or margin.
		 * 
		 * <p>clientHeight can be calculated as CSS height + CSS padding - height of horizontal scrollbar (if present).</p>
		 * 
		 * <p><strong>Note:</strong> offsetLeft returns the position the upper left edge of the element; not necessarily 
		 * the 'real' left edge of the element. This is important for span elements in flowed text that wraps from one 
		 * line to the next. The span may start in the middle of the page and wrap around to the beginning of the next 
		 * line. The offsetLeft will refer to the left edge of the start of the span, not the left edge of text at the 
		 * start of the second line. Therefore, a box with the left, top, width and height of offsetLeft, offsetTop, 
		 * offsetWidth and offsetHeight will not be a bounding box for a span with wrapped text.</p>
		 * 
		 * @example
		 * This example shows how the clientHeight property and the offsetHeight property measure document height differently. 
		 * The height of the div is set to 100, and this is the value retrieved by the offsetHeight property, not the clientHeight property. 
		 * 
		 * <listing>
		 * &lt;div id=oDiv style="overflow:scroll; width:200; height:100"&gt; . . . &lt;/div&gt;
		 * &lt;button onclick="alert(oDiv.clientHeight)">client height&lt;/button&gt;
		 * &lt;button onclick="alert(oDiv.offsetHeight)">offset heightY&lt;/button&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533563(VS.85).aspx  MSDN: clientHeight Property
		 * @see http://developer.mozilla.org/en/DOM/element.clientHeight  MDC - Element: clientHeight Property
		 * @see http://www.w3.org/TR/cssom-view/#client-attributes  W3C - CSSOM View: clientHeight Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get clientHeight():Number;
		
		/**
		 * The width of the left border of an element in pixels. 
		 * 
		 * <p>It includes the width of the vertical scrollbar if the text direction of the element is right–to–left and 
		 * if there is an overflow causing a left vertical scrollbar to be rendered. clientLeft does not include the left 
		 * margin or the left padding.</p>
		 * 
		 * <p><strong>Note:</strong> The difference between the offsetLeft and clientLeft properties is the border of the object.</p>
		 * 
		 * <p><strong>Note:</strong> When layout.scrollbar.side property is set to 1 or to 3 and when the text-direction is set to RTL, 
		 * then the vertical scrollbar is positioned on the left and this impacts the way clientLeft is computed.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533564(VS.85).aspx  MSDN: clientLeft Property
		 * @see http://developer.mozilla.org/en/DOM/element.clientLeft  MDC - Element: clientLeft Property
		 * @see http://www.w3.org/TR/cssom-view/#client-attributes  W3C - CSSOM View: clientLeft Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get clientLeft():Number;
		
		/**
		 * The width of the top border of an element in pixels. It does not include the top margin or padding.
		 * 
		 * <p><strong>Note:</strong> The difference between the offsetTop and the clientTop properties is the border area of the object.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533565(VS.85).aspx  MSDN: clientTop Property
		 * @see http://developer.mozilla.org/en/DOM/element.clientTop  MDC - Element: clientTop Property
		 * @see http://www.w3.org/TR/cssom-view/#client-attributes  W3C - CSSOM View: clientTop Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get clientTop():Number;
		
		/**
		 * Returns the inner width of an element in pixels. It includes padding but not the vertical scrollbar (if present, if rendered), border or margin.
		 * 
		 * @example
		 * This example shows how the clientWidth property and the offsetWidth property measure document width differently. The width of the div 
		 * is set to 200, and this is the value retrieved by the offsetWidth property, not the clientWidth property. 
		 * 
		 * <listing>
		 * &lt;div id=oDiv style="overflow:scroll; width:200; height:100"&gt; . . . &lt;/div&gt;
		 * &lt;button onclick="alert(oDiv.clientWidth)"&gt;client width&lt;/button&gt;
		 * &lt;button onclick="alert(oDiv.offsetWidth)"&gt;offset widthY&lt;/button&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533566(VS.85).aspx  MSDN: clientWidth Property
		 * @see http://developer.mozilla.org/en/DOM/element.clientWidth  MDC - Element: clientWidth Property
		 * @see http://www.w3.org/TR/cssom-view/#client-attributes  W3C - CSSOM View: clientWidth Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get clientWidth():Number;
		
		/**
		 * Height of an element relative to the element's offsetParent.
		 * 
		 * <p>Typically, an element's offsetHeight is a measurement which includes 
		 * the element borders, the element vertical padding, the element 
		 * horizontal scrollbar (if present, if rendered) and the element CSS height.</p>
		 * 
		 * <p>For the document body object, the measurement includes total linear 
		 * content height instead of the element CSS height. Floated elements 
		 * extending below other linear content are ignored.</p>
		 * 
		 * <p><strong>Note (IE6):</strong> To comply with the <a class="external" rel="external nofollow" href="http://www.w3.org/TR/REC-CSS1/">Cascading Style Sheets, Level 1 (CSS1)</a> World Wide 
		 * Web link box model, Microsoft Internet Explorer 6 and later calculate the 
		 * height of objects differently when you use the !DOCTYPE declaration in your 
		 * document to switch on standards-compliant mode. This difference may affect 
		 * the value of the offsetWidth propety. When standards-compliant mode is 
		 * switched on, the width property specifies the distance between the left and 
		 * right edges of the bounding box that surrounds the object's content. When 
		 * standards-compliant mode is not switched on, and with earlier versions of 
		 * Windows Internet Explorer, the width property also includes the border and 
		 * padding belts that surround the object's bounding box.</p>
		 * 
		 * @example
		 * This example adjusts the size of a clock's readout to fit the current width and height of the document body.
		 * 
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;A Simple Clock&lt;/title&gt;
		 * &lt;script type="text/javascript"&gt;
		 * 	function startClock() {
		 * 		window.setInterval("Clock_Tick()", 1000);
		 * 		Clock_Tick();
		 * 	}
		 * 
		 * 	var iRatio = 4;
		 * 	function Clock_Tick() {
		 * 		var dToday = Date();
		 * 		var sTime = dToday.substring(11,19);
		 * 		var iDocHeight = document.body.offsetHeight;
		 * 		var iDocWidth = document.body.offsetWidth;
		 * 
		 * 		if ((iDocHeight*iRatio)&gt;iDocWidth)
		 * 		iDocHeight = iDocWidth / iRatio;
		 * 		document.all.MyTime.innerText = sTime;
		 * 		document.all.MyTime.style.fontSize = iDocHeight;
		 * 	}
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * &lt;body onload="startClock()"&gt;
		 * &lt;p id="MyTime"&gt;&amp;nbsp;&lt;/p&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms530302(VS.85).aspx  MSDN: Measuring Element Dimension and Location
		 * @see http://msdn.microsoft.com/en-us/library/ms534199(VS.85).aspx  MSDN: offsetHeight Property
		 * @see http://developer.mozilla.org/en/DOM/element.offsetHeight  MDC - Element: offsetHeight Property
		 * @see http://www.w3.org/TR/cssom-view/#offset-attributes  W3C - CSSOM View: offsetHeight Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get offsetHeight():Number;
		
		/**
		 * Returns the number of pixels that the upper left corner of the current 
		 * element is offset to the left within the offsetParent node.
		 * 
		 * <p><strong>Note:</strong> offsetLeft returns the position the upper left edge of the element; 
		 * not necessarily the 'real' left edge of the element. This is important 
		 * for inline elements (such as span) in flowed text that wraps from one 
		 * line to the next. The span may start in the middle of the line and wrap 
		 * around to the beginning of the next line. The offsetLeft will refer to 
		 * the left edge of the start of the span, not the left edge of text at the 
		 * start of the second line. Therefore, a box with the left, top, width and 
		 * height of offsetLeft, offsetTop, offsetWidth and offsetHeight will not be 
		 * a bounding box for a span with wrapped text.</p>
		 * 
		 * @example
		 * <listing>
		 * var colorTable = document.getElementById("t1");
		 * var tOLeft = colorTable.offsetLeft;
		 * 
		 * if (tOLeft > 5) {
		 * 	// large left offset: do something here
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms530302(VS.85).aspx  MSDN: Measuring Element Dimension and Location
		 * @see http://msdn.microsoft.com/en-us/library/ms534200(VS.85).aspx  MSDN: offsetLeft Property
		 * @see http://developer.mozilla.org/en/DOM/element.offsetLeft  MDC - Element: offsetLeft Property
		 * @see http://www.w3.org/TR/cssom-view/#offset-attributes  W3C - CSSOM View: offsetLeft Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5_incorrect
		 * @productversion IE 6.0_incorrect
		 * @productversion IE 7.0_incorrect
		 * @productversion IE 8.0_as_IE7_incorrect
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get offsetLeft():Number;
		
		/**
		 * The element from which all offset calculations are currently computed.
		 * 
		 * <p>offsetParent returns a reference to the object which is the closest 
		 * (nearest in the containment hierarchy) positioned containing element. 
		 * If the element is non-positioned, the root element (html in standards 
		 * compliant mode; body in quirks rendering mode) is the offsetParent. 
		 * offsetParent returns null when the element has style.display set 
		 * to "none".</p>
		 * 
		 * <p><strong>Note (IE5):</strong> In Microsoft Internet Explorer 5, the offsetParent property returns 
		 * the table object for the td object.</p>
		 * 
		 * <p><strong>Note (IE4):</strong> In Internet Explorer 4.0 it returns 
		 * the tr object. You can use the parentElement property to retrieve the 
		 * immediate container of the table cell.</p>
		 * 
		 * @example
		 * This example shows how to determine the position of a td object. Although the td 
		 * object appears to the far right in the document, its position is close to the x-axis and y-axis, 
		 * because its offset parent is a table object rather than the document body. For Internet Explorer 4.0,
		 * this same example returns a position of 0,0 because the offset parent is the table row.
		 * 
		 * <listing>
		 * &lt;table border='1' align='right'&gt;
		 * 	&lt;tr&gt;
		 * 		&lt;td id='oCell'&gt;This is a small table.&lt;/td&gt;
		 * 	&lt;/tr&gt;
		 * &lt;/table&gt;</listing>
		 * 
		 * <listing>
		 * var oElement = document.getElementById("oCell");
		 * 
		 * alert("The TD element is at (" + oElement.offsetLeft + 
		 * "," + oElement.offsetTop + ")\n" + "The offset parent is " 
		 * + oElement.offsetParent.tagName );</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534302(VS.85).aspx  MSDN: offsetParent Property
		 * @see http://developer.mozilla.org/en/DOM/element.offsetParent  MDC - Element: offsetParent Property
		 * @see http://www.w3.org/TR/cssom-view/#offset-attributes  W3C - CSSOM View: offsetParent Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get offsetParent():Element;
		
		/**
		 * Returns the distance of the current element relative to the 
		 * top of the offsetParent node.
		 * 
		 * @example
		 * <listing>
		 * d = document.getElementById("div1");
		 * 
		 * topPos = d.offsetTop;
		 * 
		 * if (topPos > 10) {
		 * 	// object is offset more
		 * 	// than 10 pixels from its parent
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms530302(VS.85).aspx  MSDN: Measuring Element Dimension and Location
		 * @see http://msdn.microsoft.com/en-us/library/ms534303(VS.85).aspx  MSDN: offsetTop Property
		 * @see http://developer.mozilla.org/en/DOM/element.offsetTop  MDC - Element: offsetTop Property
		 * @see http://www.w3.org/TR/cssom-view/#offset-attributes  W3C - CSSOM View: offsetTop Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5_incorrect
		 * @productversion IE 6.0_incorrect
		 * @productversion IE 7.0_incorrect
		 * @productversion IE 8.0_as_IE7_incorrect
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get offsetTop():Number;
		
		/**
		 * The width of an element, relative to the layout.
		 * 
		 * <p>Typically, an element's offsetWidth is a measurement which includes 
		 * the element borders, the element horizontal padding, the element 
		 * vertical scrollbar (if present, if rendered) and the element CSS width.</p>
		 * 
		 * <p><strong>Note (IE6):</strong> To comply with the <a class="external" rel="external nofollow" href="http://www.w3.org/TR/REC-CSS1/">Cascading Style Sheets, Level 1 (CSS1)</a> World Wide 
		 * Web link box model, Microsoft Internet Explorer 6 and later calculate the 
		 * height of objects differently when you use the !DOCTYPE declaration in your 
		 * document to switch on standards-compliant mode. This difference may affect 
		 * the value of the offsetWidth propety. When standards-compliant mode is 
		 * switched on, the width property specifies the distance between the left and 
		 * right edges of the bounding box that surrounds the object's content. When 
		 * standards-compliant mode is not switched on, and with earlier versions of 
		 * Windows Internet Explorer, the width property also includes the border and 
		 * padding belts that surround the object's bounding box.</p>
		 * 
		 * @example
		 * This example adjusts the size of a clock's readout to fit the current width and height of the document.
		 * 
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;A Simple Clock&lt;/title&gt;
		 * &lt;script type="text/javascript"&gt;
		 * 	function startClock() {
		 * 		window.setInterval("Clock_Tick()", 1000);
		 * 		Clock_Tick();
		 * 	}
		 * 
		 * 	var iRatio = 4;
		 * 	function Clock_Tick() {
		 * 		var dToday = Date();
		 * 		var sTime = dToday.substring(11,19);
		 * 		var iDocHeight = document.body.offsetHeight;
		 * 		var iDocWidth = document.body.offsetWidth;
		 * 
		 * 		if ((iDocHeight*iRatio)&gt;iDocWidth)
		 * 		iDocHeight = iDocWidth / iRatio;
		 * 		document.all.MyTime.innerText = sTime;
		 * 		document.all.MyTime.style.fontSize = iDocHeight;
		 * 	}
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * &lt;body onload="startClock()"&gt;
		 * &lt;p id="MyTime"&gt;&amp;nbsp;&lt;/p&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @example
		 * This example uses the offsetWidth property and the clientWidth property to show the different ways of measuring the object size.
		 * 
		 * <listing>
		 * &lt;div id=oDiv STYLE="overflow:scroll; width:200; height:100"&gt; . . . &lt;/div&gt;
		 * &lt;button onclick="alert(oDiv.clientWidth)"&gt;client width&lt;/button&gt;
		 * &lt;button onclick="alert(oDiv.offsetWidth)"&gt;offset width&lt;/button&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms530302(VS.85).aspx  MSDN: Measuring Element Dimension and Location
		 * @see http://msdn.microsoft.com/en-us/library/ms534304(VS.85).aspx  MSDN: offsetWidth Property
		 * @see http://developer.mozilla.org/en/DOM/element.offsetWidth  MDC - Element: offsetWidth Property
		 * @see http://www.w3.org/TR/cssom-view/#offset-attributes  W3C - CSSOM View: offsetWidth Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get offsetWidth():Number;
		
		/**
		 * Height of the scroll view of an element; it includes the element padding but not its margin.
		 * 
		 * <p>An element's scrollHeight is a measurement of the height of an element's content including 
		 * content not visible on the screen due to overflow.</p>
		 * 
		 * <p>If the element's content generated a vertical scrollbar, the scrollHeight value is equal to 
		 * the minimum clientHeight the element would require in order to fit all the content in the viewpoint 
		 * without using a vertical scrollbar. When an element's content does not generate a vertical scrollbar, 
		 * then its scrollHeight property is equal to its clientHeight property.</p>
		 * 
		 * @example
		 * This example uses the scrollHeight property to retrieve the height of the viewable content.
		 * 
		 * <listing>
		 * &lt;script type="text/javascript"&gt;
		 * 	function fnCheckScroll(){
		 * 		var iNewHeight = oDiv.scrollHeight;
		 * 		alert("The value of the scrollHeight property is: " 
		 * 		+ iNewHeight + "px"); 
		 * 	}
		 * &lt;/script&gt;
		 * ...
		 * &lt;div id="oDiv" style="overflow: scroll; height= 100px; width= 250px; text-align: left"&gt;
		 * 	... 
		 * &lt;/div&gt;
		 * &lt;button onclick="fnCheckScroll()"&gt;Check scrollHeight&lt;/button&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534615(VS.85).aspx  MSDN: scrollHeight Property
		 * @see http://developer.mozilla.org/en/DOM/element.scrollHeight  MDC - Element: scrollHeight Property
		 * @see http://www.w3.org/TR/cssom-view/#scroll-attributes  W3C - CSSOM View: scrollHeight Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5_incorrect
		 * @productversion IE 6.0_incorrect
		 * @productversion IE 7.0_incorrect
		 * @productversion IE 8.0_as_IE7_incorrect
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62_incorrect
		 * @productversion Opera 10.0a_incorrect
		 */
		function get scrollHeight():Number;
		
		/**
		 * Gets or sets the number of pixels that an element's content is scrolled to the left.
		 * 
		 * @example
		 * <listing>
		 * // Set the number of pixels scrolled
		 * element.scrollLeft = 10;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534617(VS.85).aspx  MSDN: scrollLeft Property
		 * @see http://developer.mozilla.org/en/DOM/element.scrollLeft  MDC - Element: scrollLeft Property
		 * @see http://www.w3.org/TR/cssom-view/#scroll-attributes  W3C - CSSOM View: scrollLeft Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get scrollLeft():Number;
		function set scrollLeft(value:Number):void;
		
		/**
		 * Gets or sets the number of pixels that the content of an element is scrolled upward.
		 * 
		 * <p>An element's scrollTop is a measurement of the distance of an element's top to its topmost visible content.</p>
		 * 
		 * <p>When an element content does not generate a vertical scrollbar, then its scrollTop value defaults to 0.</p>
		 * 
		 * @example
		 * <listing>
		 * // Get the number of pixels scrolled
		 * var  intElemScrollTop = element.scrollTop;</listing>
		 * 
		 * @see http://msdn.microsoft.com/workshop/author/dhtml/reference/properties/scrolltop.asp?frame=true  MSDN: scrollTop Property
		 * @see http://developer.mozilla.org/en/DOM/element.scrollTop  MDC - Element: scrollTop Property
		 * @see http://www.w3.org/TR/cssom-view/#scroll-attributes  W3C - CSSOM View: scrollTop Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get scrollTop():Number;
		function set scrollTop(value:Number):void;
		
		/**
		 * Returns either the width in pixels of the content of an element or the width of the element itself, whichever is greater. 
		 * 
		 * <p>If the element is wider than its content area (for example, if there are scroll bars for scrolling through the content), the scrollWidth is larger than the clientWidth.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;div id="aDiv" style="width: 100px; height: 200px; overflow: auto;"&gt;
		 * 	-FooBar-FooBar-FooBar
		 * &lt;/div&gt;
		 * &lt;br/&gt;
		 * &lt;input type="button" value="Show scrollWidth"
		 * onclick="alert(document.getElementById('aDiv').scrollWidth);"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534619(VS.85).aspx  MSDN: scrollWidth Property
		 * @see http://developer.mozilla.org/en/DOM/element.scrollWidth  MDC - Element: scrollWidth Property
		 * @see http://www.w3.org/TR/cssom-view/#scroll-attributes  W3C - CSSOM View: scrollWidth Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5_incorrect
		 * @productversion IE 6.0_incorrect
		 * @productversion IE 7.0_incorrect
		 * @productversion IE 8.0_as_IE7_incorrect
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62_incorrect
		 * @productversion Opera 10.0a_incorrect
		 */
		function get scrollWidth():Number;
		
		/**
		 * Retrieves an object that specifies the bounds of a collection of TextRectangle objects.
		 * 
		 * <p><strong>Note (IE8):</strong> In IE8 mode, the bounding rectangle is the same as the client rectangle.</p>
		 * 
		 * <p><strong>Note (IE5):</strong> In Microsoft Internet Explorer 5, the window's upper-left is at 
		 * 2,2 (pixels) with respect to the true client.</p>
		 * 
		 * <p><strong>Note (Firefox 3.5):</strong> Firefox 3.5 adds width and height properties to the TextRectangle object.</p>
		 * 
		 * <p><strong>Note (Firefox):</strong> Firefox doesn't round the top/bottom coordinates.</p>
		 * 
		 * @return The returned value is a TextRectangle object which is the union 
		 * of the rectangles returned by getClientRects() for the element, i.e., 
		 * the CSS border-boxes associated with the element.
		 * 
		 * @example
		 * <listing>var rect = obj.getBoundingClientRect();</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536433(VS.85).aspx MSDN: getBoundingClientRect Method
		 * @see http://developer.mozilla.org/en/DOM/element.getBoundingClientRect  MDC - Element: getBoundingClientRect Method
		 * @see http://www.w3.org/TR/cssom-view/#the-getclientrects  W3C - CSSOM View: getBoundingClientRect Method
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#documentview  Quirksmode: DocumentView and ElementView methods
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_almost
		 * @productversion Firefox 3.1b_almost
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function getBoundingClientRect():TextRectangle;
		
		/**
		 * Retrieves a collection of rectangles that describes the layout of the 
		 * contents of an object or range within the client. Each rectangle 
		 * describes a single line.
		 * 
		 * <p><strong>Note (IE8):</strong> In IE8 mode, getClientRects always returns 
		 * a collection of one rectangle—the same rectangle as getBoundingClientRect.</p>
		 * 
		 * <p><strong>Note (IE):</strong> In IE5-7, split up a block-level element such as a &lt;p&gt; into one rectangle per line.
		 * This is incorrect: a block-level element should be reported as one rectangle.</p>
		 * 
		 * <p><strong>Note (IE):</strong> In IE5-7, the rectangles are off by about two pixels. According to John Resig this is caused by the 
		 * (invisible, but nonetheless present) borders of the &lt;html&gt; element.</p>
		 * 
		 * <p><strong>Note (Firefox 3.5):</strong> Firefox 3.5 adds width and height properties to the TextRectangle object.</p>
		 * 
		 * <p><strong>Note (Firefox):</strong> Firefox doesn't round the top/bottom coordinates.</p>
		 * 
		 * @example
		 * <listing>
		 * var rects = obj.getClientRects();
		 * var numLines = rects.length;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536435(VS.85).aspx  MSDN: getClientRects Method
		 * @see http://developer.mozilla.org/en/DOM/element.getClientRects  MDC - Element: getClientRects Method
		 * @see http://www.w3.org/TR/cssom-view/#the-getclientrects  W3C - CSSOM View: getClientRects Method
		 * @see http://ejohn.org/blog/getboundingclientrect-is-awesome/  John Resig
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#documentview  Quirksmode: DocumentView and ElementView methods
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5_buggy
		 * @productversion IE 6.0_buggy
		 * @productversion IE 7.0_buggy
		 * @productversion IE 8.0_as_IE7_buggy
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_almost
		 * @productversion Firefox 3.1b_almost
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function getClientRects():TextRectangleList;
	}
}