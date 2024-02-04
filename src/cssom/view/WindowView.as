package cssom.view {
	
	/**
	 * Has properties that hold the dimensions of the entire browser window.
	 * 
	 * <p>Some browser compatibility information was obtained via Quirksmode.</p>
	 * 
	 * <p>Some browser compatibility information was obtained via Aptana.</p>
	 * 
	 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface W3C CSSOM Views Specification: WindowView
	 * @see http://www.quirksmode.org/dom/w3c_cssom.html  Quirksmode: W3C DOM Compatibility - CSS Object Model View
	 * 
	 * @playerversion CSSOMView 0
	 * @since DOMCore 0
	 * @modified HTML 5
	 */
	public interface WindowView {
		/**
		 * Width of the browser window viewport including, if rendered, the vertical scrollbar.
		 * 
		 * <p><strong>Note:</strong> The innerWidth property does not include the sidebar. So when the sidebar is expanded, the innerWidth property value diminishes.</p>
		 * 
		 * <p><strong>Note:</strong> The innerWidth property will be supported in any window object like a window, a frame, a frameset or a secondary window.</p>
		 * 
		 * @example
		 * Assuming a frameset
		 * <listing>
		 * var intFrameWidth = window.innerWidth; // or
		 * var intFrameWidth = self.innerWidth; // will return the width of the frame viewport within the frameset
		 * var intFramesetWidth = parent.innerWidth; // will return the width of the viewport of the closest frameset
		 * var intOuterFramesetWidth = top.innerWidth; // will return the width of the viewport of the outermost frameset</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.innerWidth  MDC - Window: innerWidth Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: innerWidth Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see #outerWidth
		 * @see #innerHeight
		 * @see #outerHeight
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified HTML 5
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
		function get innerWidth():Number;
		
		/**
		 * Height of the browser window viewport including, if rendered, the horizontal scrollbar.
		 * 
		 * <p><strong>Note:</strong> The innerHeight property will be supported in any window object like a window, a frame, a frameset or a secondary window.</p>
		 * 
		 * @example
		 * Assuming a frameset
		 * <listing>
		 * var intFrameHeight = window.innerHeight; // or
		 * var intFrameHeight = self.innerHeight; // will return the height of the frame viewport within the frameset
		 * var intFramesetHeight = parent.innerHeight; // will return the height of the viewport of the closest frameset
		 * var intOuterFramesetHeight = top.innerHeight; // will return the height of the viewport of the outermost frameset</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.innerHeight  MDC - Window: innerHeight Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: innerHeight Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see #outerWidth
		 * @see #innerWidth
		 * @see #outerHeight
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified HTML 5
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
		function get innerHeight():Number;
		
		/**
		 * Gets the width of the outside of the browser window. window.outerWidth represents the width of 
		 * the whole browser window including sidebar (if expanded), window chrome and window [re-]sizing borders/handles.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.outerWidth  MDC - Window: outerWidth Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: outerWidth Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see #innerWidth
		 * @see #innerHeight
		 * @see #outerHeight
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified HTML 5
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
		function get outerWidth():Number;
		
		/**
		 * Gets the height of the outside of the browser window. window.outerHeight represents the height of 
		 * the whole browser window including toolbars and window chrome.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.outerHeight  MDC - Window: outerHeight Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: outerHeight Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see #innerWidth
		 * @see #innerHeight
		 * @see #outerWidth
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified HTML 5
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
		function get outerHeight():Number;
		
		/**
		 * Returns the number of pixels that the document has already been scrolled horizontally. 
		 * 
		 * <p><strong>Note:</strong> <code>window.pageXOffset == window.scrollX; // always true</code></p>
		 * 
		 *  @example
		 * <listing>
		 * // make sure and go over to the second horizontal page
		 * if (window.scrollX) {
		 * 	scroll(0,0);
		 * }
		 * scrollBy(400, 0);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.pageXOffset  MDC - Window: pageXOffset Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: pageXOffset Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see #pageYOffset
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified HTML 5
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
		function get pageXOffset():Number;
		
		/**
		 * Returns the number of CSS pixels the user has scrolled towards the bottom within the viewport. 
		 * 
		 * <p><strong>Note:</strong> <code>window.pageYOffset == window.scrollY; // always true</code></p>
		 * 
		 * @example
		 * <listing>
		 * // make sure and go over to the second horizontal page
		 * if (window.scrollY) {
		 * 	scroll(0,0);
		 * }
		 * scrollByPages(1);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.pageYOffset  MDC - Window: pageYOffset Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: pageYOffset Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see pageXOffset
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified HTML 5
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
		function get pageYOffset():Number;
		
		/**
		 * Returns the horizontal distance of the left border of the user's browser from the left side of the screen. 
		 * 
		 * <p><strong>Note (Opera):</strong> Opera calculates the coordinates of the specific tab window relative to 
		 * the encompassing browser window. This is understandable given its way of working with 
		 * windows, but strictly speaking it's a bug. It should give the coordinates of the encompassing 
		 * browser window relative to the screen.</p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.screenX  MDC - Window: screenX Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: screenX Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see #screenY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified HTML 5
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
		 * @productversion Opera 9.62_incorrect
		 * @productversion Opera 10.0a_incorrect
		 */
		function get screenX():Number;
		
		/**
		 * Returns the vertical distance of the top border of the user's browser from the top edge of the screen. 
		 * 
		 * <p><strong>Note (Opera):</strong> Opera calculates the coordinates of the specific tab window relative to 
		 * the encompassing browser window. This is understandable given its way of working with 
		 * windows, but strictly speaking it's a bug. It should give the coordinates of the encompassing 
		 * browser window relative to the screen.</p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.screenY  MDC - Window: screenY Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: screenY Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see #screenX
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified HTML 5
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
		 * @productversion Opera 9.62_incorrect
		 * @productversion Opera 10.0a_incorrect
		 */
		function get screenY():Number;
		
		/**
		 * Returns an Media object.
		 * 
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: media Property
		 * 
		 * @playerversion CSSOMView 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.1b_no
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0a_no
		 */
		function get media():Media;
		
		/**
		 * Returns a reference to the screen object associated with the window. 
		 * 
		 * @example
		 * <listing>
		 * if (screen.pixelDepth &lt; 8) {
		 * 	// use low-color version of page
		 * } else { 
		 * 	// use regular, colorful page
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.screen MDC - Window: screen Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface W3C - CSSOM View: screen Property
		 * @see http://www.aptana.com/reference/html/api/Window.html#Window.screen  Aptana: Window.screen Property
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified HTML 5
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
		function get screen():Screen;
	}
}