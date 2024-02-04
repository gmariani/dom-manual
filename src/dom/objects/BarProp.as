package dom.objects {
	
	/**
	 * To allow Web pages to integrate with Web browsers, certain Web browser interface elements are exposed in a limited way to scripts in Web pages.
	 * 
	 * @see http://www.w3.org/TR/html5/browsers.html#barprop W3C HTML 5: BarProp
	 * 
	 * @playerversion HTML 5
	 * @since HTML 5
	 */
	public class BarProp {
		
		/**
		 * The visible attribute, on getting, must return either true or a value determined by the user agent to most accurately 
		 * represent the visibility state of the user interface element that the object represents, 
		 * as described below. On setting, the new value must be discarded.
		 * 
		 * <p>The following BarProp objects exist for each Document object in a browsing context. Some of the user interface elements represented 
		 * by these objects might have no equivalent in some user agents; for those user agents, unless otherwise specified, the object must 
		 * act as if it was present and visible (i.e. its visible attribute must return true).</p>
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>window.locationbar</td><td>Represents the user interface element that contains a control that displays the URL of the
		 * active document, or some similar interface concept.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>window.menubar</td><td>Represents the user interface element that contains a list of commands in menu form, or some 
		 * similar interface concept.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>window.personalbar</td><td>Represents the user interface element that contains links to the user's favorite pages, or 
		 * some similar interface concept.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>window.scrollbars</td><td>Represents the user interface element that contains links to the user's favorite pages, 
		 * or some similar interface concept.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>window.statusbar</td><td>Represents a user interface element found immediately below or after the document, as appropriate 
		 * for the default view's media. If the user agent has no such user interface element, then the object may act as if the corresponding
		 * user interface element was absent (i.e. its visible attribute may return false).</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>window.toolbar</td><td>Represents the user interface element found immediately above or before the document, as appropriate 
		 * for the default view's media. If the user agent has no such user interface element, then the object may act as if the corresponding 
		 * user interface element was absent (i.e. its visible attribute may return false).</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/html5/browsers.html#barprop W3C HTML 5: BarProp.visible
		 * 
		 * @playerversion HTML 5
		 * @since HTML 5
		 */
		public function get visible():Boolean { return false; };
		public function set visible(value:Boolean):void { };
	}
}