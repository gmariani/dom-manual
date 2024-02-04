package cssom.view {
	
	/**
	 * Has properties that hold information about the screen.
	 * 
	 * <p>All browser compatibility information was obtained via Quirksmode.</p>
	 * 
	 * @see http://www.w3.org/TR/cssom-view/#the-screen-interface W3C CSSOM Views Specification: Screen
	 * @see http://www.quirksmode.org/dom/w3c_cssom.html  Quirksmode: W3C DOM Compatibility - CSS Object Model View
	 * 
	 * @playerversion CSSOMView 0
	 * @since DOMCore 0
	 * @since DOMCore 3
	 */
	public interface Screen {
		
		/**
		 * Returns the amount of vertical space available to the window on the screen. 
		 * 
		 * @example
		 * <listing>
		 * if (window.screen.availHeight != window.screen.height) {
		 * 	// something's in the way!
		 * 	// use available to size window
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533487(VS.85).aspx  MSDN: availHeight Propety
		 * @see http://developer.mozilla.org/en/DOM/window.screen.availHeight  MDC - Window: availHeight Propety
		 * @see http://www.w3.org/TR/cssom-view/#the-screen-interface  W3C - CSSOM View: availHeight Propety
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#screenview  Quirksmode: ScreenView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @since DOMCore 3
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
		function get availHeight():Number;
		
		/**
		 * Returns the amount of horizontal space in pixels available to the window. 
		 * 
		 * @example
		 * <listing>
		 * if (window.screen.availHeight != window.screen.height) {
		 * 	// something's in the way!
		 * 	// use available to size window
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533488(VS.85).aspx  MSDN: availWidth Propety
		 * @see http://developer.mozilla.org/en/DOM/window.screen.availWidth  MDC - Window: availWidth Propety
		 * @see http://www.w3.org/TR/cssom-view/#the-screen-interface  W3C - CSSOM View: availWidth Propety
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#screenview  Quirksmode: ScreenView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @since DOMCore 3
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
		function get availWidth():Number;
		
		/**
		 * Returns the lowest number of bits from the color components of the output device.
		 * 
		 * @example
		 * Check the color depth of the screen
		 * <listing>
		 * if ( window.screen.colorDepth &lt; 8) {
		 * 	// use low-color version of page
		 * } else { 
		 * 	// use regular, colorful page
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533578(VS.85).aspx  MSDN: colorDepth Propety
		 * @see http://developer.mozilla.org/en/DOM/window.screen.colorDepth  MDC - Window: colorDepth Propety
		 * @see http://www.w3.org/TR/cssom-view/#the-screen-interface  W3C - CSSOM View: colorDepth Propety
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#screenview  Quirksmode: ScreenView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @since DOMCore 3
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
		function get colorDepth():Number;
		
		/**
		 * Returns the height of the screen in pixels. 
		 * 
		 * @example
		 * <listing>
		 * if (window.screen.availHeight != window.screen.height) {
		 * 	// something is occupying some screen real estate!
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533779(VS.85).aspx  MSDN: height Propety
		 * @see http://developer.mozilla.org/en/DOM/window.screen.height  MDC - Window: height Propety
		 * @see http://www.w3.org/TR/cssom-view/#the-screen-interface  W3C - CSSOM View: height Propety
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#screenview  Quirksmode: ScreenView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @since DOMCore 3
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
		function get height():Number;
		
		/**
		 * Returns the width of the screen. 
		 * 
		 * @example
		 * Crude way to check that the screen is at 1024x768
		 * <listing>
		 * if (window.screen.width &gt; 1000) {
		 * 	// resolution is below 10 x 7
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535144(VS.85).aspx  MSDN: width Propety
		 * @see http://developer.mozilla.org/en/DOM/window.screen.width  MDC - Window: width Propety
		 * @see http://www.w3.org/TR/cssom-view/#the-screen-interface  W3C - CSSOM View: width Propety
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#screenview  Quirksmode: ScreenView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @since DOMCore 3
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
		function get width():Number;
		
		/**
		 * Returns the lowest number of bits from the color components of the output device.
		 * 
		 * @example
		 * <listing>
		 * // if there is not adequate bit depth choose a simpler color
		 * if ( window.screen.pixelDepth > 8 ) {
		 * 	document.style.color = "#FAEBD7";
		 * } else {
		 * 	document.style.color = "#FFFFFF";
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.screen.pixelDepth  MDC - Window: pixelDepth Propety
		 * @see http://www.w3.org/TR/cssom-view/#the-screen-interface  W3C - CSSOM View: pixelDepth Propety
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#screenview  Quirksmode: ScreenView properties
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @since DOMCore 3
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
		function get pixelDepth():Number;
	}
}