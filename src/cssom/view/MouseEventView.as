package cssom.view {
	
	/**
	 * Used to calculate the mouse position relative to the page or screen.
	 * 
	 * <p>All browser compatibility information was obtained via Quirksmode.</p>
	 * 
	 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface W3C CSSOM Views Specification: MouseEventView
	 * @see http://www.quirksmode.org/dom/w3c_cssom.html  Quirksmode: W3C DOM Compatibility - CSS Object Model View
	 * 
	 * @playerversion CSSOMView 0
	 * @since DOMCore 0
	 * @modified DOMEvents 2
	 */
	public interface MouseEventView {
		
		/**
		 * Returns the horizontal coordinate within the application's client area at which the event occurred 
		 * (as opposed to the coordinates within the page). 
		 * 
		 * <p>For example, clicking in the top-left corner of the client area will always result in a mouse 
		 * event with a clientX value of 0, regardless of whether the page is scrolled horizontally.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * 	&lt;title&gt;clientX\clientY example&lt;/title&gt;
		 * 
		 * 	&lt;script type="text/javascript"&gt;
		 * 		function showCoords(evt) {
		 * 			alert(
		 * 			"clientX value: " + evt.clientX + "\n"
		 * 			+ "clientY value: " + evt.clientY + "\n"
		 * 		);
		 * 		}
		 * 	&lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onmousedown="showCoords(event)"&gt;
		 * 	&lt;p&gt;To display the mouse coordinates click anywhere on the page.&lt;/p&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533567(VS.85).aspx MSDN: clientX Property
		 * @see http://developer.mozilla.org/en/DOM/event.clientX  MDC - Event: clientX Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: clientX Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #clientY
		 * @see #screenX
		 * @see #screenY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
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
		function get clientX():Number;
		
		/**
		 * Returns the vertical coordinate within the application's client area at which the event occurred 
		 * (as opposed to the coordinates within the page).
		 * 
		 * <p>For example, clicking in the top-left corner of the client area will always result in a mouse 
		 * event with a clientY value of 0, regardless of whether the page is scrolled vertically.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 	&lt;head&gt;
		 * 		&lt;title&gt;clientX\clientY example&lt;/title&gt;
		 * 
		 * 		&lt;script type="text/javascript"&gt;
		 * 			function showCoords(evt){
		 * 				alert(
		 * 				"clientX value: " + evt.clientX + "\n"
		 * 				+ "clientY value: " + evt.clientY + "\n"
		 * 			);
		 * 			}
		 * 		&lt;/script&gt;
		 * 	&lt;/head&gt;
		 * 
		 * 	&lt;body onmousedown="showCoords(event)"&gt;
		 * 		&lt;p&gt;To display the mouse coordinates click anywhere on the page.&lt;/p&gt;
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533568(VS.85).aspx MSDN: clientY Property
		 * @see http://developer.mozilla.org/en/DOM/event.clientY  MDC - Event: clientY Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: clientY Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #clientX
		 * @see #screenX
		 * @see #screenY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
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
		function get clientY():Number;
		
		/**
		 * Returns the horizontal coordinate, as number of CSS pixels, of the 
		 * position where the event occurred relative to the origin of the padding box of the target node.
		 * 
		 * <p>In IE the coordinates are calculated relative to the target element when that element is 
		 * eligible to become an offsetParent. If that's not the case, the coordinates are calculated 
		 * relative to the target's offsetParent.</p>
		 * 
		 * <p><strong>Note (Safari/Chrome):</strong> Safari and Chrome calculate the position not from the padding box (as per the spec) but form the
		 * border box.</p>
		 * 
		 * <p><strong>Note (Opera):</strong> Opera calculates the position from the content box instead of the padding box.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;head&gt;
		 * 	&lt;script&gt;
		 * 		function offsetCoords() {
		 * 			var offsetInfo = ""
		 * 			offsetInfo = "The x coordinate is: " + window.event.offsetX + "\r"
		 * 			offsetInfo += "The y coordinate is: " + window.event.offsetY + "\r"
		 * 			alert(offsetInfo);
		 * 		}
		 * 	&lt;/script&gt;
		 * &lt;/head&gt;
		 * &lt;body onmousemove="window.status = 'X=' + window.event.offsetX + 
		 * ' Y=' + window.event.offsetY" ondblclick="offsetCoords()"&gt;
		 * 	...
		 * 	&lt;div onclick="offsetCoords();" ... position:absolute; top:200; left:300;"&gt;
		 * 	...
		 * 	&lt;/div&gt;
		 * &lt;/body&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534305(VS.85).aspx MSDN: offsetX Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: offsetX Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #offsetY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
		 * 
		 * @productversion IE 5.5_buggy
		 * @productversion IE 6.0_buggy
		 * @productversion IE 7.0_buggy
		 * @productversion IE 8.0_as_IE7_buggy
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.1b_no
		 * @productversion Safari 3.0_incorrect
		 * @productversion Safari 3.1_incorrect
		 * @productversion Safari 4.0b_incorrect
		 * @productversion Chrome 1.0_incorrect
		 * @productversion Chrome 2.0_incorrect
		 * @productversion Opera 9.62_incorrect
		 * @productversion Opera 10.0a_incorrect
		 */
		function get offsetX():Number;
		
		/**
		 * Returns the vertical coordinate, as number of CSS pixels, of the 
		 * position where the event occurred relative to the origin of the padding box of the target node.
		 * 
		 * <p>In IE the coordinates are calculated relative to the target element when that element is 
		 * eligible to become an offsetParent. If that's not the case, the coordinates are calculated 
		 * relative to the target's offsetParent.</p>
		 * 
		 * <p><strong>Note (Safari/Chrome):</strong> Safari and Chrome calculate the position not from the padding box (as per the spec) but form the
		 * border box.</p>
		 * 
		 * <p><strong>Note (Opera):</strong> Opera calculates the position from the content box instead of the padding box.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;head&gt;
		 * 	&lt;script&gt;
		 * 		function offsetCoords() {
		 * 			var offsetInfo = ""
		 * 			offsetInfo = "The x coordinate is: " + window.event.offsetX + "\r"
		 * 			offsetInfo += "The y coordinate is: " + window.event.offsetY + "\r"
		 * 			alert(offsetInfo);
		 * 		}
		 * 	&lt;/script&gt;
		 * &lt;/head&gt;
		 * &lt;body onmousemove="window.status = 'X=' + window.event.offsetX + 
		 * ' Y=' + window.event.offsetY" ondblclick="offsetCoords()"&gt;
		 * 	...
		 * 	&lt;div onclick="offsetCoords();" ... position:absolute; top:200; left:300;"&gt;
		 * 	...
		 * 	&lt;/div&gt;
		 * &lt;/body&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534306(VS.85).aspx MSDN: offsetY Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: offsetY Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #offsetX
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
		 * 
		 * @productversion IE 5.5_buggy
		 * @productversion IE 6.0_buggy
		 * @productversion IE 7.0_buggy
		 * @productversion IE 8.0_as_IE7_buggy
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.1b_no
		 * @productversion Safari 3.0_incorrect
		 * @productversion Safari 3.1_incorrect
		 * @productversion Safari 4.0b_incorrect
		 * @productversion Chrome 1.0_incorrect
		 * @productversion Chrome 2.0_incorrect
		 * @productversion Opera 9.62_incorrect
		 * @productversion Opera 10.0a_incorrect
		 */
		function get offsetY():Number;
		
		/**
		 * Returns the horizontal coordinate of the event relative to whole document. 
		 * 
		 * <p><strong>Note (IE):</strong> In order to get it in IE, too, add the scrolling offset of the 
		 * document to clientX/Y.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;pageX\pageY &amp; layerX\layerY example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 	function showCoords(evt){
		 * 		var form = document.forms.form_coords;
		 * 		var parent_id = evt.target.parentNode.id;
		 * 		form.parentId.value = parent_id;
		 * 		form.pageXCoords.value = evt.pageX;
		 * 		form.pageYCoords.value = evt.pageY;
		 * 		form.layerXCoords.value = evt.layerX;
		 * 		form.layerYCoords.value = evt.layerY;
		 * 	}
		 * &lt;/script&gt;
		 * 
		 * &lt;style type="text/css"&gt;
		 * 
		 * #d1 {
		 * 	border: solid blue 1px;
		 * 	padding: 20px;
		 * }
		 * 
		 * #d2 {
		 * 	position: absolute;
		 * 	top: 180px;
		 * 	left: 80%;
		 * 	right:auto;
		 * 	width: 40%;
		 * 	border: solid blue 1px;
		 * 	padding: 20px;
		 * }
		 * 
		 * #d3 {
		 * 	position: absolute;
		 * 	top: 240px;
		 * 	left: 20%;
		 * 	width: 50%;
		 * 	border: solid blue 1px;
		 * 	padding: 10px;
		 * }
		 * 
		 * &lt;/style&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onmousedown="showCoords(event)"&gt;
		 * 
		 * &lt;p&gt;To display the mouse coordinates please click anywhere on the page.&lt;/p&gt;
		 * 
		 * &lt;div id="d1"&gt;
		 * 	&lt;span&gt;This is an un-positioned div so clicking it will return
		 * 	layerX/layerY values almost the same as pageX/PageY values.&lt;/span&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;div id="d2"&gt;
		 * 	&lt;span&gt;This is a positioned div so clicking it will return layerX/layerY
		 * 	values that are relative to the top-left corner of this positioned
		 * 	element. Note the pageX\pageY properties still return the
		 * 	absolute position in the document, including page scrolling.&lt;/span&gt;
		 * 
		 * 	&lt;span&gt;Make the page scroll more! This is a positioned div so clicking it
		 * 	will return layerX/layerY values that are relative to the top-left
		 * 	corner of this positioned element. Note the pageX\pageY properties still
		 * 	return the absolute position in the document, including page
		 * 	scrolling.&lt;/span&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;div id="d3"&gt;
		 * 	&lt;form name="form_coords"&gt;
		 * 		Parent Element id: &lt;input type="text" name="parentId" size="7" /&gt;&lt;br /&gt;
		 * 		pageX:&lt;input type="text" name="pageXCoords" size="7" /&gt;  
		 * 		pageY:&lt;input type="text" name="pageYCoords" size="7" /&gt;&lt;br /&gt;
		 * 		layerX:&lt;input type="text" name="layerXCoords" size="7" /&gt;  
		 * 		layerY:&lt;input type="text" name="layerYCoords" size="7" /&gt;
		 * 	&lt;/form&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.pageX MDC - Event: pageX Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: pageX Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #pageY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
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
		function get pageX():Number;
		
		/**
		 * Returns the vertical coordinate of the event relative to the whole document.
		 * 
		 * <p><strong>Note (IE):</strong> In order to get it in IE, too, add the scrolling offset of the 
		 * document to clientX/Y.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;pageX\pageY &amp; layerX\layerY example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 	function showCoords(evt){
		 * 		var form = document.forms.form_coords;
		 * 		var parent_id = evt.target.parentNode.id;
		 * 		form.parentId.value = parent_id;
		 * 		form.pageXCoords.value = evt.pageX;
		 * 		form.pageYCoords.value = evt.pageY;
		 * 		form.layerXCoords.value = evt.layerX;
		 * 		form.layerYCoords.value = evt.layerY;
		 * 	}
		 * &lt;/script&gt;
		 * 
		 * &lt;style type="text/css"&gt;
		 * 
		 * #d1 {
		 * 	border: solid blue 1px;
		 * 	padding: 20px;
		 * }
		 * 
		 * #d2 {
		 * 	position: absolute;
		 * 	top: 180px;
		 * 	left: 80%;
		 * 	right:auto;
		 * 	width: 40%;
		 * 	border: solid blue 1px;
		 * 	padding: 20px;
		 * }
		 * 
		 * #d3 {
		 * 	position: absolute;
		 * 	top: 240px;
		 * 	left: 20%;
		 * 	width: 50%;
		 * 	border: solid blue 1px;
		 * 	padding: 10px;
		 * }
		 * 
		 * &lt;/style&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onmousedown="showCoords(event)"&gt;
		 * 
		 * &lt;p&gt;To display the mouse coordinates please click anywhere on the page.&lt;/p&gt;
		 * 
		 * &lt;div id="d1"&gt;
		 * 	&lt;span&gt;This is an un-positioned div so clicking it will return
		 * 	layerX/layerY values almost the same as pageX/PageY values.&lt;/span&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;div id="d2"&gt;
		 * 	&lt;span&gt;This is a positioned div so clicking it will return layerX/layerY
		 * 	values that are relative to the top-left corner of this positioned
		 * 	element. Note the pageX\pageY properties still return the
		 * 	absolute position in the document, including page scrolling.&lt;/span&gt;
		 * 
		 * 	&lt;span&gt;Make the page scroll more! This is a positioned div so clicking it
		 * 	will return layerX/layerY values that are relative to the top-left
		 * 	corner of this positioned element. Note the pageX\pageY properties still
		 * 	return the absolute position in the document, including page
		 * 	scrolling.&lt;/span&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;div id="d3"&gt;
		 * 	&lt;form name="form_coords"&gt;
		 * 		Parent Element id: &lt;input type="text" name="parentId" size="7" /&gt;&lt;br /&gt;
		 * 		pageX:&lt;input type="text" name="pageXCoords" size="7" /&gt;  
		 * 		pageY:&lt;input type="text" name="pageYCoords" size="7" /&gt;&lt;br /&gt;
		 * 		layerX:&lt;input type="text" name="layerXCoords" size="7" /&gt;  
		 * 		layerY:&lt;input type="text" name="layerYCoords" size="7" /&gt;
		 * 	&lt;/form&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.pageY MDC - Event: pageY Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: pageY Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #pageX
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
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
		function get pageY():Number;
		
		/**
		 * Returns the horizontal coordinate of the event within the screen as a whole. 
		 * 
		 * <p><strong>Note:</strong> When you trap events on the window, document, or other roomy elements, you can get the 
		 * coordinates of that event (e.g., a click) and route it properly, as the "clickMap" example demonstrates.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 	&lt;head&gt;
		 * 		&lt;title&gt;screenX\screenY example&lt;/title&gt;
		 * 
		 * 		&lt;script type="text/javascript"&gt;
		 * 			function showCoords(evt){
		 * 				alert(
		 * 				"screenX value: " + evt.screenX + "\n"
		 * 				+ "screenY value: " + evt.screenY + "\n"
		 * 			);
		 * 		}
		 * 
		 * 		&lt;/script&gt;
		 * 	&lt;/head&gt;
		 * 
		 * 	&lt;body onmousedown="showCoords(event)"&gt;
		 * 		&lt;p&gt;To display the mouse coordinates click anywhere on the page.&lt;/p&gt;
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * <listing>
		 * function checkClickMap(e) {
		 * 	if (e.screenX &lt; 50) doRedButton();
		 * 	if (50 &lt;= e.screenX) &lt; 100 doYellowButton();
		 * 	if (e.screenX &gt;= 100) doRedButton();
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534391(VS.85).aspx MSDN: screenX Property
		 * @see http://developer.mozilla.org/en/DOM/event.screenX  MDC - Event: screenX Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: screenX Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #clientX
		 * @see #clientY
		 * @see #screenY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
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
		function get screenX():Number;
		
		/**
		 * Returns the vertical coordinate of the event within the screen as a whole.
		 * 
		 * <p><strong>Note:</strong> When you trap events on the window, document, or other roomy elements, you can get the 
		 * coordinates of that event (e.g., a click) and route it properly, as the "clickMap" example demonstrates.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 	&lt;head&gt;
		 * 		&lt;title&gt;screenX\screenY example&lt;/title&gt;
		 * 
		 * 		&lt;script type="text/javascript"&gt;
		 * 			function showCoords(evt){
		 * 				alert(
		 * 				"screenX value: " + evt.screenX + "\n"
		 * 				+ "screenY value: " + evt.screenY + "\n"
		 * 			);
		 * 		}
		 * 
		 * 		&lt;/script&gt;
		 * 	&lt;/head&gt;
		 * 
		 * 	&lt;body onmousedown="showCoords(event)"&gt;
		 * 		&lt;p&gt;To display the mouse coordinates click anywhere on the page.&lt;/p&gt;
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * <listing>
		 * function checkClickMap(e) {
		 * 	if (e.screenX &lt; 50) doRedButton();
		 * 	if (50 &lt;= e.screenX) &lt; 100 doYellowButton();
		 * 	if (e.screenX &gt;= 100) doRedButton();
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534392(VS.85).aspx MSDN: screenY Property
		 * @see http://developer.mozilla.org/en/DOM/event.screenY  MDC - Event: screenY Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: screenY Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #clientX
		 * @see #clientY
		 * @see #screenY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
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
		function get screenY():Number;
		
		/**
		 * Returns the value of pageX. 
		 * 
		 * @example
		 * <listing>&lt;body onmousemove="window.status = 'X=' + window.event.x + ' Y=' + window.event.y"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535154(VS.85).aspx MSDN: x Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: x Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #y
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
		 * 
		 * @productversion IE 5.5_alternative
		 * @productversion IE 6.0_alternative
		 * @productversion IE 7.0_alternative
		 * @productversion IE 8.0_as_IE7_alternative
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.1b_no
		 * @productversion Safari 3.0_alternative
		 * @productversion Safari 3.1_alternative
		 * @productversion Safari 4.0b_alternative
		 * @productversion Chrome 1.0_alternative
		 * @productversion Chrome 2.0_alternative
		 * @productversion Opera 9.62_alternative
		 * @productversion Opera 10.0a_alternative
		 */
		function get x():Number;
		
		/**
		 * Returns the value of pageY. 
		 * 
		 * @example
		 * <listing>&lt;body onmousemove="window.status = 'X=' + window.event.x + ' Y=' + window.event.y"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535164(VS.85).aspx MSDN: y Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: y Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #x
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
		 * 
		 * @productversion IE 5.5_alternative
		 * @productversion IE 6.0_alternative
		 * @productversion IE 7.0_alternative
		 * @productversion IE 8.0_as_IE7_alternative
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.1b_no
		 * @productversion Safari 3.0_alternative
		 * @productversion Safari 3.1_alternative
		 * @productversion Safari 4.0b_alternative
		 * @productversion Chrome 1.0_alternative
		 * @productversion Chrome 2.0_alternative
		 * @productversion Opera 9.62_alternative
		 * @productversion Opera 10.0a_alternative
		 */
		function get y():Number;
	}
}