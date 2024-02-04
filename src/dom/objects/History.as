package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * Contains information about the URLs visited by the client.
	 * 
	 * <p><strong>Note:</strong> For security reasons, the history object does not expose the actual 
	 * URLs in the browser history. It does allow navigation through the browser history by exposing 
	 * the back, forward, and go methods. A particular document in the browser history can be 
	 * identified as an index relative to the current page. For example, specifying -1 as a parameter 
	 * for the go method is the equivalent of clicking the Back button.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms535864(VS.85).aspx MSDN - history Object
	 * @see http://developer.mozilla.org/en/DOM/window.history MDC - window.history
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 */
	public class History {
		
		/**
		 * Returns the number of elements in the session history, including the currently loaded page.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534105%28VS.85%29.aspx MSDN - length Property
		 * @see http://developer.mozilla.org/en/DOM/window.history MDC - window.history
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get length():Number { return 0; };
		
		/**
		 * Returns the URL of the active item of the session history.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.history MDC - window.history
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get current():DOMString { return null; };
		public function set current(value:DOMString):void { };
		
		/**
		 * Returns the URL of the next item in the session history
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.history MDC - window.history
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get next():DOMString { return null; };
		public function set next(value:DOMString):void { };
		
		/**
		 * Returns the URL of the previous item in the session history
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.history MDC - window.history
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get previous():DOMString { return null; };
		public function set previous(value:DOMString):void { };
		
		/**
		 * Goes to the previous page in session history, the same action as when the user clicks the browser's Back button.
		 * 
		 * <p>Equivalent to history.go(-1).</p>
		 * 
		 * <p>Calling this method to go back beyond the first page in the session history has no effect 
		 * and doesn't raise an exception.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536346%28VS.85%29.aspx MSDN - back Method
		 * @see http://developer.mozilla.org/en/DOM/window.history MDC - window.history
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function back():void { };
		
		/**
		 * Goes to the next page in session history, the same action as when the user clicks the browser's Forward button.
		 * 
		 * <p>Equivalent to history.go(1).</p>
		 * 
		 * <p>Calling this method to go back beyond the last page in the session history has no effect 
		 * and doesn't raise an exception.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536426%28VS.85%29.aspx MSDN - forward Method
		 * @see http://developer.mozilla.org/en/DOM/window.history MDC - window.history
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function forward():void { };
		
		/**
		 * Loads a page from the session history, identified by its relative location to the current page, for 
		 * example -1 for the previous page or 1 for the next page.
		 * 
		 * <p>When integerDelta is out of bounds (e.g. -1 when there are no previously visited pages in the session 
		 * history), the method doesn't do anything and doesn't raise an exception.</p>
		 * 
		 * <p>Calling go() without parameters or with a non-integer argument has no effect (unlike Internet Explorer, 
		 * which supports string URLs as the argument [1]).</p>
		 * 
		 * @see @see http://msdn.microsoft.com/en-us/library/ms536426%28VS.85%29.aspx MSDN - forward Method MSDN - go Method
		 * @see http://msdn.microsoft.com/en-us/library/ms536443(VS.85).aspx MSDN - [1]
		 * @see http://developer.mozilla.org/en/DOM/window.history MDC - window.history
		 * 
		 * @param	integerDelta Specifies an integer or a string. An integer indicates the relative position of a URL in the History list. A string indicates an exact URL in the History list.
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function go(integerDelta:*):void { };
	}
}