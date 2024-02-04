package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * Objects implementing the Navigator interface must also implement the NavigatorAbilities interface. This interface is defined separately so 
	 * that other specifications can re-use parts of the Navigator interface.
	 * 
	 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-navigator W3C - HTML 5: NavigatorID
	 * 
	 * @playerversion HTML 5
	 */
	public interface NavigatorAbilities {
		
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
		function registerContentHandler(mimeType:DOMString, url:DOMString, title:DOMString):void;
		
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
		function registerProtocolHandler(scheme:DOMString, url:DOMString, title:DOMString):void;
		
		/**
		 * The getStorageUpdates()  method, when invoked, must, if the storage mutex is owned by the event loop of the task that resulted in the method 
		 * being called, release the storage mutex so that it is once again free. Otherwise, it must do nothing.
		 * 
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-navigator-getstorageupdates W3C - HTML5: Navigator.getStorageUpdates()
		 * 
		 * @playerversion HTML 5
		 */
		function getStorageUpdates():void;
	}
}