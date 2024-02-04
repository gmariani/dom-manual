package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * Contains information about the URL of the document and provides methods for changing that URL.
	 * 
	 * @example
	 * Replace the current document with the one at the given URL: 
	 * <listing>
	 * function goMoz() {
	 * 	window.location = "http://www.mozilla.org";
	 * } 
	 * 
	 * // in html: &lt;button onclick="goMoz();"&gt;Mozilla&lt;/button&gt;</listing>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms535866%28VS.85%29.aspx MSDN - location Object
	 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
	 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 * @modified WindowObject 1
	 */
	public class Location {
		
		/**
		 * The part of the URL that follows the # symbol, including the # symbol.
		 * 
		 * <p><strong>Note:</strong> If there is no number sign, this property returns an empty string.</p>
		 * 
		 * @example
		 * You can read them to get information about the current URL or set them to navigate to another URL.
		 * The example contains the value of the property of the following URL: <code>http://[www.google.com]:80/search?q=devmo#test</code>
		 * 
		 * <p>hash: <code>#test</code></p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533775%28VS.85%29.aspx MSDN - hash Property
		 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
		 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified WindowObject 1
		 */
		public function get hash():DOMString { return null; };
		public function set hash(value:DOMString):void { };
		
		/**
		 * The host name (without the port number or square brackets).
		 * 
		 * <p><strong>Note:</strong> The host property is the concatenation of the hostname and port properties, separated by a colon (hostname:port). When the port property is null, the host property is the same as the hostname property. </p>
		 * 
		 * <p><strong>Note:</strong> The host property may be set at any time, although it is safer to set the href property to change a location. If the specified host cannot be found, an error is returned. </p>
		 * 
		 * @example
		 * You can read them to get information about the current URL or set them to navigate to another URL.
		 * The example contains the value of the property of the following URL: <code>http://[www.google.com]:80/search?q=devmo#test</code>
		 * 
		 * <p>host: <code>[www.google.com]:80</code></p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533784%28VS.85%29.aspx MSDN - host Property
		 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
		 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified WindowObject 1
		 */
		public function get host():DOMString { return null; };
		public function set host(value:DOMString):void { };
		
		/**
		 * This attribute represents the name or IP address of the network location without any port number.
		 * 
		 * <p><strong>Note:</strong> If no host name is available, this property returns an empty string. </p>
		 * 
		 * @example
		 * You can read them to get information about the current URL or set them to navigate to another URL.
		 * The example contains the value of the property of the following URL: <code>http://[www.google.com]:80/search?q=devmo#test</code>
		 * 
		 * <p>hostname: <code>www.google.com</code></p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533785%28VS.85%29.aspx MSDN - hostname Property
		 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
		 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified WindowObject 1
		 */
		public function get hostname():DOMString { return null; };
		public function set hostname(value:DOMString):void { };
		
		/**
		 * Sets or retrieves the entire URL as a string.
		 * 
		 * @example
		 * You can read them to get information about the current URL or set them to navigate to another URL.
		 * The example contains the value of the property of the following URL: <code>http://[www.google.com]:80/search?q=devmo#test</code>
		 * 
		 * <p>href: <code>http://[www.google.com]:80/search?q=devmo#test</code></p>
		 * 
		 * <p>This example shows a URL list. The user is taken to the URL selected from the options, if the selection is different from the list's default value.</p>
		 * <listing>
		 * &lt;SELECT onchange="window.location.href=this.options[this.selectedIndex].value"&gt;
		 * 	&lt;OPTION VALUE="http://www.microsoft.com/ie"&gt;Internet Explorer&lt;/OPTION&gt;
		 * 	&lt;OPTION VALUE="http://www.microsoft.com"&gt;Microsoft Home&lt;/OPTION&gt;
		 * 	&lt;OPTION VALUE="http://msdn.microsoft.com"&gt;Developer Network&lt;/OPTION&gt;
		 * &lt;/SELECT&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533867%28VS.85%29.aspx MSDN - href Property
		 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
		 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified WindowObject 1
		 */
		public function get href():DOMString { return null; };
		public function set href(value:DOMString):void { };
		
		/**
		 * The path (relative to the host).
		 * 
		 * @example
		 * You can read them to get information about the current URL or set them to navigate to another URL.
		 * The example contains the value of the property of the following URL: <code>http://[www.google.com]:80/search?q=devmo#test</code>
		 * 
		 * <p>pathname: <code>/search</code></p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534332%28VS.85%29.aspx MSDN - pathname Property
		 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
		 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified WindowObject 1
		 */
		public function get pathname():DOMString { return null; };
		public function set pathname(value:DOMString):void { };
		
		/**
		 * This attribute represents the port number of the network location.
		 * 
		 * @example
		 * You can read them to get information about the current URL or set them to navigate to another URL.
		 * The example contains the value of the property of the following URL: <code>http://[www.google.com]:80/search?q=devmo#test</code>
		 * 
		 * <p>port: <code>80</code></p>
		 * 
		 * <p>This example function returns the port property of two <code>a</code> elements.</p>
		 * <listing>
		 * &lt;script&gt;
		 * function getPort() {
		 * 	alert ("FTP: " + oFtp.port + "\n" + "HTTP: " + oHttp.port);
		 * }
		 * &lt;/script&gt;
		 * 
		 * &lt;a href="ftp://www.microsoft.com" onclick="getPort();" id=oFtp&gt;ftp&lt;/a&gt;
		 * &lt;a href="http://www.microsoft.com" onclick="getPort();" id=oHttp&gt;http&lt;/a&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534342%28VS.85%29.aspx MDC - port Property
		 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
		 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified WindowObject 1
		 */
		public function get port():DOMString { return null; };
		public function set port(value:DOMString):void { };
		
		/**
		 * This attribute represents the scheme of the URI including the trailing colon (:).
		 * 
		 * <p><strong>Note (IE):</strong> The protocol property specifies how to transfer information from the host to the client. Windows Internet Explorer supports several predefined protocols, including http and ftp.</p>
		 * 
		 * <p><strong>Note (IE):</strong> The document, img, and location objects expose the protocol property as read-only.
		 * location.protocol property returns the initial substring of a URL, including the first colon (for example, http:).
		 * However, document.protocol returns the expanded text of the protocol acronym. For example, it returns the http 
		 * protocol as Hypertext Transfer Protocol.</p>
		 * 
		 * @example
		 * You can read them to get information about the current URL or set them to navigate to another URL.
		 * The example contains the value of the property of the following URL: <code>http://[www.google.com]:80/search?q=devmo#test</code>
		 * 
		 * <p>protocol: <code>http:</code></p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534353%28VS.85%29.aspx MSDN - protocol Property
		 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
		 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified WindowObject 1
		 */
		public function get protocol():DOMString { return null; };
		public function set protocol(value:DOMString):void { };
		
		/**
		 * The part of the URL that follows the ? symbol, including the ? symbol.
		 * 
		 * @example
		 * You can read them to get information about the current URL or set them to navigate to another URL.
		 * The example contains the value of the property of the following URL: <code>http://[www.google.com]:80/search?q=devmo#test</code>
		 * 
		 * <p>search: <code>?q=devmo</code></p>
		 * 
		 * <p>Send a string of data to the server by modifying the search property: </p>
		 * <listing>
		 * function sendData(dat) {
		 * 	window.location.search = dat;
		 * }
		 * 
		 * // in html: &lt;button onclick="sendData('Some data');"&gt;Send data&lt;/button&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534620%28VS.85%29.aspx MSDN - search Property
		 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
		 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified WindowObject 1
		 */
		public function get search():DOMString { return null; };
		public function set search(value:DOMString):void { };
		
		/**
		 * Load the document at the provided URL.
		 * 
		 * @param	url The URL of the document to load.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536342%28VS.85%29.aspx MSDN - assign Method
		 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
		 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified WindowObject 1
		 */
		public function assign(url:DOMString):void { };
		
		/**
		 * Reload the document from the current URL.
		 * 
		 * @param	forceget <strong>Not in W3 specification</strong> When it is true, causes the page to always be reloaded from 
		 * the server. If it is false or not specified, the browser may reload the page 
		 * from its cache.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536691%28VS.85%29.aspx MSDN - reload Method
		 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
		 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified WindowObject 1
		 */
		public function reload(forceget:Boolean):void { };
		
		/**
		 * Replace the current document with the one at the provided URL. The difference 
		 * from the assign() method is that after using replace() the current page will 
		 * not be saved in session history, meaning the user won't be able to use the 
		 * Back button to navigate to it.
		 * 
		 * @param	url The URL to insert into the session history.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536712%28VS.85%29.aspx MSDN - replace Method
		 * @see http://developer.mozilla.org/en/DOM/window.location MDC - window.location
		 * @see http://www.w3.org/TR/Window/#location W3C - Window.location
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified WindowObject 1
		 */
		public function replace(url:DOMString):void { };
	}
}