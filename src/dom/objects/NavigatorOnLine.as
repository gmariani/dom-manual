package dom.objects {
	
	/**
	 * Objects implementing the Navigator interface must also implement the NavigatorOnLine interface. This interface is defined separately so 
	 * that other specifications can re-use parts of the Navigator interface.
	 * 
	 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-navigator W3C - HTML 5: NavigatorOnLine
	 * 
	 * @playerversion HTML 5
	 */
	public interface NavigatorOnLine {
		
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
		function get onLine():Boolean;
	}
}