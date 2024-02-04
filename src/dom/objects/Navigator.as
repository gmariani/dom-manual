package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * Contains information about the application running the script. 
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms535867%28VS.85%29.aspx MSDN - navigator Object
	 * @see http://developer.mozilla.org/en/DOM_Client_Object_Cross-Reference/navigator MDC - navigator
	 * @see http://developer.mozilla.org/en/DOM/window.navigator MDC - window.navigator
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 * @modified HTML 5
	 */
	public class Navigator implements NavigatorID, NavigatorOnLine, NavigatorAbilities {
		
		/**
		 * Returns the internal "code" name of the current browser. 
		 * 
		 * <p><strong>Note:</strong> Mozilla, Netscape 6, and IE5 all use the internal name "Mozilla."</p>
		 * 
		 * @example Mozilla
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533077%28VS.85%29.aspx MSDN - appCodeName Property
		 * @see http://developer.mozilla.org/en/Navigator.appCodeName MDC - window.navigator.appCodeName
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get appCodeName():DOMString { return null; };
		
		/**
		 * Retrieves the application's minor version value. 
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533077%28VS.85%29.aspx MSDN - appMinorVersion Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get appMinorVersion():DOMString { return null; };
		
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
		public function get appName():DOMString { return null; };
		
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
		public function get appVersion():DOMString { return null; };
		
		/**
		 * Returns the build identifier of the browser. The build ID is in form YYYYMMDDHH.
		 * 
		 * <p><strong>Note:</strong> Available in Firefox 2 (Gecko 1.8.1) and later.</p>
		 * 
		 * @example
		 * <listing>
		 * dump(window.navigator.buildID); 
		 * // prints "2006090803" to the console</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.buildID window.navigator.buildID MDC - window.navigator.buildID
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get buildID():DOMString { return null; };
		
		/**
		 * Retrieves the current browser language. 
		 * 
		 * <p><strong>Note (IE):</strong> This property does not indicate the language or languages set by the user in Language 
		 * Preferences, located in the Internet Options dialog box.</p>
		 * 
		 * <p><strong>Note (IE):</strong> In Microsoft Internet Explorer 4.0 and earlier, the browserLanguage property reflects 
		 * the language of the installed browser's user interface. For example, if you install a Japanese version of Windows 
		 * Internet Explorer on an English operating system, browserLanguage would be ja.</p>
		 * 
		 * <p><strong>Note (IE):</strong> In Internet Explorer 5 and later, however, the browserLanguage property reflects the language 
		 * of the operating system regardless of the installed language version of Internet Explorer. However, if Microsoft Windows 
		 * 2000 MultiLanguage version is installed, the browserLanguage property indicates the language set in the operating system's 
		 * current menus and dialogs, as found in the Regional Options of the Control Panel. For example, if you install a 
		 * Japanese version of Internet Explorer 5 on an English (United Kingdom) operating system, browserLanguage would be en-gb. 
		 * If you install Windows 2000 MultiLanguage version and set the language of the menus and dialogs to French, browserLanguage 
		 * would be fr, even though you have a Japanese version of Internet Explorer.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533542%28VS.85%29.aspx MSDN - browserLanguage Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get browserLanguage():DOMString { return null; };
		
		/**
		 * Returns a boolean indicating whether cookies are enabled in the browser or not. 
		 * 
		 * <p><strong>Note (IE):</strong> CookieEnabled does not check the status of session cookies.</p>
		 * 
		 * <p><strong>Note (Mozilla):</strong> Due to bug 230350, cookieEnabled may return the wrong result in Gecko-based applications. </p>
		 * 
		 * @example
		 * <listing>
		 * if (!navigator.cookieEnabled) { 
		 * 	// let the user know that enabling cookies makes the web page much more useful
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533694%28VS.85%29.aspx MSDn - cookieEnabled Property
		 * @see http://developer.mozilla.org/en/Navigator.cookieEnabled MDC - window.navigator.cookieEnabled
		 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=230350 bug 230350
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get cookieEnabled():Boolean { return false; };
		
		/**
		 * Retrieves a string denoting the CPU class. 
		 * 
		 * <table class="innertable">
		 * 	<tr><th>CPU Class</th><th>CPU Name</th></tr>
		 * 	<tr>
		 * 		<td>x86</td><td><code>Intel processor.</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>68K</td><td>Motorola processor.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Alpha</td><td>Digital processor.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>PPC</td><td><code>Motorola processor.</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Other</td><td>Other CPU classes, including Sun SPARC.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533697%28VS.85%29.aspx MSDN - cpuClass Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get cpuClass():DOMString { return null; };
		
		/**
		 * Returns a string representing the language version of the browser. Examples 
		 * of valid language codes include "en", "en-US", "fr", "es-ES", etc. 
		 * 
		 * <p><strong>Note:</strong> This property also shows up as part of the navigator.userAgent string.</p>
		 * 
		 * @example
		 * <listing>
		 * if ( window.navigator.language != "en" ) {       
		 * 	doLangSelect(window.navigator.language); 
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.language MDC - window.navigator.language
		 * @see #systemLanguage
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get language():DOMString { return null; };
		
		/**
		 * Returns a MimeTypeArray object, which contains a list of MimeType objects representing the MIME types recognized by the browser. 
		 * 
		 * <p><strong>Note:</strong> The zeroth element in mimeTypes (the "Mozilla Default Plug-in" MimeType object) has a type property of 
		 * * instead of a typical MIME format like "image/x-macpaint"</p>
		 * 
		 * @example
		 * <listing>alert(window.navigator.mimeTypes.item(0).description); // alerts "Mozilla Default Plug-in"</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.mimeTypes MDC - window.navigator.mimeTypes
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get mimeTypes():MimeTypeArray { return null; };
		
		/**
		 * Returns a boolean indicating whether the browser is working online. 
		 * 
		 * <p><strong>Note (IE):</strong>  In Windows Internet Explorer 8 and later, the onLine property returns true if both of the 
		 * following conditions are true: 
		 * <ul>
		 * <li>the system is able to communicate with the network</li>
		 * <li>the system is not in global offline mode (Users can modify the global offline state by choosing Work Offline on the File menu.)</li>
		 * </ul>
		 * If either of these conditions is false, the onLine property returns false.
		 * </p>
		 * 
		 * <p><strong>Note (IE):</strong> In Microsoft Internet Explorer 4.0 through Internet Explorer 7, the onLine property indicates whether the 
		 * system is in global offline mode. It does not indicate whether the system can communicate with the network.</p>
		 * 
		 * @example
		 * <listing>alert(navigator.onLine ? "You're online" : "You're offline");</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534307%28VS.85%29.aspx MSDN - onLine Property
		 * @see http://developer.mozilla.org/en/DOM/window.navigator.onLine MDC - window.navigator.onLine
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified HTML 5
		 */
		public function get onLine():Boolean { return false; };
		
		/**
		 * Returns a string that represents the current operating system. 
		 * 
		 * @example
		 * <listing>
		 * function osInfo() { 
		 * 	alert(window.navigator.oscpu); 
		 * }
		 * // returns: Windows NT 6.0</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.oscpu MDC - window.navigator.oscpu
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get oscpu():DOMString { return null; };
		
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
		public function get platform():DOMString { return null; };
		
		/**
		 * Returns an PluginArray object, listing the plugins installed in the application. 
		 * 
		 * <strong>IE:</strong> Retrieves a collection of all embed objects within the document.
		 * 
		 * <p><strong>Note (IE):</strong> The collection is an alias for the embeds collection on the document. </p>
		 * 
		 * @example
		 * <listing>
		 * &lt;script type="text/javascript"&gt;
		 * 	var L = navigator.plugins.length;
		 * 	document.write(L.toString().bold() + " Plugin(s)".bold());
		 * 	document.write("&lt;br&gt;");
		 * 	document.write("Name | Filename | description".bold());
		 * 	document.write("&lt;br&gt;");
		 * 	for(var i=0; i&lt;L; i++) {
		 * 		document.write(navigator.plugins[i].name);
		 * 		document.write(" | ");
		 * 		document.write(navigator.plugins[i].filename);
		 * 		document.write(" | ");
		 * 		document.write(navigator.plugins[i].description);
		 * 		document.write("&lt;br&gt;");
		 * 	}
		 * &lt;/script&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537477%28VS.85%29.aspx MSDN - plugins Collection
		 * @see http://developer.mozilla.org/en/Navigator.plugins MDC - window.navigator.plugins
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get plugins():PluginArray { return null; };
		
		/**
		 * Returns the product name of the current browser.
		 * 
		 * @example
		 * <listing>
		 * &lt;script&gt;
		 * function prod() { 
		 * 	dt = document.getElementById("d"); 
		 * 	dt.innerHTML = window.navigator.product; 
		 * }
		 * &lt;/script&gt; 
		 * &lt;button onclick="prod();"&gt;product&lt;/button&gt; 
		 * &lt;div id="d"&gt; &lt;/div&gt; 
		 * // returns "Gecko"</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.product MDC - window.navigator.product
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get product():DOMString { return null; };
		
		/**
		 * Returns the build number of the current browser.
		 * 
		 * <p><strong>Note:</strong> On IE, this property returns undefined. </p>
		 * 
		 * <p><strong>Note:</strong> On Apple Safari this property always returns 20030107.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;script&gt; 
		 * function prodsub() {
		 * 	dt = document.getElementById("d").childNodes[0];
		 * 	dt.data = window.navigator.productSub;
		 * } 
		 * &lt;/script&gt; 
		 * &lt;button onclick="prodsub();"&gt;productSub&lt;/button&gt;
		 * // returns: 20010725</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.productSub MDC - window.navigator.productSub
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get productSub():DOMString { return null; };
		
		/**
		 * Returns an empty string. In Netscape 4.7x, returns "US &amp; CA domestic policy" or "Export policy". 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.navigator.securityPolicy MDC - window.navigator.securityPolicy
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get securityPolicy():DOMString { return null; };
		
		/**
		 * Retrieves the default language used by the operating system. 
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534653%28VS.85%29.aspx MSDN - systemLanguage Property
		 * @see #language
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get systemLanguage():DOMString { return null; };
		
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
		public function get userAgent():DOMString { return null; };
		
		/**
		 * Retrieves the operating system's natural language setting.
		 * 
		 * <p><strong>Note (IE):</strong> This property reflects the setting in the "Your locale (location)" 
		 * box in the Regional Options of Control Panelfor example, "English (United States).</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534713%28VS.85%29.aspx MSDN - userLanguage Property
		 * @see http://msdn.microsoft.com/en-us/library/ms533052(VS.85).aspx MSDN - Language Codes
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get userLanguage():DOMString { return null; };
		
		/**
		 * Provides methods that allow a script to request read access to and perform read actions on a user's profile information.
		 * 
		 * <p><strong>Note (IE):</strong> As of Windows Internet Explorer 7, this object is obsolete and should not be used.</p>
		 * 
		 * @example
		 * <listing>
		 * // Queue a request for read access to multiple profile attributes.
		 * navigator.userProfile.addReadRequest("vcard.displayname");
		 * navigator.userProfile.addReadRequest("vcard.gender");
		 * 
		 * // Request access to the information.
		 * navigator.userProfile.doReadRequest(usage-code, "Acme Corporation");
		 * 
		 * // Now perform read operations to access the information.
		 * name = navigator.userProfile.getAttribute("vcard.displayname");
		 * gender = navigator.userProfile.getAttribute("vcard.gender");
		 * 
		 * // The script can now use the 'name' and 'gender' variables
		 * // to personalize content or to send information back to the server.
		 * 
		 * // Clear the request queue to prepare for later information requests.
		 * navigator.userProfile.clearRequest();</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535915%28VS.85%29.aspx MSDN - userProfile Object
		 * 
		 * @playerversion Non-Standard Microsoft
		 * @playerversion Obsolete IE7
		 */
		public function get userProfile():UserProfile { return null; };
		
		/**
		 * Returns the vendor name of the current browser.
		 * 
		 * @example
		 * <listing>
		 * window.navigator.vendor 
		 * // returns "Netscape6"</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.vendor MDC - window.navigator.vendor
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get vendor():DOMString { return null; };
		
		/**
		 * Returns the vendor version number.
		 * 
		 * @example
		 * <listing>
		 * window.navigator.vendorSub 
		 * // returns "6.1" where the vendor part of userAgent is 
		 * // Netscape6/6.1</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.vendor MDC - window.navigator.vendorSub
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get vendorSub():DOMString { return null; };
		
		/**
		 * Indicates whether the host browser is Java-enabled or not. 
		 * 
		 * @example
		 * <listing>
		 * if (window.navigator.javaEnabled()) {
		 * 	// browser has java
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536610%28VS.85%29.aspx MSDN - javaEnabled Method
		 * @see http://developer.mozilla.org/en/Navigator.javaEnabled MDC - window.navigator.javaEnabled()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function javaEnabled():Boolean { return false; };
		
		/**
		 * Allows code to determine whether or not a given resource is available. 
		 * 
		 * <p><strong>Note:</strong> Security exceptions can occur if the requested URI is not from the same origin.</p>
		 * 
		 * @example
		 * <listing>
		 * var available = navigator.mozIsLocallyAvailable("my-image-file.png", true);
		 * if (available) {
		 * 	/~~ the offline resource is present ~~/
		 * } else {
		 * 	alert("Certain needed resources are not available until you connect to the network.");
		 * }</listing>
		 * 
		 * @param	uri URI of the resource whose availability is to be checked, as a string. 
		 * @param	ifOffline Whether or not the offline resources cache should be checked; specify true to consider the offline resources cache. 
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function mozIsLocallyAvailable(uri:DOMString, ifOffline:Boolean):void { };
		
		/**
		 * Allows web sites to register themselves as possible handlers for content of a particular MIME type. 
		 * 
		 * <p><strong>Note:</strong> For Firefox 2, only the application/vnd.mozilla.maybe.feed, application/atom+xml, and 
		 * application/rss+xml MIME types are supported. All values have the same effect, and the registered 
		 * handler will receive feeds in all Atom and RSS versions. </p>
		 * 
		 * <p><strong>Note:</strong> Web sites may only register content handlers for themselves. For security reasons, 
		 * it's not possible for an extension or web site to register content handlers targeting other sites.</p>
		 * 
		 * @param	mimeType The desired MIME type as a string.
		 * @param	uri The URI to the handler as a string.
		 * @param	title The title of the handler presented to the user as a string.
		 * 
		 * @example
		 * <listing>
		 * navigator.registerContentHandler("application/vnd.mozilla.maybe.feed",
                                 "http://www.example.tld/?foo=%s",
                                 "My Feed Reader");</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.navigator.registerContentHandler MDC - window.navigator.registerContentHandler()
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-navigator-registercontenthandler W3C - HTML5: Navigator.registerContentHandler()
		 * 
		 * @playerversion HTML 5
		 */
		public function registerContentHandler(mimeType:DOMString, uri:DOMString, title:DOMString):void { };
		
		/**
		 * Allows web sites to register themselves as possible handlers for particular protocols. 
		 * 
		 * @example If your web application is located at http://www.example.com, you can register a protocol handler for it to handle "mailto" like this: 
		 * <listing>navigator.registerProtocolHandler("mailto", "http://www.example.com/?uri=%s", "Example Mail");</listing>
		 * 
		 * @param	protocol The protocol the site wishes to handle, specified as a string. 
		 * @param	uri The URI to the handler as a string. You can include "%s" to indicate where to insert the escaped URI of the document to be handled. 
		 * @param	title The title of the handler presented to the user as a string. 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.navigator.registerProtocolHandler MDC - window.navigator.registerProtocolHandler()
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-navigator-registerprotocolhandler W3C - HTML5: Navigator.registerProtocolHandler()
		 * 
		 * @playerversion HTML 5
		 */
		public function registerProtocolHandler(protocol:DOMString, uri:DOMString, title:DOMString):void { };
		
		/**
		 * The getStorageUpdates()  method, when invoked, must, if the storage mutex is owned by the event loop of the task that resulted in the method 
		 * being called, release the storage mutex so that it is once again free. Otherwise, it must do nothing.
		 * 
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-navigator-getstorageupdates W3C - HTML5: Navigator.getStorageUpdates()
		 * 
		 * @playerversion HTML 5
		 */
		public function getStorageUpdates():void { };
		
		/**
		 * Sets a user preference. This method is only available to privileged code, 
		 * and you should use XPCOM Preferences API instead. 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.navigator.preference MDC - window.navigator.preference()
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function preference():Function { return null; };
		
		/**
		 * Returns whether data tainting is enabled. JavaScript taint/untaint functions removed in JavaScript 1.2[1].
		 * 
		 * <p><strong>Note (IE):</strong> Microsoft Internet Explorer 5 and earlier does not support data tainting and therefore always returns false.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536778%28VS.85%29.aspx taintEnabled Method
		 * @see http://developer.mozilla.org/en/DOM/window.navigator.taintEnabled MDC - window.navigator.taintEnabled()
		 * @see http://devedge-temp.mozilla.org/library/manuals/2000/javascript/1.3/reference/nav.html#1194117 [1]
		 * 
		 * @playerversion Obsolete Mozilla
		 */
		public function taintEnabled():Function { return null; };
		
	}
}