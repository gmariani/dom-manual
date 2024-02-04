package dom {
	
	import dom.core.Element;
	import dom.events.EventListener;
	import dom.events.EventTarget;
	import dom.objects.Crypto;
	import cssom.view.Media;
	import cssom.view.Screen;
	import cssom.view.WindowView;
	import dom.style.css.CSSStyleDeclaration;
	import dom.style.css.ViewCSS;
	import dom.objects.BarProp;
	import dom.core.types.DOMString;
	import dom.objects.History;
	import dom.objects.Location;
	import dom.objects.Navigator;
	import dom.objects.Pkcs11;
	import dom.objects.Selection;
	import dom.views.AbstractView;
	import dom.views.DocumentView;
	import webstorage.Storage;
	import gecko.dom.objects.Sidebar;
	import gecko.nsIDOMOfflineResourceList;
	import gecko.nsIXPCComponents;
	
	/**
	 * INCOMPLETE
	 * 
	 * @internal 
	 * 
	 * http://opensource.adobe.com/svn/opensource/flex/sdk/trunk/modules/compiler/src/java/flex2/compiler/asdoc/ClassTable.java
	 * 
	 * http://www.w3.org/TR/Window/
	 * 
	 * http://developer.mozilla.org/en/DOM/window
	 */
	public class Window implements ViewCSS, AbstractView, WindowView, EventTarget {
		
		/**
		 * <strong>Non-Standard | Firefox 3+</strong> 
		 * 
		 * Returns a reference to the application cache object for the window. 
		 * 
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#applicationcache
		 */
		public function get applicationCache():nsIDOMOfflineResourceList { return null; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * This property indicates whether the referenced window is closed or not. 
		 */
		public function get closed():Boolean { return false; };
		
		/**
		 * <strong>Non-Standard | Firefox</strong> 
		 * 
		 * The Components object is the object through which XPConnect functionality is reflected into JavaScript.
		 * 
		 * Some properties of Components require advanced privileges and may not work in web pages. 
		 */
		public function get Components():nsIXPCComponents { return null; };
		
		/**
		 * <strong>Non-Standard | Firefox</strong> 
		 * 
		 * Returns a Window object for the primary content window.
		 */
		public function get content():Window { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the browser crypto object, which can then be used to manipulate various 
		 * browser security features. 
		 */
		public function get crypto():Crypto { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Gets/sets the status bar text for the given window.
		 * 
		 * Note: To set the status once the window has been opened, use window.status.
		 */
		public function get defaultStatus():DOMString { return null; };
		public function set defaultStatus(value:DOMString):void { };
		
		/*
		 * <strong>Non-Standard | Firefox 3+</strong> 
		 * 
		 * Gets the arguments passed to the window (if it's a dialog box) at the time 
		 * window.showModalDialog() was called. This is an nsIArray . 
		 */
		//public function get dialogArguments():nsIArray { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the window directories toolbar object. 
		 */
		public function get directories():BarProp { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns an array-like object, listing the direct sub-frames of the current window.
		 */
		public function get frames():Array { return null; };
		
		/**
		 * <strong>DOM Level 0 | Firefox 3+</strong>
		 * 
		 * This property indicates whether the window is displayed in full screen mode or not.
		 * 
		 * Note: This property is only reliable in Mozilla 1.9 (Firefox 3) and later. Mozilla 1.8 
		 * and earlier do have this property, but it always returns false, even when the window 
		 * is in full screen mode.
		 * 
		 * Note: Switching between regular window and full screen will fire the "resize" event 
		 * on the corresponding window. 
		 */
		public function get fullScreen():Boolean { return false; };
		public function set fullScreen(value:Boolean):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Returns the element (such as &lt;iframe&gt; or &lt;object&gt;) in which the window is embedded, 
		 * or null if the window is top-level.
		 * 
		 * @see #parent
		 * @see #frames
		 */
		public function get frameElement():Element { return null; };
		
		/**
		 * <strong>Non-Standard | Firefox 2</strong> 
		 * 
		 * This is a global object (globalStorage) that maintains multiple private storage areas 
		 * that can be used to hold data over a long period of time (e.g. over multiple pages 
		 * and browser sessions).
		 * 
		 * Note: Firefox 2 permitted access to storage objects higher in the domain hierarchy 
		 * than the current document. This is no longer allowed in Firefox 3, for security 
		 * reasons. In addition, this proposed addition to HTML 5 has been removed from the 
		 * HTML 5 specification in favor of localStorage, which is implemented in Firefox 3.5.
		 */
		public function get globalStorage():Object { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns a reference to the History object, which provides an interface for manipulating 
		 * the browser session history (pages visited in the tab or frame that the current page is loaded in).
		 */
		public function get history():History { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the number of frames (either frame or iframe elements) in the window. 
		 */
		public function get length():Number { return 0; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Returns a  Location object, which contains information about the URL 
		 * of the document and provides methods for changing that URL.
		 */
		public function get location():Location { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the locationbar object, whose visibility can be toggled in the window. 
		 */
		public function get locationbar():BarProp { return null; };
		
		/**
		 * <strong>Web Storage</strong>
		 * 
		 * This is a global object that maintains multiple private storage areas 
		 * that can be used to hold data over a long period of time (e.g. over multiple pages 
		 * and browser sessions).
		 * 
		 * Note Firefox 3.5: When the browser goes into private browsing mode, a new, temporary database 
		 * is created to store local storage data; this database is empty, and is thrown away 
		 * when private browsing mode is turned off.
		 * 
		 * @see http://www.w3.org/TR/webstorage/
		 */
		public function get localStorage():Storage { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the menubar object, whose visibility can be toggled in the window. 
		 */
		public function get menubar():BarProp { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Gets/sets the name of the window.
		 * 
		 * Note: The name of the window is used primarily for setting targets for hyperlinks 
		 * and forms. Windows do not need to have names.
		 */
		public function get name():DOMString { return null; };
		public function set name(value:DOMString):void { };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns a reference to the navigator object, which can be queried for information 
		 * about the application running the script. 
		 */
		public function get navigator():Navigator { return null; };
		
		/**
		 * An event handler for abort events sent to the window. (Not available with Firefox 2 or Safari) 
		 */
		public function get onabort():Function { return null; };
		public function set onabort(value:Function):void { };
		
		/**
		 * An event that fires before the unload event when the page is unloaded. 
		 * 
		 * <p>Note: There is no public specification. onbeforeunload was introduced by Microsoft IE 4 and has subsequently been copied by other browsers. </p>
		 * 
		 * @exampleText The function should assign a string value to the returnValue property of the Event object and return the same string/
		 * @example
		 * <listing>
		 * window.onbeforeunload = function (e) {
		 * 		var e = e || window.event;
		 * 
		 * 		// For IE and Firefox
		 * 		if (e) {
		 * 			e.returnValue = 'Any string';
		 * 		}
		 * 
		 * 		// For Safari
		 * 		return 'Any string';
		 * };</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536907(VS.85).aspx MSDN—onbeforeunload Event
		 */
		public function get onbeforeunload():Function { return null; };
		public function set onbeforeunload(value:Function):void { };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * The onblur property can be used to set the blur handler on the window, which is triggered when the window loses focus. 
		 */
		public function get onblur():Function { return null; };
		public function set onblur(value:Function):void { };
		
		/**
		 * An event handler for change events sent to the window. 
		 */
		public function get onchange():Function { return null; };
		public function set onchange(value:Function):void { };
		
		/**
		 * Called when the user clicks the mouse button while the cursor is in the window. This event is fired for any mouse button 
		 * pressed; you can look at the event properties to find out which button was pressed and where. 
		 * 
		 * <p>Note: The click event is raised when the user clicks on the window.</p>
		 */
		public function get onclick():Function { return null; };
		public function set onclick(value:Function):void { };
		
		/**
		 * An event handler for close events sent to the window. (Not available with Firefox 2 or Safari) 
		 */
		public function get onclose():Function { return null; };
		public function set onclose(value:Function):void { };
		
		/**
		 * An event handler property for right-click events on the window. 
		 * 
		 * @example
		 * <listing>
		 * window.oncontextmenu = function () {
		 * 		return false;
		 * }
		 * //this will disable right click on the page</listing>
		 */
		public function get oncontextmenu():Function { return null; };
		public function set oncontextmenu(value:Function):void { };
		
		/**
		 * An event handler for drag and drop events sent to the window. 
		 * 
		 * <p>Note: The window.ondragdrop property and the ondragdrop attribute are not implemented in Gecko, 
		 * you have to use addEventListener.</p>
		 * 
		 * <p>Note: The event.data array available in NN4 seems to be unavailable in Gecko [1].</p>
		 * 
		 * @see #addEventListener()
		 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=112288 bug 112288
		 * @see http://forums.mozillazine.org/viewtopic.php?p=863806 [1]
		 */
		public function get ondragdrop():Function { return null; };
		public function set ondragdrop(value:Function):void { };
		
		/**
		 * An event handler for error events sent to the window. 
		 * 
		 * <p>Note: When the function returns true, this prevents the firing of the default event handler. Function parameters: 
		 * <ul>
		 * <li>Error message (string) </li>
		 * <li>Url where error was raised (string) </li>
		 * <li>Error code (number) </li>
		 * </ul>
		 * </p>
		 * 
		 * <p>Note: The error event is raised when an error occurs in the script. The example above prevents error 
		 * dialogs from displaying-which is the window's normal behavior-by overriding the default event handler for error events that go to the window. </p>
		 * 
		 * <p>Note: When using the inline html markup (&lt;body onerror="alert('an error occurred')&gt;...), the arguments 
		 * are not named. They can be referenced by arguments[0] through arguments[2]. </p>
		 */
		public function get onerror():Function { return null; };
		public function set onerror(value:Function):void { };
		
		/**
		 * An event handler for focus events sent to the window. 
		 * 
		 * <p>Note: The focus event is raised when the user sets focus on the current window. </p>
		 */
		public function get onfocus():Function { return null; };
		public function set onfocus(value:Function):void { };
		
		/**
		 * An event handler for the keydown event on the window. 
		 * 
		 * <p>Note: The keydown event is raised when the user presses any key. </p>
		 */
		public function get onkeydown():Function { return null; };
		public function set onkeydown(value:Function):void { };
		
		/**
		 * An event handler for the keypress event on the window. 
		 * 
		 * <p>Note: The keypress event is raised when the user presses and releases any key on the keyboard. </p>
		 * 
		 * <p>Note: Under FF 1.0.5.4 this event fires before the keyup event is detected, i.e. it appears to work exactly like onkeydown. </p>
		 */
		public function get onkeypress():Function { return null; };
		public function set onkeypress(value:Function):void { };
		
		/**
		 * An event handler for the keyup event on the window. 
		 * 
		 * <p>Note: The keyup event is raised when a key that has been pressed is released. </p>
		 */
		public function get onkeyup():Function { return null; };
		public function set onkeyup(value:Function):void { };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * An event handler for the load event of a window. 
		 * 
		 * <p>Note: The load event fires at the end of the document loading process. At this point, all of the objects in the document 
		 * are in the DOM, and all the images and sub-frames have finished loading. </p>
		 * 
		 * <p>Note: There is also Gecko-Specific DOM Events like DOMContentLoaded and DOMFrameContentLoaded events (which can be handled 
		 * using addEventListener) which are fired after the DOM for the page has been constructed, but don't wait for other resources 
		 * to finish loading. </p>
		 */
		public function get onload():Function { return null; };
		public function set onload(value:Function):void { };
		
		/**
		 * An event handler for the mousedown event on the window.
		 * 
		 * <p>Note: The mousedown event is raised when the user clicks the mouse button anywhere in the document.</p>
		 */
		public function get onmousedown():Function { return null; };
		public function set onmousedown(value:Function):void { };
		
		/**
		 * An event handler for the mousemove event on the window. 
		 * 
		 * <p>Note: The mousemove event fires when the user moves the mouse pointer by 1 pixel or more in any direction in the browser window. </p>
		 */
		public function get onmousemove():Function { return null; };
		public function set onmousemove(value:Function):void { };
		
		/**
		 * An event handler for the mouseout event on the window. 
		 * 
		 * <p>Note: The mouseout event is raised when the mouse leaves the area of the specified element (in this case the window itself). </p>
		 */
		public function get onmouseout():Function { return null; };
		public function set onmouseout(value:Function):void { };
		
		/**
		 * An event handler for the mouseover event on the window. 
		 * 
		 * <p>Note: The mouseover event is raised when the mouse pointer moves over the current element (in this case the window itself). </p>
		 */
		public function get onmouseover():Function { return null; };
		public function set onmouseover(value:Function):void { };
		
		/**
		 * An event handler for the mouseup event on the window.
		 * 
		 * <p>Note: The mouseup event is raised when the user unclicks the mouse button anywhere in the document.</p>
		 */
		public function get onmouseup():Function { return null; };
		public function set onmouseup(value:Function):void { };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * An event handler for the paint event on the window.
		 * 
		 * <p>Note: <code>onpaint</code> doesn't work currently, and it is questionable whether this event is going to work at all.</p>
		 * 
		 * <p>Note: The paint event is raised when the window is rendered. This event occurs after the load event for a window, and 
		 * reoccurs each time the window needs to be re-rendered, as when another window obscures it and is then cleared away. </p>
		 * 
		 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=239074 bug 239074
		 */
		public function get onpaint():Function { return null; };
		public function set onpaint(value:Function):void { };
		
		/**
		 * An event handler for the reset event on the window. 
		 * 
		 * <p>Note: The reset event is raised when the user clicks a reset button in a form (<input type="reset"/>). </p>
		 * 
		 */
		public function get onreset():Function { return null; };
		public function set onreset(value:Function):void { };
		
		/**
		 * An event handler for the resize event on the window. 
		 * 
		 * <p>Note: The resize event is fired after the window has been resized. </p>
		 */
		public function get onresize():Function { return null; };
		public function set onresize(value:Function):void { };
		
		/**
		 * Specifies the function to be called when the window is scrolled. 
		 * 
		 * <p>Note: When the window.scrollX/scrollY isn't 0 -- meaning that some scrolling occurred by either script or 
		 * manual action -- reloading the current page will trigger the onscroll event immediately. </p>
		 * 
		 * <p>Note: In older versions of Gecko caused onscroll to be fired only when dragging the scroll bar, not when 
		 * using cursor keys or mousewheel. This was fixed in Gecko 1.8/Firefox 1.5.</p>
		 */
		public function get onscroll():Function { return null; };
		public function set onscroll(value:Function):void { };
		
		/**
		 * An event handler for the select event on the window. 
		 * 
		 * <p>Note: The select event only fires when text inside a text input or textarea is selected. The event is fired after the text has been selected. </p>
		 */
		public function get onselect():Function { return null; };
		public function set onselect(value:Function):void { };
		
		/**
		 * An event handler for the submit event on the window. 
		 * 
		 * <p>Note: The submit event is raised when the user clicks a submit button in a form (<input type="submit"/>). </p>
		 */
		public function get onsubmit():Function { return null; };
		public function set onsubmit(value:Function):void { };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * The unload event is raised when the document is unloaded. 
		 * 
		 * <p>Note: Using this event handler in your page prevents Firefox 1.5 from caching the page in the in-memory bfcache.</p>
		 * 
		 * <p>Note: Browsers equipped with pop-up window blockers will ignore all window.open() method calls in onunload event handler functions.</p>
		 */
		public function get onunload():Function { return null; };
		public function set onunload(value:Function):void { };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns a reference to the window that opened this current window. 
		 * 
		 * Note: When a window is opened from another window, it maintains a reference to that first window 
		 * as window.opener. If the current window has no opener, this method returns NULL. 
		 */
		public function get opener():WindowProxy { return null; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Returns a reference to the parent of the current window or subframe.
		 * 
		 * If a window does not have a parent, its parent property is a reference to itself.
		 * 
		 * @see #top
		 * @see #frameElement
		 */
		public function get parent():Window { return null; };
		
		/**
		 * Returns the personalbar object, whose visibility can be toggled in the window. 
		 */
		public function get personalbar():BarProp { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the pkcs11 object , which can be used to install drivers and other software 
		 * associated with the pkcs11 protocol. 
		 * 
		 * <p><strong>Note (Mozilla):</strong> The window.pkcs11 property has been removed in newer 
		 * versions of Firefox (3.5+) for security reasons. For more information on installing PKCS11 
		 * modules, see <a target="mm_external" rel="external nofollow" href="http://developer.mozilla.org/en/PKCS11_Jar_Install">installing PKCS11 modules</a>. See 
		 * <a target="mm_external" rel="external nofollow" href="http://bugzilla.mozilla.org/show_bug.cgi?id=326628" >bug 
		 * 326628</a> for details on why the property was removed.</p>
		 */
		public function get pkcs11():Pkcs11 { return null; };
		
		/**
		 * <strong>Non-Standard? | Firefox 3+</strong>
		 * 
		 * The return value to be returned to the function that called window.showModalDialog() 
		 * to display the window as a modal dialog. 
		 */
		public function get returnValue():* { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the scrollbars object, whose visibility can be toggled in the window. 
		 * 
		 * Note: Note that scrollbars is not an array of the scrollbars. The visibility of these 
		 * objects can only be controlled as a group. 
		 */
		public function get scrollbars():BarProp { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the maximum number of pixels that the document can be scrolled horizontally. 
		 * 
		 * Note: Use this property to get the total document width, which is equivalent to 
		 * window.innerWidth + window.scrollMaxX. 
		 * 
		 * @see dom.Window#scrollMaxY
		 */
		public function get scrollMaxX():Number { return 0; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the maximum number of pixels that the document can be scrolled vertically. 
		 * 
		 * Note: Use this property to get the total document height, which is equivalent to 
		 * window.innerHeight + window.scrollMaxY. 
		 * 
		 * @see dom.Window#scrollMaxX
		 */
		public function get scrollMaxY():Number { return 0; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the number of pixels that the document has already been scrolled horizontally. 
		 * 
		 * Note: Use this property to check that the document hasn't already been scrolled some if 
		 * you are using relative scroll functions such as window.scrollBy, window.scrollByLines, 
		 * or window.scrollByPages. 
		 * 
		 * Note: The pageXOffset property is an alias for the scrollX property.
		 * 
		 * @see dom.window#pageXOffset
		 */
		public function get scrollX():Number { return 0; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the number of pixels that the document has already been scrolled vertically. 
		 * 
		 * Note: Use this property to check that the document hasn't already been scrolled some if 
		 * you are using relative scroll functions such as window.scrollBy, window.scrollByLines, 
		 * or window.scrollByPages. 
		 * 
		 * Note: The pageYOffset property is an alias for the scrollY property.
		 * 
		 * @see dom.window#pageYOffset
		 */
		public function get scrollY():Number { return 0; };
		
		/**
		 * Returns a self-reference.
		 */
		public function get self():WindowProxy { return null; };
		
		/**
		 * <strong>HTML5 | Firefox 3+</strong>
		 * 
		 * This is a global object (sessionStorage) that maintains a storage area that's available 
		 * for the duration of the page session. A page session lasts for as long as the browser is 
		 * open and survives over page reloads and restores. Opening a page in a new tab or window 
		 * will cause a new session to be initiated.
		 * 
		 * The sessionStorage object is most useful for hanging on to temporary data that should be
		 * saved and restored if the browser is accidentally refreshed.
		 * 
		 * Note: Prior to Firefox 3.5, sessionStorage data was not restored automatically after 
		 * recovering from a browser crash. Starting in Firefox 3.5, this works as per the specification.
		 */
		public function get sessionStorage():Storage { return null; };
		
		/**
		 * <strong>Non-Standard | Firefox</strong>
		 * 
		 * Returns a reference to the window object of the sidebar. 
		 */
		public function get sidebar():Sidebar { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Sets the text in the status bar at the bottom of the browser or returns the previously set text. 
		 * 
		 * Note Firefox: This property does not work in default configuration of Firefox and some 
		 * other browsers: setting window.status has no effect on the text displayed in the status 
		 * bar. To allow scripts change the the status bar text, the user must set the 
		 * dom.disable_window_status_change preference to false in the about:config screen. 
		 */
		public function get status():DOMString { return null; };
		public function set status(value:DOMString):void { };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the statusbar object, whose visibility can be toggled in the window. 
		 */
		public function get statusbar():BarProp { return null; };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Returns the toolbar object, whose visibility can be toggled in the window. 
		 */
		public function get toolbar():BarProp { return null; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Returns a reference to the topmost window in the window hierarchy. 
		 */
		public function get top():WindowProxy { return null; };
		
		/**
		 * Returns a self-reference.
		 */
		public function get window():WindowProxy { return null; };
		
		/* INTERFACE cssom.view.AbstractView */
		
		/**
		 * @inheritDoc
		 */
		public function get document():DocumentView { return null; };
		
		/* INTERFACE cssom.view.WindowView HTML 5 */
		
		/**
		 * @inheritDoc
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
		 * @playerversion HTML 5
		 * @since DOMCore 0
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
		public function get innerWidth():Number { return 0; };
		
		/**
		 * @inheritDoc
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
		 * @playerversion HTML 5
		 * @since DOMCore 0
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
		public function get innerHeight():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.outerWidth  MDC - Window: outerWidth Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: outerWidth Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see #innerWidth
		 * @see #innerHeight
		 * @see #outerHeight
		 * 
		 * @playerversion HTML 5
		 * @since DOMCore 0
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
		public function get outerWidth():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.outerHeight  MDC - Window: outerHeight Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: outerHeight Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see #innerWidth
		 * @see #innerHeight
		 * @see #outerWidth
		 * 
		 * @playerversion HTML 5
		 * @since DOMCore 0
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
		public function get outerHeight():Number { return 0; };
		
		/**
		 * @inheritDoc
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
		 * @playerversion HTML 5
		 * @since DOMCore 0
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
		public function get pageXOffset():Number { return 0; };
		
		/**
		 * @inheritDoc
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
		 * @playerversion HTML 5
		 * @since DOMCore 0
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
		public function get pageYOffset():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.screenX  MDC - Window: screenX Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: screenX Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see #screenY
		 * 
		 * @playerversion HTML 5
		 * @since DOMCore 0
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
		public function get screenX():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.screenY  MDC - Window: screenY Property
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: screenY Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#windowview  Quirksmode: WindowView properties
		 * @see #screenX
		 * 
		 * @playerversion HTML 5
		 * @since DOMCore 0
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
		public function get screenY():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/cssom-view/#the-windowview-interface  W3C - CSSOM View: media Property
		 * 
		 * @playerversion HTML 5
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
		public function get media():Media { return null; };
		
		/**
		 * @inheritDoc
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
		 * @playerversion HTML 5
		 * @since DOMCore 0
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
		public function get screen():Screen { return null; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Display an alert dialog with the specified content and an OK button.
		 * 
		 * @param	message Text you want to display in the alert dialog, or, alternatively, an 
		 * object that is converted into a string and displayed.
		 * 
		 * @see dom.Window#confirm()
		 * @see dom.Window#prompt()
		 */
		public function alert(message:DOMString):void { };
		
		/**
		 * @inheritDoc
		 */
		public function addEventListener(type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void { };
		
		/**
		 * @inheritDoc
		 */
		public function addEventListenerNS(namespaceURI:DOMString, type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Decodes a string of data which has been encoded using base-64 encoding. 
		 * 
		 * @param	encodedData The encoded string
		 * @return	The decoded string
		 * @example
		 * var encodedData = window.btoa("Hello, world"); // encode a string
		 * var decodedData = atob(encodedData); // decode the string
		 * 
		 * @see dom.Window#btoa()
		 */
		public function atob(encodedData:DOMString):DOMString { return null; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Returns the window to the previous item in the history. 
		 */
		public function back():void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Shifts focus away from the window. 
		 */
		public function blur():void { };
		
		/**
		 * <strong>DOM Level 0</strong>
		 * 
		 * Creates a base-64 encoded ASCII string from a string of binary data. 
		 * 
		 * @param	stringToEncode	The string to encode
		 * @return The encoded string
		 * 
		 * @example 
		 * var encodedData = window.btoa("Hello, world"); // encode a string
		 * var decodedData = atob(encodedData); // decode the string
		 * 
		 * @see dom.Window#atob()
		 */
		public function btoa(stringToEncode:DOMString):DOMString { return null; };
		
		/**
		 * <strong>DOM Level 0 | OBSOLETE</strong>
		 * 
		 * Registers the window to capture all events of the specified type. 
		 * 
		 * Note: This method is obsolete as of Gecko 1.9, in favor of W3C DOM Events methods 
		 * (see addEventListener). The support for this method has been removed from Gecko 1.9. 
		 * 
		 * Note: Events raised in the DOM by user activity (such as clicking buttons or shifting 
		 * focus away from the current document) generally pass through the high-level window and 
		 * document objects first before arriving at the object that initiated the event. 
		 * 
		 * Note: When you call the captureEvents() method on the window, events of the type you 
		 * specify (for example, Event.CLICK) no longer pass through to "lower" objects in the 
		 * hierarchy. In order for events to "bubble up" in the way that they normally do, you 
		 * must call window.releaseEvents() (Obsolete ) on the window to keep it from trapping events. 
		 * 
		 * Note: Note that you can pass a list of events to this method using the following syntax: 
		 * window.caputureEvents(Event.KEYPRESS | Event.KEYDOWN | Event.KEYUP). 
		 * 
		 * @param	eventType The event type to capture.
		 * 
		 * @see dom.Window#releaseEvents()
		 */
		public function captureEvents(eventType:DOMString):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Cancels repeated action which was set up using setInterval(). 
		 * 
		 * @param	timerID The identifier of the repeated action you want to cancel.
		 * @see #setInterval()
		 */
		public function clearInterval(timerID:Number):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Clears the delay set by window.setTimeout(). 
		 * 
		 * @param	timerID The ID of the timeout you wish you clear
		 * @see #setTimeout()
		 */
		public function clearTimeout(timerID:Number):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Closes the current window, or a referenced window. 
		 * 
		 * <p>When this method is called, the referenced window is closed.</p>
		 * 
		 * <p>This method is only allowed to be called for windows that were 
		 * opened by a script using the window.open method. If the window 
		 * was not opened by a script, the following error appears in the 
		 * JavaScript Console: Scripts may not close windows that were not
		 * opened by script.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536367(VS.85).aspx
		 * @see http://developer.mozilla.org/en/DOM/window.close
		 */
		public function close():void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Displays a modal dialog with a message and two buttons, OK and Cancel. 
		 * 
		 * <p>Dialog boxes are modal windows - they prevent the user from accessing the 
		 * rest of the program's interface until the dialog box is closed. For this 
		 * reason, you should not overuse any function that creates a dialog box (or 
		 * modal window).</p>
		 * 
		 * @param	message The string to be displayed in the dialog. 
		 * @return Value indicating whether OK or Cancel was selected (true means OK). 
		 * 
		 * @see dom.Window#alert()
		 * @see dom.Window#prompt()
		 */
		public function confirm(message:DOMString):Boolean { return false; };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/En/DOM/window.disableExternalCapture
		 */
		public function disableExternalCapture():void { };
		
		/**
		 * @inheritDoc
		 */
		public function dispatchEvent(event:dom.events.Event):Boolean { return false; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Prints messages to the console. 
		 * 
		 * <p>Note: In Gecko dump is disabled by default – it doesn't do anything but doesn't raise 
		 * an error either. To see the dump output you have to enable it by setting the preference 
		 * browser.dom.window.dump.enabled to true. You can set the preference in about:config or 
		 * in a user.js file. Note: this preference is not listed in about:config by default, you 
		 * may need to create it (right-click the content area -> New -> Boolean). </p>
		 * 
		 * <p>Note: On Windows, you will need a console to actually see anything. If you don't have one 
		 * already, closing the application and re-opening it with the command line parameter -console 
		 * should create the console. On other operating systems, it's enough to launch the application 
		 * from a terminal. </p>
		 * 
		 * @param	message Message to log. 
		 */
		public function dump(message:DOMString):void { };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/En/DOM/window.enableExternalCapture
		 */
		public function enableExternalCapture():void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Encodes a string, replacing certain characters with a hexadecimal escape sequence. 
		 * 
		 * <p>Note: The escape() method converts special characters (any characters that are 
		 * not regular text or numbers) into hexadecimal characters, which is especially 
		 * necessary for setting the values of cookies. Also useful when passing name=value 
		 * pairs in the URL of a GET request, or an AJAX GET/POST request. </p>
		 * 
		 * @param	regular A regular string. 
		 * @return The encoded string. 
		 * 
		 * @example alert(escape("http://www.cnn.com")); // displays: http%3A//www.cnn.com
		 * @see dom.Window#unescape()
		 */
		public function escape(regular:DOMString):DOMString { return null; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Finds a string in a window. 
		 * 
		 * @param	string The text string for which to search. 
		 * @param	caseSensitive If true, specifies a case-sensitive search. 
		 * @param	backwards If true, specifies a backward search. 
		 * @param	wrapAround If true, specifies a wrap around search. 
		 * @param	wholeWord If true, specifies a whole word search. 
		 * @param	searchInFrames If true, specifies a search in frames. 
		 * @param	showDialog If true, specifies a show Dialog. 
		 * @return true if the string is found; otherwise, false. 
		 */
		public function find(string:DOMString, caseSensitive:Boolean, backwards:Boolean, wrapAround:Boolean, wholeWord:Boolean, searchInFrames:Boolean, showDialog:Boolean):Boolean { return false; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Sets focus on the window. 
		 * 
		 * @example if (clicked) { window.focus(); }
		 */
		public function focus():void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Moves the window one document forward in the history. 
		 * 
		 * @example function goForward() { if ( canGoForward) window.forward(); }
		 */
		public function forward():void { };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Window.GeckoActiveXObject
		 */
		public function GeckoActiveXObject():void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Attempts to get the user's attention. How this happens varies based on OS and window manager.
		 * 
		 * <p>Note: On Windows, the taskbar button for the window flashes, if this hasn't been disabled by the user.</p>
		 * 
		 * <p>Note: On Linux, the behaviour varies from window manager to window manager - some flash the taskbar button, 
		 * others focus the window immediately. This may be configurable as well.</p>
		 * 
		 * <p>Note: On Macintosh, the icon in the upper right corner of the desktop flashes.</p>
		 * 
		 * <p>Note: The function is disabled for web content. Neither Gecko nor Internet Explorer supports this feature 
		 * now for web content. getAttention will still work when used from chrome in a Gecko application.</p>
		 */
		public function getAttention():void { };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/En/DOM/window.getAttentionWithCycleCount
		 */
		public function getAttentionWithCycleCount():void { };
		
		/* INTERFACE cssom.view.ViewCSS */
		
		/**
		 * @inheritDoc
		 */
		public function getComputedStyle(elt:Element, pseudoElt:DOMString):CSSStyleDeclaration { return null; };
		
		// End
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Returns a selection object representing the range of text selected by the user. 
		 * 
		 * <p>In JavaScript, when a selection object is passed to a function expecting a string (like window.alert  or 
		 * document.write ), a string representation of it (i.e. the selected text) is passed instead. This makes the 
		 * selection object appear like a string, when it is really an object with its own properties and methods. 
		 * Specifically, the return value of calling the toString() method of the Selection object is passed. </p>
		 * 
		 * @return A Selection object. 
		 * 
		 * @example
		 * function foo() {
		 *    var selObj = window.getSelection();
		 *    alert(selObj);
		 *    var selRange = selObj.getRangeAt(0);
		 *    // do stuff with the range
		 * }
		 */
		public function getSelection():Selection { return null; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Returns the window to the home page. 
		 */
		public function home():void { };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/En/DOM/window.maximize
		 */
		public function maximize():void { };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/En/DOM/window.minimize
		 */
		public function minimize():void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Moves the current window by a specified amount. 
		 * 
		 * <p>Note: You can use negative numbers as parameters for this function. This function makes 
		 * a relative move while window.moveTo makes an absolute move. </p>
		 * 
		 * @param	deltaX Amount of pixels to move the window horizontally. 
		 * @param	deltaY Amount of pixels to move the window vertically. 
		 * @example 
		 * <listing>
		 * function budge() {
		 *    moveBy(10, -10);
		 * }
		 * </listing>
		 */
		public function moveBy(deltaX:Number, deltaY:Number):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Moves the window to the specified coordinates. 
		 * 
		 * <p>Note: This function moves the window absolutely while window.moveBy moves the window relative to its current location. </p>
		 * 
		 * @param	x The horizontal coordinate to be moved to. 
		 * @param	y The vertical coordinate to be moved to. 
		 * @example
		 * <listing>
		 * function origin() {
		 *   // moves to top left corner of screen
		 *   window.moveTo(0, 0)
		 * }
		 * </listing>
		 */
		public function moveTo(x:Number, y:Number):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Creates a new secondary browser window and loads the referenced resource.
		 * 
		 * <p>The open() method creates a new secondary browser window, similar to choosing New Window from the File menu. The strUrl 
		 * parameter specifies the URL to be fetched and loaded in the new window. If strUrl is an empty string, then a new blank, empty 
		 * window (URL about:blank loaded) is created with the default toolbars of the main window.</p>
		 * 
		 * <p>Note: Note that remote URLs won't load immediately. When window.open() returns, the window always contains about:blank. The 
		 * actual fetching of the URL is deferred and starts after the current script block finishes executing. The window creation and 
		 * the loading of the referenced resource are done asynchronously.</p>
		 * 
		 * <p>Note: If you use the strWindowFeatures parameter, then only list the features you want to include in the new window, that 
		 * you want to be enabled or rendered; the others (except titlebar and close) will be disabled, removed.</p>
		 * 
		 * <h3>Position and size features</h3>
		 * <p>
		 * 	<dl>
		 * 		<dt>left</dt>
		 * 		<dd>Specifies the distance the new window is placed from the left side of the work area for applications of the user's operating system to the leftmost border (resizing handle) of the browser window. The new window can not be initially positioned offscreen.</dd>
		 * 		<dd> Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" />, <img alt="Opera 6+" src="images/Opera6.gif" /></dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>top</dt>
		 * 		<dd>Specifies the distance the new window is placed from the top side of the work area for applications of the user's operating system to the topmost border (resizing handle) of the browser window. The new window can not be initially positioned offscreen. </dd>
		 * 		<dd> Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" />, <img alt="Opera 6+" src="images/Opera6.gif" /></dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>height</dt>
		 * 		<dd>Specifies the height of the content area, viewing area of the new secondary window in pixels. The height value includes the height of the horizontal scrollbar if present. The minimum required value is 100.</dd>
		 * 		<dd> Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" />, <img alt="Opera 6+" src="images/Opera6.gif" /></dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>width</dt>
		 * 		<dd>Specifies the width of the content area, viewing area of the new secondary window in pixels. The width value includes the width of the vertical scrollbar if present. The width value does not include the sidebar if it is expanded. The minimum required value is 100. </dd>
		 * 		<dd> Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" />, <img alt="Opera 6+" src="images/Opera6.gif" /></dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>screenX</dt>
		 * 		<dd>Deprecated. Same as left but only supported by Netscape and Mozilla-based browsers. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>screenY</dt>
		 * 		<dd>Deprecated. Same as top but only supported by Netscape and Mozilla-based browsers. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>centerscreen</dt>
		 * 		<dd>Centers the window in relation to its parent's size and position. Requires chrome=yes. </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>outerHeight</dt>
		 * 		<dd>Specifies the height of the whole browser window in pixels. This outerHeight value includes any/all present toolbar, window horizontal scrollbar (if present) and top and bottom window resizing borders. Minimal required value is 100. </dd>
		 * 		<dd><strong>Note</strong>: since titlebar is always rendered, then requesting outerHeight=100 will make the innerHeight of the browser window under the minimal 100 pixels. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>outerWidth</dt>
		 * 		<dd>Specifies the width of the whole browser window in pixels. This outerWidth value includes the window vertical scrollbar (if present) and left and right window resizing borders. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>innerHeight</dt>
		 * 		<dd>Same as height but only supported by Netscape and Mozilla-based browsers. Specifies the height of the content area, viewing area of the new secondary window in pixels. The <var>innerHeight</var> value includes the height of the horizontal scrollbar if present. Minimal required value is 100. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>innerWidth</dt>
		 * 		<dd>Same as width but only supported by Netscape and Mozilla-based browsers. Specifies the width of the content area, viewing area of the new secondary window in pixels. The innerWidth value includes the width of the vertical scrollbar if present. The innerWidth value does not include the sidebar if it is expanded. Minimal required value is 100. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * </p>
		 * 
		 * <h3>Toolbar and chrome features</h3>
		 * <p>
		 * 	<dl>
		 * 		<dt>menubar</dt>
		 * 		<dd>If this feature is set to yes, then the new secondary window renders the menubar. </dd>
		 * 		<dd>Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>toolbar</dt>
		 * 		<dd>If this feature is set to <var>yes</var>, then the new secondary window renders the Navigation Toolbar (Back, Forward, Reload, Stop buttons). In addition to the Navigation Toolbar, Mozilla-based browsers will render the Tab Bar if it is visible, present in the parent window. (If this feature is set to <var>no</var> all toolbars in the window will be invisible, for example extension toolbars). </dd>
		 * 		<dd>Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>location</dt>
		 * 		<dd>If this feature is set to <var>yes</var>, then the new secondary window renders the Location bar in Mozilla-based browsers. MSIE 5+ and Opera 7.x renders the Address Bar. </dd>
		 * 		<dd>Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" />, <img alt="Opera 6+" src="images/Opera6.gif" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>directories</dt>
		 * 		<dd>If this feature is set to <var>yes</var>, then the new secondary window renders the Personal Toolbar in Netscape 6.x, Netscape 7.x and Mozilla browser. It renders the Bookmarks Toolbar in Firefox 1.x and, in MSIE 5+, it renders the Links bar. In addition to the Personal Toolbar, Mozilla browser will render the Site Navigation Bar if such toolbar is visible, present in the parent window. </dd>
		 * 		<dd>Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>personalbar</dt>
		 * 		<dd>Same as <var>directories</var> but only supported by Netscape and Mozilla-based browsers. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>status</dt>
		 * 		<dd>If this feature is set to <var>yes</var>, then the new secondary window has a status bar. Users can force the rendering of status bar in all Mozilla-based browsers, in MSIE 6 SP2 and in Opera 6+. The default preference setting in recent Mozilla-based browser releases and in Firefox 1.0 is to force the presence of the status bar. </dd>
		 * 		<dd> Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 *	</dl>
		 * </p>
		 * 
		 * <h3>Window functionality features</h3>
		 * <p>
		 * 	<dl>
		 * 		<dt>resizable</dt>
		 * 		<dd>If this feature is set to <var>yes</var>, the new secondary window will be resizable. </dd>
		 * 		<dd><strong>Note</strong>: Starting with version 1.4, Mozilla-based browsers have a window resizing grippy at the right end of the status bar, this ensures that users can resize the browser window even if the web author requested this secondary window to be non-resizable. In such case, the maximize/restore icon in the window's titlebar will be disabled and the window's borders won't allow resizing but the window will still be resizable via that grippy in the status bar. </dd>
		 * 		<dd>Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>scrollbars</dt>
		 * 		<dd>If this feature is set to <var>yes</var>, the new secondary window will show horizontal and/or vertical scrollbar(s) if the document doesn't fit into the window's viewport. </dd>
		 * 		<dd>Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>dependent</dt>
		 * 		<dd>If set to <var>yes</var>, the new window is said to be dependent of its parent window. A dependent window closes when its parent window closes. A dependent window is minimized on the Windows task bar only when its parent window is minimized. On Windows platforms, a dependent window does not show on the task bar. A dependent window also stays in front of the parent window. </dd>
		 * 		<dd>Dependent windows are not implemented on MacOS X, this option will be ignored. </dd>
		 * 		<dd>The dependent feature is currently under revision to be removed.</dd>
		 * 		<dd>In MSIE 6, the nearest equivalent to this feature is the <code>showModelessDialog()</code> method. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>dialog</dt>
		 * 		<dd>The <code>dialog</code> feature removes all icons (restore, minimize, maximize) from the window's titlebar, leaving only the close button. Mozilla 1.2+ and Netscape 7.1 will render the other menu system commands (in FF 1.0 and in NS 7.0x, the command system menu is not identified with the Firefox/NS 7.0x icon on the left end of the titlebar: that's probably a bug. You can access the command system menu with a right-click on the titlebar). Dialog windows are windows which have no minimize system command icon and no maximize/restore down system command icon on the titlebar nor in correspondent menu item in the command system menu. They are said to be dialog because their normal, usual purpose is to only notify info and to be dismissed, closed. On Mac systems, dialog windows have a different window border and they may get turned into a sheet. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>minimizable</dt>
		 * 		<dd>This setting can only apply to dialog windows; "minimizable" requires <code>dialog=yes</code>. If <code>minimizable</code> is set to <var>yes</var>, the new dialog window will have a minimize system command icon in the titlebar and it will be minimizable. Any non-dialog window is always minimizable and <code>minimizable=no</code> will be ignored. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>fullscreen</dt>
		 * 		<dd>Do not use. Not implemented in Mozilla. There are no plans to implement this feature in Mozilla. </dd>
		 * 		<dd>This feature no longer works in MSIE 6 SP2 the way it worked in MSIE 5.x. The Windows taskbar, as well as the titlebar and the status bar of the window are not visible, nor accessible when fullscreen is enabled in MSIE 5.x. </dd>
		 * 		<dd><code>fullscreen</code> always upsets users with large monitor screen or with dual monitor screen. Forcing <code>fullscreen</code> onto other users is also extremely unpopular and is considered an outright rude attempt to impose web author's viewing preferences onto users. </dd>
		 * 		<dd>Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" /> </dd><dd> <code>fullscreen</code> does not really work in MSIE 6 SP2. </dd>
		 * 	</dl>
		 * </p>
		 * 
		 * 
		 * <h3>Features requiring privileges</h3>
		 * <p>
		 * 	The following features require the UniversalBrowserWrite privilege, otherwise they will be ignored. Chrome scripts have this privilege automatically, others have to request it from the PrivilegeManager.
		 * 	<dl>
		 * 		<dt>chrome</dt>
		 * 		<dd><strong>Note</strong>: Starting with Mozilla 1.7/Firefox 0.9, this feature requires the <code>UniversalBrowserWrite</code> privilege. Without this privilege, it is ignored. </dd>
		 * 		<dd>If set to <var>yes</var>, the page is loaded as window's only content, without any of the browser's interface elements. There will be no context menu defined by default and none of the standard keyboard shortcuts will work. The page is supposed to provide a user interface of its own, usually this feature is used to open XUL documents (standard dialogs like the JavaScript Console are opened this way). </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>modal</dt>
		 * 		<dd><strong>Note</strong>: Starting with Mozilla 1.2.1, this feature requires the <code>UniversalBrowserWrite</code> privilege. Without this privilege, it is ignored. </dd>
		 * 		<dd>If set to <var>yes</var>, the new window is said to be modal. The user cannot return to the main window until the modal window is closed. A typical modal window is created by the <a href="http://developer.mozilla.org/en/DOM/window.alert">alert() function</a>. </dd>
		 * 		<dd>The exact behavior of modal windows depends on the platform and on the Mozilla release version. </dd>
		 * 		<dd>Note: The MSIE 6 equivalent to this feature is the showModalDialog() method. For compatibility reasons, it is now also supported in Firefox 3.</dd>
		 * 		<dd>Supported in: <img alt="Internet Explorer 5+" src="images/MSIE_ico.png" />, <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" />, <img alt="Opera 6+" src="images/Opera6.gif" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>titlebar</dt>
		 * 		<dd>By default, all new secondary windows have a titlebar. If set to <var>no</var>, this feature removes the titlebar from the new secondary window. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>alwaysRaised</dt>
		 * 		<dd>If set to <var>yes</var>, the new window will always be displayed on top of other browser windows, regardless of whether it is active or not. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>alwaysLowered</dt>
		 * 		<dd>If set to <var>yes</var>, the new created window floats below, under its own parent when the parent window is not minimized. alwaysLowered windows are often referred as pop-under windows. The alwaysLowered window can not be on top of the parent but the parent window can be minimized. In NS 6.x, the alwaysLowered window has no minimize system command icon and no restore/maximize system command. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>z-lock</dt>
		 * 		<dd>Same as <code>alwaysLowered</code>. </dd>
		 * 	</dl>
		 * 	<dl>
		 * 		<dt>close</dt>
		 * 		<dd>When set to <var>no</var>, this feature removes the system close command icon and system close menu item. It will only work for dialog windows (<code>dialog</code> feature set). <code>close=no</code> will override <code>minimizable=yes</code>. </dd>
		 * 		<dd>Supported in: <img alt="Netscape 6.x" src="images/Ns6.gif" />, <img alt="Netscape 7.x" src="images/NS7_ico4.gif" />, <img alt="Mozilla 1.x" src="images/Mozilla1_ico.png" />, <img alt="Firefox 1.x" src="images/FF1x.png" /> </dd>
		 * 	</dl>
		 * </p>
		 * 
		 * @param	url This is the URL to be loaded in the newly opened window. It can be an HTML document on the web, 
		 * it can be an image file or any type of file which is supported by the browser.
		 * @param	windowName This is the string that just names the new window. Such string can be used to be the target 
		 * of links and forms when the target attribute of an &lt;a&gt; element or of a &lt;form&gt; is specified. This string parameter 
		 * should not contain any blank space. strWindowName does not specify the title of the new window.
		 * @param	windowFeatures Optional parameter. This parameter is the string which lists the requested window features 
		 * (window functionalities and toolbars) of the new browser window. This string parameter must not contain any blank space. 
		 * Each requested window feature must be separated by a comma inside the character string.
		 * @return This is the reference pointing to the newly created browser window. This reference is the return value of the 
		 * open() method; it will be null if for some reasons the execution did not succeed to open the window. A global variable 
		 * is best used to store such reference. You can then, for example, use it to look for properties of the new window or access 
		 * its methods, assuming that your main versus secondary window relationship complies with Same origin policy security requirements.
		 * 
		 * @exampleText
		 * <h3>Best practices</h3>
		 * <p>The above code solves a few usability problems related to links opening secondary window. The purpose of the return false in 
		 * the code is to cancel default action of the link: if the onclick event handler is executed, then there is no need to execute the 
		 * default action of the link. But if javascript support is disabled or non-existent on the user's browser, then the onclick event 
		 * handler is ignored and the browser loads the referenced resource in the target frame or window that has the name 
		 * "PromoteFirefoxWindowName". If no frame nor window has the name "PromoteFirefoxWindowName", then the browser will create a new 
		 * window and will name it "PromoteFirefoxWindowName".</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;script type="text/javascript"&gt;
		 * var WindowObjectReference = null; // global variable
		 * 
		 * function openFFPromotionPopup()	{
		 * 	if(WindowObjectReference == null || WindowObjectReference.closed) {
		 * 		//if the pointer to the window object in memory does not exist or if such pointer exists but the window was closed
		 * 		WindowObjectReference = window.open("http://www.spreadfirefox.com/", "PromoteFirefoxWindowName", "resizable=yes,scrollbars=yes,status=yes");
		 * 		// then create it. The new window will be created and will be brought on top of any other window.
		 * 	} else {
		 * 		WindowObjectReference.focus();
		 * 		// else the window reference must exist and the window is not closed; therefore, we can bring it back on top of any other window with the focus() method. There would be no need to re-create the window or to reload the referenced resource.
		 * 	};
		 * }
		 * &lt;/script&gt;
		 * 
		 * (...)
		 * 
		 * &lt;p>&lt;a href="http://www.spreadfirefox.com/" target="PromoteFirefoxWindowName" onclick="openFFPromotionPopup(); return false;" title="This link will create a new window or will re-use an already opened one">Promote Firefox adoption&lt;/a&gt;&lt;/p&gt;
		 * 
		 * </listing>
		 * 
		 * @see http://www.evolt.org/article/Links_and_JavaScript_Living_Together_in_Harmony/17/20938/ Links & JavaScript Living Together in Harmony
		 * @see http://www.cs.tut.fi/~jkorpela/www/links.html Links Want To Be Links
		 */
		public function open(url:DOMString, windowName:DOMString, windowFeatures:DOMString):WindowProxy { return null; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * window.openDialog is an extension to window.open. It behaves the same, except that it can optionally take one or more parameters past windowFeatures, and windowFeatures itself is treated a little differently. 
		 * 
		 * <p>The optional parameters, if present, will be bundled up in a JavaScript Array object and added to the newly created window as a property named window.arguments. They may be referenced in the JavaScript of the window at 
		 * any time, including during the execution of a load handler. These parameters may be used, then, to pass arguments to and from the dialog window. </p>
		 * 
		 * <p>Note: The call to openDialog() returns immediately. If you want the call to block until the user has closed the dialog, supply modal as a 
		 * windowFeatures parameter.</p>
		 * 
		 * <p>Note: This also means the user won't be able to interact with the opener window until he closes the modal dialog. </p>
		 * 
		 * <h3>Passing extra parameters to the dialog</h3>
		 * <p>
		 * To pass extra parameters into the dialog, you can simply supply them after the windowFeatures parameter: 
		 * <listing>openDialog("http://example.tld/zzz.xul", "dlg", "", "pizza", 6.98);</listing>
		 * The extra parameters will then get packed into a property named arguments of type Array, and this property gets added to the newly opened dialog window. 
		 * </p>
		 * 
		 * <p>
		 * To access these extra parameters from within dialog code, use the following scheme: 
		 * 
		 * <listing>
		 * var food  = window.arguments[0];
		 * var price = window.arguments[1];</listing>
		 * 
		 * Note that you can access this property from within anywhere in the dialog code. 
		 * </p>
		 * 
		 * @param	url This is the URL to be loaded in the newly opened window. It can be an HTML document on the web, 
		 * it can be an image file or any type of file which is supported by the browser.
		 * @param	name This is the string that just names the new window. Such string can be used to be the target 
		 * of links and forms when the target attribute of an &lt;a&gt; element or of a &lt;form&gt; is specified. This string parameter 
		 * should not contain any blank space. strWindowName does not specify the title of the new window.
		 * @param	features Optional parameter. This parameter is the string which lists the requested window features 
		 * (window functionalities and toolbars) of the new browser window. This string parameter must not contain any blank space. 
		 * Each requested window feature must be separated by a comma inside the character string.
		 * @param	...args The arguments to be passed to the new window (optional). 
		 * @return The opened window 
		 * 
		 * @example
		 * <listing>
		 * var win = openDialog("http://example.tld/zzz.xul", "dlg", "", "pizza", 6.98);</listing>
		 */
		public function openDialog(url:DOMString, name:DOMString, features:DOMString, ...args):WindowProxy { return null; };
		
		/**
		 * <strong>HTML5 | Firefox 3</strong> 
		 * 
		 * window.postMessage is a method for safely enabling cross-origin communication.
		 * 
		 * <p>Normally, scripts on different pages are only allowed to access each other if and only if the pages which executed them 
		 * are at locations with the same protocol (usually both http), port number (80 being the default for http), and host (modulo 
		 * document.domain being set by both pages to the same value). window.postMessage provides a controlled mechanism to circumvent 
		 * this restriction in a way which is secure when properly used.</p>
		 * 
		 * <p>window.postMessage, when called, causes a MessageEvent to be dispatched at the target window when any pending script that 
		 * must be executed completes (e.g. remaining event handlers if window.postMessage is called from an event handler, previously-set 
		 * pending timeouts, etc.). The MessageEvent has the type message, a data property which is set to the string value of the first 
		 * argument provided to window.postMessage, an origin property corresponding to the origin of the main document in the window 
		 * calling window.postMessage at the time window.postMessage was called, and a source property which is the window from which 
		 * window.postMessage is called. (Other standard properties of events are present with their expected values.)</p>
		 * 
		 * <p>Note: Any window may access this method on any other window, at any time, regardless of the location of the document in 
		 * the window, to send it a message. Consequently, any event listener used to receive messages must first check the identity of 
		 * the sender of the message, using the origin and possibly source properties. This cannot be understated: Failure to check the 
		 * origin and possibly source properties enables cross-site scripting attacks.</p>
		 * 
		 * @param	message String data to be sent to the other window. 
		 * @param	targetOrigin Specifies what the origin of otherWindow must be for the event to be dispatched, either as the literal 
		 * string "~~" (indicating no preference) or as a URI. If at the time the event is scheduled to be dispatched the scheme, hostname, 
		 * or port of otherWindow's document does not match that provided in targetOrigin, the event will not be dispatched; only if all 
		 * three match will the event be dispatched. This mechanism provides control over where messages are sent; for example, if 
		 * postMessage were used to transmit a password, it would be absolutely critical that this argument be a URI whose origin is the
		 * same as the intended receiver of the message containing the password, to prevent interception of the password by a malicious third party. 
		 * 
		 * @see dom.events.MessageEvent
		 * @see dom.core.Document#domain
		 * 
		 * @example
		 * <listing>
		 * // otherWindow: A reference to another window; such a reference may be obtained, for example, using the 
		 * // contentWindow property of an iframe element, the object returned by window.open, or by named or 
		 * // numeric index on window.frames. 
		 * otherWindow.postMessage(message, targetOrigin);</listing>
		 * 
		 * <listing>
		 * // In window A's scripts, with A being on &lt;http://example.com:8080&gt;:
		 * 
		 * var popup = window.open(...popup details...);
		 * 
		 * // When the popup has fully loaded, if not blocked by a popup blocker:
		 * 
		 * // This does nothing, assuming the window hasn't changed its location.
		 * popup.postMessage("The user is 'bob' and the password is 'secret'", "http://secure.example.net");
		 * 
		 * // This will successfully queue a message to be sent to the popup, assuming the window hasn't changed its location.
		 * popup.postMessage("hello there!", "http://example.org");
		 * 
		 * function receiveMessage(event) {
		 * 		// Do we trust the sender of this message?  (might be different from what we originally opened, for example).
		 * 		if (event.origin !== "http://example.org") return;
		 * 
		 * 		// event.source is popup
		 * 		// event.data is "hi there yourself!  the secret response is: rheeeeet!"
		 * }
		 * window.addEventListener("message", receiveMessage, false);</listing>
		 * 
		 * <listing>
		 * // In the popup's scripts, running on &lt;http://example.org&gt;:
		 * 
		 * // Called sometime after postMessage is called
		 * function receiveMessage(event) {
		 * 		// Do we trust the sender of this message?
		 * 		if (event.origin !== "http://example.com:8080") return;
		 * 
		 * 		// event.source is window.opener
		 * 		// event.data is "hello there!"
		 * 
		 * 		// Assuming you've verified the origin of the received message (which
		 * 		// you must do in any case), a convenient idiom for replying to a
		 * 		// message is to call postMessage on event.source and provide event.origin as the targetOrigin.
		 * 		event.source.postMessage("hi there yourself!  the secret response " + "is: rheeeeet!", event.origin);
		 * }
		 * 
		 * window.addEventListener("message", receiveMessage, false);</listing>
		 */
		public function postMessage(message:DOMString, targetOrigin:DOMString):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Opens the Print Dialog to print the current document. 
		 */
		public function print():void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Displays a dialog with a message prompting the user to input some text. 
		 * 
		 * <p>Note: A prompt dialog contains a single-line textbox, a Cancel button, and an OK button, and returns the 
		 * (possibly empty) text the user inputted into that textbox. </p>
		 * 
		 * <p>Note: Dialog boxes are modal windows - they prevent the user from accessing the rest of the program's interface 
		 * until the dialog box is closed. For this reason, you should not overuse any function that creates a dialog box 
		 * (or modal window). </p>
		 * 
		 * @param	text Text to display to the user. 
		 * @param	value The default value displayed in the text input field. It is an optional parameter. 
		 * @return  The text entered by the user, or the value null. 
		 */
		public function prompt(text:DOMString, value:DOMString):DOMString { return null; };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Window.QueryInterface
		 */
		public function QueryInterface():void { };
		
		/**
		 * <strong>DOM Level 0 | OBSOLETE</strong>
		 * 
		 * Releases the window from trapping events of a specific type. 
		 * 
		 * <p>Note: that you can pass a list of events to this method using the following syntax: 
		 * window.releaseEvents(Event.KEYPRESS | Event.KEYDOWN | Event.KEYUP). </p>
		 * 
		 * @param	eventType The event type to release.
		 * 
		 * @example
		 * <listing>
		 * window.releaseEvents(Event.KEYPRESS)</listing>
		 * 
		 * @see dom.Window#captureEvents()
		 */
		public function releaseEvents(eventType:DOMString):void { };
		
		/**
		 * @inheritDoc
		 */
		public function removeEventListener(type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void { };
		
		/**
		 * @inheritDoc
		 */
		public function removeEventListenerNS(namespaceURI:DOMString, type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void {	};
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Resizes the current window by a certain amount. 
		 * 
		 * <p>Note: This method resizes the window relative to its current size. To resize the window 
		 * in absolute terms, use window.resizeTo. </p>
		 * 
		 * @param	xDelta The number of pixels to grow the window horizontally. 
		 * @param	yDelta The number of pixels to grow the window vertically. 
		 * 
		 * @see dom.Window#resizeTo()
		 * 
		 * @example
		 * <listing>
		 * // shrink the window 
		 * window.resizeBy(-200, -200);</listing>
		 */
		public function resizeBy(xDelta:Number, yDelta:Number):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Dynamically resizes window. 
		 * 
		 * @param	width The new width in pixels. 
		 * @param	height The new height in pixels. 
		 * 
		 * @see dom.Window#resizeBy()
		 */
		public function resizeTo(width:Number, height:Number):void { };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/En/DOM/window.restore http://developer.mozilla.org/En/DOM/window.restore
		 */
		public function restore():void { };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Window.routeEvent http://developer.mozilla.org/En/DOM/Window.routeEvent
		 * @see dom.Window#captureEvents()
		 * @see dom.Window#releaseEvents()
		 */
		public function routeEvent():void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Scrolls the window to a particular place in the document. 
		 * 
		 * @param	xCoord The pixel along the horizontal axis of the document that you want displayed in the upper left. 
		 * @param	yCoord The pixel along the vertical axis of the document that you want displayed in the upper left. 
		 * @example
		 * <listing>
		 * // put the 100th vertical pixel at the top of the window 
		 * &lt;button onClick="scroll(0, 100);"&gt;click to scroll down 100 pixels&lt;/button&gt;</listing>
		 */
		public function scroll(xCoord:Number, yCoord:Number):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Scrolls the document in the window by the given amount. 
		 * 
		 * <p>Note: Positive co-ordinates will scroll to the right and down the page. Negative values 
		 * will scroll to the left and up the page. </p>
		 * 
		 * @param	x the offset in pixels to scroll horizontally. 
		 * @param	y the offset in pixels to scroll vertically. 
		 * 
		 * @example
		 * <listing>
		 * // scroll one page 
		 * window.scrollBy(0, window.innerHeight);</listing>
		 */
		public function scrollBy(x:Number, y:Number):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Scrolls the document by the given number of lines. 
		 * 
		 * @param	lines The number of lines to scroll the document by. 
		 * 
		 * @example
		 * <listing>
		 * // scroll down the document by 5 lines.
		 * &lt;button onclick="scrollByLines(5);"&gt;down 5 lines&lt;/button&gt;</listing>
		 */
		public function scrollByLines(lines:Number):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Scrolls the current document by the specified number of pages. 
		 * 
		 * @param	pages The number of pages to scroll. 
		 * 
		 * @example
		 * <listing>
		 * // scroll down the document by 1 page 
		 * window.scrollByPages(1);</listing>
		 */
		public function scrollByPages(pages:Number):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Scrolls to a particular set of coordinates in the document. 
		 * 
		 * @param	xCoord The pixel along the horizontal axis of the document that you want displayed in the upper left. 
		 * @param	yCoord The pixel along the vertical axis of the document that you want displayed in the upper left. 
		 * 
		 * @example
		 * <listing>window.scrollTo(0, 1000);</listing>
		 */
		public function scrollTo(xCoord:Number, yCoord:Number):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Changes the cursor for the current window. 
		 * 
		 * <p>Note: The cursor isn't reset until it's set back to auto.</p>
		 * 
		 * <p>Note: This function is unavailable to web pages, which can use CSS cursor property instead.</p>
		 * 
		 * @param	state What state to set the cursor to. Valid settings can be: "wait", "auto"...
		 */
		public function setCursor(state:DOMString):void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Calls a function repeatedly, with a fixed time delay between each call to that function.
		 * 
		 * Note: setInterval() will pass the number of milliseconds late the callback was called into 
		 * the callback function, which can confuse it if it expects something else as an argument. To 
		 * sidestep that problem, use an anonymous function to call your callback.
		 * 
		 * Note: When you pass a method to setInterval() (or any other function, for that matter), it 
		 * will be invoked with a wrong <code>this</code> value.
		 * 
		 * @param	func The function you want to be called repeatedly.
		 * @param	delay The number of milliseconds (thousandths of a second) that the setInterval() function should wait before each call to func.
		 * @return A unique interval ID
		 * 
		 * @see #clearInterval()
		 */
		public function setInterval(func:Function, delay:Number):Number { return 0; };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/En/DOM/window.setResizable http://developer.mozilla.org/En/DOM/window.setResizable 
		 */
		public function setResizable():void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Executes a code snippet or a function after specified delay. 
		 * 
		 * Note: Code executed by setTimeout() is run in a separate execution context to the function from 
		 * which it was called. As a consequence, the <code>this</code> keyword for the called function will be set to 
		 * the window (or global) object, it will not be the same as the <code>this</code> value for the function that 
		 * called setTimeout.
		 * 
		 * @param	func The function you want to execute after delay milliseconds. 
		 * @param	delay The number of milliseconds (thousandths of a second) that the function call should be delayed by. 
		 * @return The ID of the timeout
		 * 
		 * @see #clearTimeout()
		 */
		public function setTimeout(func:Function, delay:Number):Number { return 0; };
		
		/**
		 * <strong>Non-Standard | IE4 Firefox3</strong> 
		 * 
		 * Creates and displays a modal dialog box containing a specified HTML document. 
		 * 
		 * <p>Note: Firefox does not implement the dialogHide, edge, status, or unadorned arguments.</p>
		 * 
		 * @param	uri The URI of the document to display in the dialog box. 
		 * @param	arguments An optional variant that contains values that should be passed to the dialog box; these are made available in the window object's window.dialogArguments property. 
		 * @param	options An optional string that specifies window ornamentation for the dialog box, using one or more semicolon delimited values: 
		 * <dl><dt>center: {on | off | yes | no | 1 | 0 }</dt><dd>If this argument's value is on, yes, or 1, the dialog window is centered on the desktop; otherwise it's hidden. The default value is yes. </dd></dl>
		 * <dl>dialogheight: <em>height</em><dt></dt><dd>	Specifies the height of the dialog box; by default, the size is specified in pixels. </dd></dl>
		 * <dl><dt>dialogleft: <em>left</em></dt><dd>	Specifies the horizontal position of the dialog box in relation to the upper-left corner of the desktop. </dd></dl>
		 * <dl><dt>dialogwidth: <em>width</em></dt><dd>Specifies the width of the dialog box; by default, the size is specified in pixels. </dd></dl>
		 * <dl><dt>dialogtop: <em>top</em></dt><dd>Specifies the vertical position of the dialog box in relation to the upper-left corner of the desktop. </dd></dl>
		 * <dl><dt>resizable: {on | off | yes | no | 1 | 0 }</dt><dd>If this argument's value is on, yes, or 1, the dialog window can be resized by the user; otherwise its size is fixed. The default value is no. </dd></dl>
		 * <dl><dt>scroll: {on | off | yes | no | 1 | 0 }</dt><dd>If this argument's value is on, yes, or 1, the dialog window has scroll bars; otherwise its size is fixed. The default value is no. </dd></dl>
		 * <dl><dt>dialogHide:{ yes | no | 1 | 0 | on | off }</dt><dd>Specifies whether the dialog window is hidden when printing or using print preview. This feature is only available when a dialog box is opened from a trusted application. The default is no.</dd></dl>
		 * <dl><dt>edge:{ sunken | raised }</dt><dd>Specifies the edge style of the dialog window. The default is raised.</dd></dl>
		 * <dl><dt>status:{ yes | no | 1 | 0 | on | off }</dt><dd>Specifies whether the dialog window displays a status bar. The default is yes for untrusted dialog windows and no for trusted dialog windows.</dd></dl>
		 * <dl><dt>unadorned:{ yes | no | 1 | 0 | on | off }</dt><dd>Specifies whether the dialog window displays the border window chrome. This feature is only available when a dialog box is opened from a trusted application. The default is no.</dd></dl>
		 * @return The returnValue property as set by the window of the document specified by uri. 
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536759(VS.85).aspx MSDN: showModalDialog Method
		 */
		public function showModalDialog(uri:DOMString, arguments:* = null, options:DOMString = null):* { return null; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Sizes the window according to its content. 
		 * 
		 * <p>The DOM content should be loaded when this function is called, for example after the DOMContentLoaded event. </p>
		 */
		public function sizeToContent():void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * This method stops window loading. 
		 * 
		 * <p>Note: The stop() method is exactly equivalent to clicking the stop button in the browser. Because of the order 
		 * in which scripts are loaded, the stop() method cannot stop the document in which it is contained from loading, but
		 * it will stop the loading of large images, new windows, and other objects whose loading is deferred.</p>
		 */
		public function stop():void { };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Decodes a value that has been encoded in hexadecimal (e.g., a cookie). 
		 * 
		 * @param	escaped The encoded string. 
		 * @return The decoded string. 
		 * 
		 * @example
		 * <listing>
		 * alert(unescape("%5C")); // displays "\"</listing>
		 */
		public function unescape(escaped:DOMString):DOMString { return null; };
		
		/**
		 * <strong>DOM Level 0</strong> 
		 * 
		 * Updates the state of commands of the current chrome window (UI). 
		 * 
		 * <p>Note: This enables or disables items (setting or clearing the "disabled" attribute on the command 
		 * node as appropriate), or ensures that the command state reflects the state of the selection by setting 
		 * current state information in the "state" attribute of the XUL command nodes. </p>
		 * 
		 * @param	commandName A particular string which describes what kind of update event this is (e.g. whether we are in bold right now). 
		 */
		public function updateCommands(commandName:DOMString):void { };
		
		/**
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Window.XPCNativeWrapper http://developer.mozilla.org/En/DOM/Window.XPCNativeWrapper 
		 */
		public function XPCNativeWrapper():void { };
		
		/**
		 * Undocumented
		 *
		 * @see http://developer.mozilla.org/En/DOM/Window.XPCSafeJSObjectWrapper http://developer.mozilla.org/En/DOM/Window.XPCSafeJSObjectWrapper 
		 */
		public function XPCSafeJSObjectWrapper():void { };
	}
}