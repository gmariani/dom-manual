package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * Objects implementing the Navigator interface must also implement the NavigatorID interface. This interface is defined separately so 
	 * that other specifications can re-use parts of the Navigator interface.
	 * 
	 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-navigator W3C - HTML 5: NavigatorID
	 * 
	 * @playerversion HTML 5
	 */
	public interface NavigatorID {
		
		/**
		 * Returns the official name of the browser. 
		 * 
		 * @example 
		 * <listing>
		 * dump(window.navigator.appName);
		 * // prints "Navigator" to the console for NS6</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533079%28VS.85%29.aspx MSDN - appName Property
		 * @see http://developer.mozilla.org/en/Navigator.appName MDC - window.navigator.appName
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-navigator W3C - HTML 5: NavigatorID
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified HTML 5
		 */
		function get appName():DOMString;
		
		/**
		 * Returns the version of the browser.
		 * 
		 * <p><strong>Note:</strong> The window.navigator.userAgent property also contains the version number 
		 * (example: "Mozilla/5.0 (Windows; U; Win98; en-US; rv:0.9.2) Gecko/20010725 Netscape 6/6.1"), but you 
		 * should be aware of how easy it is to change the user agent string and "spoof" other browsers, platforms, 
		 * or user agents, and also how cavalier the browser vendor themselves are with these properties. 
		 * The window.navigator.appVersion and window.navigator.userAgent properties are quite often used in 
		 * "browser sniffing" code: scripts that attempt to find out what kind of browser you are using and 
		 * adjust pages accordingly.</p>
		 * 
		 * @example
		 * <listing>
		 * if ( navigator.appVersion.charAt(0) == "5" ) { 
		 * 	// browser is putatively a v5 browser
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533080%28VS.85%29.aspx MSDN - appVersion Property
		 * @see http://developer.mozilla.org/en/Navigator.appVersion MDC - window.navigator.appVersion
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-navigator W3C - HTML 5: NavigatorID
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified HTML 5
		 */
		function get appVersion():DOMString;
		
		/**
		 * Returns a string representing the platform of the browser.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Platform Code</th><th>Platform Name</th></tr>
		 * 	<tr>
		 * 		<td>HP-UX</td><td><code>HP UNIX-based computers.</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>MacPPC</td><td>Macintosh PowerPC-based computers.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Mac68K</td><td>Macintosh 68K-based computers.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>MacIntel</td><td>Macintosh Intel-based computers.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Win32</td><td><code>Microsoft Windows 32-bit platform.</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Win16</td><td>Windows 16-bit platform.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>WinCE</td><td>Windows CE platform.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Linux i686</td><td>Linux i686</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Other</td><td>Other</td>
		 * 	</tr>
		 * </table>
		 * 
		 * <p><strong>Note (Mozilla):</strong> Unless your code is privileged (chrome or at least has the UniversalBrowserRead 
		 * privilege), it may get the value of the general.platform.override preference instead of the true platform. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534340%28VS.85%29.aspx MSDN - platform Property
		 * @see http://developer.mozilla.org/en/Navigator.platform MDC - window.navigator.platform
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-navigator W3C - HTML 5: NavigatorID
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified HTML 5
		 */
		function get platform():DOMString;
		
		/**
		 * Returns the user agent string for the current browser. 
		 * 
		 * <p><strong>Note:</strong> Browser identification based on detecting the user agent string is 
		 * <strong>unreliable</strong> and <strong>is not recommended</strong>, as the user agent string is user configurable.
		 * 
		 * <ul>
		 * <li>Mozilla Suite and Firefox can use the preference "general.useragent.override" in about:config. Some Firefox extensions or multi-bar do that. </li>
		 * <li>Opera 6+ allows users to set the browser identification string via a menu </li>
		 * <li>Microsoft Internet Explorer uses the Windows registry </li>
		 * <li>Safari and iCab allow users to change the browser user agent string to predefined Internet Explorer or Netscape strings via a menu. </li>
		 * </ul>
		 * 
		 * </p>
		 * 
		 * @example
		 * <listing>
		 * alert(window.navigator.userAgent);
		 * // alerts "Mozilla/5.0 (Windows; U; Win98; en-US; rv:0.9.2) Gecko/20010725 Netscape6/6.1"</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534712%28VS.85%29.aspx MSDN - userAgent Property
		 * @see http://developer.mozilla.org/en/Navigator.userAgent MDC - window.navigator.userAgent
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-navigator W3C - HTML 5: NavigatorID
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified HTML 5
		 */
		function get userAgent():DOMString;
	}
}