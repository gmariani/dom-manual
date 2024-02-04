package webstorage {
	
	import dom.core.types.DOMString;
	
	/**
	 * The DOM Storage mechanism is a means through which string key/value pairs can be securely stored and later 
	 * retrieved for use. The goal of this addition is to provide a comprehensive means through which interactive 
	 * applications can be built (including advanced abilities, such as being able to work "offline" for extended 
	 * periods of time).
	 * 
	 * <p><code>sessionStorage</code> sets fields on the window. When the window is closed, the session fields 
	 * are lost, even if the site remains open in another window.</p>
	 * 
	 * <p><code>localStorage</code> sets fields on the domain. Even when you close the browser, reopen it, and 
	 * go back to the site, it remembers all fields in localStorage.</p>
	 * 
	 * @playerversion WebStorage 0
	 * @since HTML 5
	 * 
	 * @see http://www.w3.org/TR/webstorage/#the-storage-interface W3C Web Storage Specification
	 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: HTML5 compatibility - Local storage and session storage
	 */
	public interface Storage {
		
		/**
		 * Returns the number of key/value pairs currently present in the list associated with the object.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc304101%28VS.85%29.aspx  MSDN: length Property
		 * @see http://developer.mozilla.org/en/DOM/Storage  MDC - DOM Storage
		 * @see http://www.w3.org/TR/webstorage/#the-storage-interface  W3C - Web Storage: length Property
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		function get length():Number;
		
		/**
		 * Retrieves the remaining memory space, in bytes, for the storage object.
		 * 
		 * <p>The current size of the storage area is calculated as the sum of the length of all key names and values.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc197016%28VS.85%29.aspx  MSDN: remainingSpace Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4_no
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		function get remainingSpace():Number;
		
		/**
		 * IndexGetter
		 * 
		 * Returns the value at the specified index.
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: May be raised if <code>index</code> is greater than or 
		 * equal to the number of key/value pairs in the object. 
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc197042%28VS.85%29.aspx  MSDN: key Method
		 * @see http://developer.mozilla.org/en/DOM/Storage  MDC - DOM Storage
		 * @see http://www.w3.org/TR/webstorage/#the-storage-interface  W3C - Web Storage: key Method
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * @see #getItem()
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		function key(index:Number):DOMString;
		
		/**
		 * NameGetter
		 * 
		 * The getItem(key) method must return the current value associated with the given key.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc197039%28VS.85%29.aspx  MSDN: getItem Method
		 * @see http://developer.mozilla.org/en/DOM/Storage  MDC - DOM Storage
		 * @see http://www.w3.org/TR/webstorage/#the-storage-interface  W3C - Web Storage: getItem Method
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * @see #setItem()
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		function getItem(key:DOMString):DOMString;
		
		/**
		 * NameSetter
		 * 
		 * Adds the data based on the key name. If the key already exists, that data is updated
		 * with the new data.
		 * 
		 * @throws dom.core.DOMException QUOTA_EXCEEDED_ERR: May be raised if setting fails. 
		 * 
		 * @example
		 * <listing>
		 * sessionStorage.setItem('myKey', '...');
		 * sessionStorage['myKey'] = '...'; 
		 * sessionStorage.myKey = '...';</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc197050%28VS.85%29.aspx  MSDN: setItem Method
		 * @see http://developer.mozilla.org/en/DOM/Storage  MDC - DOM Storage
		 * @see http://www.w3.org/TR/webstorage/#the-storage-interface  W3C - Web Storage: setItem Method
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * @see #getItem()
		 * @see #remainingSpace
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		function setItem(key:DOMString, data:DOMString):void;
		
		/**
		 * NameDeleter
		 * 
		 * The removeItem(key) method must cause the key/value pair with the given 
		 * key to be removed from the list associated with the object, if it exists.
		 * 
		 * @param	key The name of the key, or the empty string.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc197047%28VS.85%29.aspx  MSDN: removeItem Method
		 * @see http://developer.mozilla.org/en/DOM/Storage  MDC - DOM Storage
		 * @see http://www.w3.org/TR/webstorage/#the-storage-interface  W3C - Web Storage: removeItem Method
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * @see #clear()
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		function removeItem(key:DOMString):void;
		
		/**
		 * Empties the object of all key/value pairs, if there are any.
		 * 
		 * @example
		 * <listing>&lt;button onclick="localStorage.clear()"&gt;Clear Stored Values&lt;/button&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc288131%28VS.85%29.aspx  MSDN: clear Method
		 * @see http://developer.mozilla.org/en/DOM/Storage  MDC - DOM Storage
		 * @see http://www.w3.org/TR/webstorage/#the-storage-interface  W3C - Web Storage: clear Method
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * @see #removeItem()
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4_incomplete
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		function clear():void;
	}
}