package dom.events {
	
	import cssom.view.MouseEventView;
	import dom.core.types.DOMString;
	import dom.events.UIEvent;
	import dom.events.EventTarget;
	import dom.views.AbstractView;
	
	/**
	 * The MouseEvent interface provides specific contextual information 
	 * associated with Mouse events.
	 * 
	 * <p>In the case of nested elements mouse events are always targeted at the 
	 * most deeply nested element. Ancestors of the targeted element may use 
	 * bubbling to obtain notification of mouse events which occur within their 
	 * descendent elements.</p>
	 * 
	 * <p>To create an instance of the MouseEvent interface, use the 
	 * DocumentEvent.createEvent("MouseEvent") method call.</p>
	 * 
	 * <p><strong>Note:</strong> When initializing MouseEvent objects using initMouseEvent or 
	 * initMouseEventNS, implementations should use the client coordinates clientX 
	 * and clientY for calculation of other coordinates (such as target coordinates 
	 * exposed by DOM Level 0 implementations).</p>
	 * 
	 * @playerversion DOMEvents 2
	 * @since HTML 4.01
	 * @modified DOMEvents 3
	 */
	public class MouseEvent extends UIEvent implements MouseEventView {
		
		// Types
		/**
		 * A pointing device button is clicked over an element. 
		 * 
		 * <p>The definition of a click depends on the environment configuration; i.e. it may depend on the screen location or 
		 * the delay between the press and release of the pointing device button. In any case, the event target must be the 
		 * same between the mousedown, mouseup, and click. The sequence of these events is: mousedown, mouseup, and click. It 
		 * depends on the environment configuration whether the event type click can occur if one or more of the event types 
		 * mouseover, mousemove, and mouseout occur between the press and release of the pointing device button. In addition, 
		 * the event type is dispatched as described in Activation requests and behavior.</p>
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>Namespace</td><td><code>None</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Cancelable</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Bubbles</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Target</td><td><code>Element</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Context info</td><td>MouseEvent.screenX, MouseEvent.screenY, MouseEvent.clientX, MouseEvent.clientY, 
		 * MouseEvent.altKey, MouseEvent.ctrlKey, MouseEvent.shiftKey, MouseEvent.metaKey, MouseEvent.button, and UIEvent.view 
		 * are in use. The UIEvent.detail attribute indicates the current click count. The attribute value is 1 when the user 
		 * begins this action and increments by 1 for each click.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-click W3C - MouseEvent.click
		 * 
		 * @playerversion HTML 4.01
		 * @since HTML 4.01
		 * @modified DOMEvents 2
		 */
		public static const click:String ="click";
		
		/**
		 * A pointing device button is clicked twice over an element. 
		 * 
		 * <p>The definition of a double click depends on the environment configuration, except that the event target 
		 * must be the same between mousedown, mouseup, and dblclick. This event type is dispatched after the event 
		 * type click if a click and double click occur simultaneously, and after the event type mouseup otherwise.</p>
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>Namespace</td><td><code>None</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Cancelable</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Bubbles</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Target</td><td><code>Element</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Context info</td><td>MouseEvent.screenX, MouseEvent.screenY, MouseEvent.clientX, MouseEvent.clientY, MouseEvent.altKey, 
		 * MouseEvent.ctrlKey, MouseEvent.shiftKey, MouseEvent.metaKey, MouseEvent.button, and UIEvent.view are in use. The UIEvent.detail 
		 * attribute indicates the current click count.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-dblclick W3C - MouseEvent.dblclick
		 * 
		 * @playerversion HTML 4.01
		 * @since HTML 4.01
		 * @modified DOMEvents 2
		 */
		public static const dblclick:String ="dblclick";
		
		/**
		 * A pointing device button is pressed over an element.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>Namespace</td><td><code>None</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Cancelable</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Bubbles</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Target</td><td><code>Element</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Context info</td><td>MouseEvent.screenX, MouseEvent.screenY, MouseEvent.clientX, MouseEvent.clientY, 
		 * MouseEvent.altKey, MouseEvent.ctrlKey, MouseEvent.shiftKey, MouseEvent.metaKey, MouseEvent.button, and UIEvent.view 
		 * are in use. The UIEvent.detail attribute indicates the current click count incremented by one. For example, if no 
		 * click happened before the mousedown, UIEvent.detail will contain the value 1.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-mousedown W3C - MouseEvent.mousedown
		 * 
		 * @playerversion HTML 4.01
		 * @since HTML 4.01
		 * @modified DOMEvents 2
		 */
		public static const mousedown:String ="mousedown";
		
		/**
		 * A pointing device button is released over an element.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>Namespace</td><td><code>None</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Cancelable</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Bubbles</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Target</td><td><code>Element</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Context info</td><td>MouseEvent.screenX, MouseEvent.screenY, MouseEvent.clientX, MouseEvent.clientY, MouseEvent.altKey, MouseEvent.ctrlKey, MouseEvent.shiftKey, MouseEvent.metaKey, 
		 * MouseEvent.button, and UIEvent.view are in use. The UIEvent.detail attribute indicates the current click count incremented by one.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-mouseup W3C - MouseEvent.mouseup
		 * 
		 * @playerversion HTML 4.01
		 * @since HTML 4.01
		 * @modified DOMEvents 2
		 */
		public static const mouseup:String ="mouseup";
		
		/**
		 * A pointing device is moved onto an element.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>Namespace</td><td><code>None</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Cancelable</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Bubbles</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Target</td><td><code>Element</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Context info</td><td>MouseEvent.screenX, MouseEvent.screenY, MouseEvent.clientX, MouseEvent.clientY, 
		 * MouseEvent.altKey, MouseEvent.ctrlKey, MouseEvent.shiftKey, MouseEvent.metaKey, and UIEvent.view are in use. 
		 * MouseEvent.relatedTarget indicates the event target a pointing device is exiting, if any.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-mouseover W3C - MouseEvent.mouseover
		 * 
		 * @playerversion HTML 4.01
		 * @since HTML 4.01
		 * @modified DOMEvents 2
		 */
		public static const mouseover:String ="mouseover";
		
		/**
		 * A pointing device is moved while it is over an element.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>Namespace</td><td><code>None</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Cancelable</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Bubbles</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Target</td><td><code>Element</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Context info</td><td>MouseEvent.screenX, MouseEvent.screenY, MouseEvent.clientX, MouseEvent.clientY, 
		 * MouseEvent.altKey, MouseEvent.ctrlKey, MouseEvent.shiftKey, MouseEvent.metaKey, and UIEvent.view are in use.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-mousemove W3C - MouseEvent.mousemove
		 * 
		 * @playerversion HTML 4.01
		 * @since HTML 4.01
		 * @modified DOMEvents 2
		 */
		public static const mousemove:String ="mousemove";
		
		/**
		 * A pointing device is moved away from an element.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>Namespace</td><td><code>None</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Cancelable</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Bubbles</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Target</td><td><code>Element</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Context info</td><td>MouseEvent.screenX, MouseEvent.screenY, MouseEvent.clientX, MouseEvent.clientY, 
		 * MouseEvent.altKey, MouseEvent.ctrlKey, MouseEvent.shiftKey, MouseEvent.metaKey, and UIEvent.view are in use. 
		 * MouseEvent.relatedTarget indicates the event target a pointing device is entering, if any.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-mouseout W3C - MouseEvent.mouseout
		 * 
		 * @playerversion HTML 4.01
		 * @since HTML 4.01
		 * @modified DOMEvents 2
		 */
		public static const mouseout:String ="mouseout";
		
		/**
		 * Refer to the KeyboardEvent.altKey attribute.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MouseEvent-altKey W3C - MouseEvent.altKey
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get altKey():Boolean { return false; };
		
		/**
		 * Returns an integer value indicating the button that changed state. 
		 * Some mice may provide or simulate more buttons, and values higher than 2 
		 * can be used to represent such buttons.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>Namespace</td><td><code>None</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>0</code></td><td>Standard 'click', usually left button </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>1</code></td><td>Middle button, usually wheel-click </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>2</code></td><td>Right button, usually right-click </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Context info</td><td>MouseEvent.screenX, MouseEvent.screenY, MouseEvent.clientX, MouseEvent.clientY, MouseEvent.altKey, MouseEvent.ctrlKey, MouseEvent.shiftKey, MouseEvent.metaKey, 
		 * MouseEvent.button, and UIEvent.view are in use. The UIEvent.detail attribute indicates the current click count incremented by one.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * <p><strong>Note:</strong> Because mouse clicks are frequently intercepted by the user 
		 * interface, it may be difficult to detect buttons other than those for a standard mouse 
		 * click (usually the left button) in some circumstances. </p>
		 * 
		 * <p><strong>Note:</strong> Users may change the configuration of buttons on their pointing 
		 * device so that if an event's button property is zero, it may not have been caused by 
		 * the button that is physically left–most on the pointing device; however, it should 
		 * behave as if the left button was clicked in the standard button layout. </p>
		 * 
		 * @example
		 * <listing>
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function whichButton(e) {
		 * 	// Handle different event models
		 * 	var e = e || window.event;
		 * 	var btnCode;
		 * 
		 * 	if ('object' == typeof e) {
		 * 		btnCode = e.button;
		 * 
		 * 		switch (btnCode) {
		 * 			case 0 : alert('Left button clicked');
		 * 			break;
		 * 			case 1 : alert('Middle button clicked');
		 * 			break;
		 * 			case 2 : alert('Right button clicked');
		 * 			break;
		 * 			default: alert('Unexpected code: ' + btnCode);
		 * 		}
		 * 	}
		 * }
		 * 
		 * &lt;/script&gt;
		 * 
		 * &lt;p onmouseup="whichButton(event);" oncontextmenu="event.preventDefault();"&gt;Click with mouse...&lt;/p&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.button  MDC - event.button
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MouseEvent-button W3C - MouseEvent.button
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get button():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * 	&lt;title&gt;clientX\clientY example&lt;/title&gt;
		 * 
		 * 	&lt;script type="text/javascript"&gt;
		 * 		function showCoords(evt) {
		 * 			alert(
		 * 			"clientX value: " + evt.clientX + "\n"
		 * 			+ "clientY value: " + evt.clientY + "\n"
		 * 		);
		 * 		}
		 * 	&lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onmousedown="showCoords(event)"&gt;
		 * 	&lt;p&gt;To display the mouse coordinates click anywhere on the page.&lt;/p&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533567(VS.85).aspx MSDN: clientX Property
		 * @see http://developer.mozilla.org/en/DOM/event.clientX  MDC - Event: clientX Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: clientX Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #clientY
		 * @see #screenX
		 * @see #screenY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
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
		public function get clientX():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 	&lt;head&gt;
		 * 		&lt;title&gt;clientX\clientY example&lt;/title&gt;
		 * 
		 * 		&lt;script type="text/javascript"&gt;
		 * 			function showCoords(evt){
		 * 				alert(
		 * 				"clientX value: " + evt.clientX + "\n"
		 * 				+ "clientY value: " + evt.clientY + "\n"
		 * 			);
		 * 			}
		 * 		&lt;/script&gt;
		 * 	&lt;/head&gt;
		 * 
		 * 	&lt;body onmousedown="showCoords(event)"&gt;
		 * 		&lt;p&gt;To display the mouse coordinates click anywhere on the page.&lt;/p&gt;
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533568(VS.85).aspx MSDN: clientY Property
		 * @see http://developer.mozilla.org/en/DOM/event.clientY  MDC - Event: clientY Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: clientY Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #clientX
		 * @see #screenX
		 * @see #screenY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
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
		public function get clientY():Number { return 0; };
		
		/**
		 * Refer to the KeyboardEvent.ctrlKey attribute.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MouseEvent-ctrlKey W3C - MouseEvent.ctrlKey
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get ctrlKey():Boolean { return false; };
		
		/**
		 * Refer to the KeyboardEvent.metaKey attribute.
		 * 
		 * @example
		 * <listing>
		 * function goInput(e) {
		 * 	// checks metaKey and
		 * 	if (e.metaKey) {
		 * 		// passes event along
		 * 		superSizeOutput(e);
		 * 	} else {
		 * 		doOutput(e);
		 * 	}
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.metaKey MDC - event.metaKey
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MouseEvent-metaKey W3C - MouseEvent.metaKey
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get metaKey():Boolean { return false; };
		
		/**
		 * Used to identify a secondary EventTarget related to a UI event, depending 
		 * on the type of event.
		 * 
		 * <p><strong>Note:</strong> The relatedTarget property is used to find the other element, if any, involved 
		 * in an event. Events like mouseover are oriented around a certain target, but also involve a secondary target, 
		 * such as the target that is exited as the mouseover event fires for the primary target. </p>
		 * 
		 * @example
		 * <listing>
		 * var rel = event.relatedTarget;
		 * // dump("LEAVING " + (rel ? rel.localName : "null") + "\n");
		 * // relatedTarget is null when the titletip is first shown:
		 * // a mouseout event fires because the mouse is exiting 
		 * // the main window and entering the titletip "window".
		 * // relatedTarget is also null when the mouse exits the main 
		 * // window completely, so count how many times relatedTarget 
		 * // was null after titletip is first shown and hide popup
		 * // the 2nd time
		 * if (!rel) {
		 * 	if (++this._mouseOutCount &gt; 1)
		 * 	this.hidePopup();
		 * 	return;
		 * }
		 * // find out if the node we are entering is one of our 
		 * // anonymous children
		 * while (rel) {
		 * 	if (rel == this) {
		 * 		break;
		 * 	}
		 * 	rel = rel.parentNode;
		 * }
		 * // if the entered node is not a descendant of ours, hide 
		 * // the tooltip
		 * if (rel != this &amp;&amp; this._isMouseOver) {
		 * 	this.hidePopup();
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.relatedTarget MDC - event.relatedTarget
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MouseEvent-relatedTarget W3C - MouseEvent.relatedTarget
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get relatedTarget():EventTarget { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 	&lt;head&gt;
		 * 		&lt;title&gt;screenX\screenY example&lt;/title&gt;
		 * 
		 * 		&lt;script type="text/javascript"&gt;
		 * 			function showCoords(evt){
		 * 				alert(
		 * 				"screenX value: " + evt.screenX + "\n"
		 * 				+ "screenY value: " + evt.screenY + "\n"
		 * 			);
		 * 		}
		 * 
		 * 		&lt;/script&gt;
		 * 	&lt;/head&gt;
		 * 
		 * 	&lt;body onmousedown="showCoords(event)"&gt;
		 * 		&lt;p&gt;To display the mouse coordinates click anywhere on the page.&lt;/p&gt;
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * <listing>
		 * function checkClickMap(e) {
		 * 	if (e.screenX &lt; 50) doRedButton();
		 * 	if (50 &lt;= e.screenX) &lt; 100 doYellowButton();
		 * 	if (e.screenX &gt;= 100) doRedButton();
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534391(VS.85).aspx MSDN: screenX Property
		 * @see http://developer.mozilla.org/en/DOM/event.screenX  MDC - Event: screenX Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: screenX Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #clientX
		 * @see #clientY
		 * @see #screenY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
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
		public function get screenX():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 	&lt;head&gt;
		 * 		&lt;title&gt;screenX\screenY example&lt;/title&gt;
		 * 
		 * 		&lt;script type="text/javascript"&gt;
		 * 			function showCoords(evt){
		 * 				alert(
		 * 				"screenX value: " + evt.screenX + "\n"
		 * 				+ "screenY value: " + evt.screenY + "\n"
		 * 			);
		 * 		}
		 * 
		 * 		&lt;/script&gt;
		 * 	&lt;/head&gt;
		 * 
		 * 	&lt;body onmousedown="showCoords(event)"&gt;
		 * 		&lt;p&gt;To display the mouse coordinates click anywhere on the page.&lt;/p&gt;
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * <listing>
		 * function checkClickMap(e) {
		 * 	if (e.screenX &lt; 50) doRedButton();
		 * 	if (50 &lt;= e.screenX) &lt; 100 doYellowButton();
		 * 	if (e.screenX &gt;= 100) doRedButton();
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534392(VS.85).aspx MSDN: screenY Property
		 * @see http://developer.mozilla.org/en/DOM/event.screenY  MDC - Event: screenY Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: screenY Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #clientX
		 * @see #clientY
		 * @see #screenY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
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
		public function get screenY():Number { return 0; };
		
		/**
		 * Refer to the KeyboardEvent.shiftKey attribute.
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;shiftKey example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function showChar(e){
		 * 	alert(
		 * 		"Key Pressed: " + String.fromCharCode(e.charCode) + "\n"
		 * 		+ "charCode: " + e.charCode + "\n"
		 * 		+ "SHIFT key pressed: " + e.shiftKey + "\n"
		 * 		+ "ALT key pressed: " + e.altKey + "\n"
		 * 	);
		 * }
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onkeypress="showChar(event);"&gt;
		 * &lt;p&gt;Press any character key, with or without holding down
		 * the SHIFT key.&lt;br /&gt;
		 * You can also use the SHIFT key together with the ALT key.&lt;/p&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.shiftKey MDC - event.shiftKey
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MouseEvent-shiftKey W3C - MouseEvent.shiftKey
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get shiftKey():Boolean { return false; };
		
		/**
		 * Queries the state of a modifier using a key identifier.
		 * 
		 * @param	keyIdentifierArg Refer to the KeyboardEvent.getModifierState() 
		 * method for a description of this parameter.
		 * 
		 * Note: If an application wishes to distinguish between right and left 
		 * modifiers, this information could be deduced using keyboard events 
		 * and KeyboardEvent.keyLocation.
		 * @return If it is a modifier key and the modifier is activated
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MouseEvent-getModifierState W3C - MouseEvent.getModifierState()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function getModifierState(keyIdentifierArg:DOMString):Boolean { return false; };
		
		/**
		 * Initializes attributes of a MouseEvent object. This method has the 
		 * same behavior as UIEvent.initUIEvent(). 
		 * 
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	viewArg Specifies UIEvent.view. This value may be null.
		 * @param	detailArg Specifies UIEvent.detail.
		 * @param	screenXArg Specifies MouseEvent.screenX.
		 * @param	screenYArg Specifies MouseEvent.screenY.
		 * @param	clientXArg Specifies MouseEvent.clientX.
		 * @param	clientYArg Specifies MouseEvent.clientY.
		 * @param	ctrlKeyArg Specifies MouseEvent.ctrlKey.
		 * @param	altKeyArg Specifies MouseEvent.altKey.
		 * @param	shiftKeyArg Specifies MouseEvent.shiftKey.
		 * @param	metaKeyArg Specifies MouseEvent.metaKey.
		 * @param	buttonArg Specifies MouseEvent.button
		 * @param	relatedTargetArg Specifies MouseEvent.relatedTarget. This value may be null.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initMouseEvent W3C - MouseEvent.initMouseEvent()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function initMouseEvent(typeArg:DOMString, 
								canBubbleArg:Boolean, 
								cancelableArg:Boolean, 
								viewArg:AbstractView, 
								detailArg:Number, 
								screenXArg:Number, 
								screenYArg:Number, 
								clientXArg:Number, 
								clientYArg:Number, 
								ctrlKeyArg:Boolean, 
								altKeyArg:Boolean, 
								shiftKeyArg:Boolean, 
								metaKeyArg:Boolean, 
								buttonArg:Number, 
								relatedTargetArg:EventTarget):void { };
		
		/**
		 * Initializes attributes of a MouseEvent object. This method has the
		 * same behavior as UIEvent.initUIEventNS(). 
		 * 
		 * @param	namespaceURIArg Specifies Event.namespaceURI, the namespace URI associated with this event, or null if no namespace.
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	viewArg Specifies UIEvent.view. This value may be null.
		 * @param	detailArg Specifies UIEvent.detail.
		 * @param	screenXArg Specifies MouseEvent.screenX.
		 * @param	screenYArg Specifies MouseEvent.screenY.
		 * @param	clientXArg Specifies MouseEvent.clientX.
		 * @param	clientYArg Specifies MouseEvent.clientY.
		 * @param	ctrlKeyArg Specifies MouseEvent.ctrlKey.
		 * @param	altKeyArg Specifies MouseEvent.altKey.
		 * @param	shiftKeyArg Specifies MouseEvent.shiftKey.
		 * @param	metaKeyArg Specifies MouseEvent.metaKey.
		 * @param	buttonArg Specifies MouseEvent.button
		 * @param	relatedTargetArg Specifies MouseEvent.relatedTarget. This value may be null.
		 * @param	modifiersListArg Refer to the KeyboardEvent.initKeyboardEventNS() method for a description of this parameter.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initMouseEventNS W3C - MouseEvent.initMouseEventNS()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initMouseEventNS(namespaceURIArg:DOMString, 
								typeArg:DOMString, 
								canBubbleArg:Boolean, 
								cancelableArg:Boolean, 
								viewArg:AbstractView, 
								detailArg:Number, 
								screenXArg:Number, 
								screenYArg:Number, 
								clientXArg:Number, 
								clientYArg:Number, 
								ctrlKeyArg:Boolean, 
								altKeyArg:Boolean, 
								shiftKeyArg:Boolean, 
								metaKeyArg:Boolean, 
								buttonArg:Number, 
								relatedTargetArg:EventTarget, 
								modifiersListArg:DOMString):void { };
								
		/* INTERFACE cssom.view.MouseEventView */
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;head&gt;
		 * 	&lt;script&gt;
		 * 		function offsetCoords() {
		 * 			var offsetInfo = ""
		 * 			offsetInfo = "The x coordinate is: " + window.event.offsetX + "\r"
		 * 			offsetInfo += "The y coordinate is: " + window.event.offsetY + "\r"
		 * 			alert(offsetInfo);
		 * 		}
		 * 	&lt;/script&gt;
		 * &lt;/head&gt;
		 * &lt;body onmousemove="window.status = 'X=' + window.event.offsetX + 
		 * ' Y=' + window.event.offsetY" ondblclick="offsetCoords()"&gt;
		 * 	...
		 * 	&lt;div onclick="offsetCoords();" ... position:absolute; top:200; left:300;"&gt;
		 * 	...
		 * 	&lt;/div&gt;
		 * &lt;/body&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534305(VS.85).aspx MSDN: offsetX Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: offsetX Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #offsetY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
		 * 
		 * @productversion IE 5.5_buggy
		 * @productversion IE 6.0_buggy
		 * @productversion IE 7.0_buggy
		 * @productversion IE 8.0_as_IE7_buggy
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.1b_no
		 * @productversion Safari 3.0_incorrect
		 * @productversion Safari 3.1_incorrect
		 * @productversion Safari 4.0b_incorrect
		 * @productversion Chrome 1.0_incorrect
		 * @productversion Chrome 2.0_incorrect
		 * @productversion Opera 9.62_incorrect
		 * @productversion Opera 10.0a_incorrect
		 */
		public function get offsetX():Number{ return 0 }
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;head&gt;
		 * 	&lt;script&gt;
		 * 		function offsetCoords() {
		 * 			var offsetInfo = ""
		 * 			offsetInfo = "The x coordinate is: " + window.event.offsetX + "\r"
		 * 			offsetInfo += "The y coordinate is: " + window.event.offsetY + "\r"
		 * 			alert(offsetInfo);
		 * 		}
		 * 	&lt;/script&gt;
		 * &lt;/head&gt;
		 * &lt;body onmousemove="window.status = 'X=' + window.event.offsetX + 
		 * ' Y=' + window.event.offsetY" ondblclick="offsetCoords()"&gt;
		 * 	...
		 * 	&lt;div onclick="offsetCoords();" ... position:absolute; top:200; left:300;"&gt;
		 * 	...
		 * 	&lt;/div&gt;
		 * &lt;/body&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534306(VS.85).aspx MSDN: offsetY Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: offsetY Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #offsetX
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
		 * 
		 * @productversion IE 5.5_buggy
		 * @productversion IE 6.0_buggy
		 * @productversion IE 7.0_buggy
		 * @productversion IE 8.0_as_IE7_buggy
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.1b_no
		 * @productversion Safari 3.0_incorrect
		 * @productversion Safari 3.1_incorrect
		 * @productversion Safari 4.0b_incorrect
		 * @productversion Chrome 1.0_incorrect
		 * @productversion Chrome 2.0_incorrect
		 * @productversion Opera 9.62_incorrect
		 * @productversion Opera 10.0a_incorrect
		 */
		public function get offsetY():Number{ return 0 }
		
		/**
		 * Returns the horizontal coordinate of the event relative to whole document. 
		 * 
		 * <p><strong>Note (IE):</strong> In order to get it in IE, too, add the scrolling offset of the 
		 * document to clientX/Y.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;pageX\pageY &amp; layerX\layerY example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 	function showCoords(evt){
		 * 		var form = document.forms.form_coords;
		 * 		var parent_id = evt.target.parentNode.id;
		 * 		form.parentId.value = parent_id;
		 * 		form.pageXCoords.value = evt.pageX;
		 * 		form.pageYCoords.value = evt.pageY;
		 * 		form.layerXCoords.value = evt.layerX;
		 * 		form.layerYCoords.value = evt.layerY;
		 * 	}
		 * &lt;/script&gt;
		 * 
		 * &lt;style type="text/css"&gt;
		 * 
		 * #d1 {
		 * 	border: solid blue 1px;
		 * 	padding: 20px;
		 * }
		 * 
		 * #d2 {
		 * 	position: absolute;
		 * 	top: 180px;
		 * 	left: 80%;
		 * 	right:auto;
		 * 	width: 40%;
		 * 	border: solid blue 1px;
		 * 	padding: 20px;
		 * }
		 * 
		 * #d3 {
		 * 	position: absolute;
		 * 	top: 240px;
		 * 	left: 20%;
		 * 	width: 50%;
		 * 	border: solid blue 1px;
		 * 	padding: 10px;
		 * }
		 * 
		 * &lt;/style&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onmousedown="showCoords(event)"&gt;
		 * 
		 * &lt;p&gt;To display the mouse coordinates please click anywhere on the page.&lt;/p&gt;
		 * 
		 * &lt;div id="d1"&gt;
		 * 	&lt;span&gt;This is an un-positioned div so clicking it will return
		 * 	layerX/layerY values almost the same as pageX/PageY values.&lt;/span&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;div id="d2"&gt;
		 * 	&lt;span&gt;This is a positioned div so clicking it will return layerX/layerY
		 * 	values that are relative to the top-left corner of this positioned
		 * 	element. Note the pageX\pageY properties still return the
		 * 	absolute position in the document, including page scrolling.&lt;/span&gt;
		 * 
		 * 	&lt;span&gt;Make the page scroll more! This is a positioned div so clicking it
		 * 	will return layerX/layerY values that are relative to the top-left
		 * 	corner of this positioned element. Note the pageX\pageY properties still
		 * 	return the absolute position in the document, including page
		 * 	scrolling.&lt;/span&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;div id="d3"&gt;
		 * 	&lt;form name="form_coords"&gt;
		 * 		Parent Element id: &lt;input type="text" name="parentId" size="7" /&gt;&lt;br /&gt;
		 * 		pageX:&lt;input type="text" name="pageXCoords" size="7" /&gt;  
		 * 		pageY:&lt;input type="text" name="pageYCoords" size="7" /&gt;&lt;br /&gt;
		 * 		layerX:&lt;input type="text" name="layerXCoords" size="7" /&gt;  
		 * 		layerY:&lt;input type="text" name="layerYCoords" size="7" /&gt;
		 * 	&lt;/form&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.pageX MDC - Event: pageX Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: pageX Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #pageY
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
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
		override public function get pageX():Number{ return 0 }
		
		/**
		 * Returns the vertical coordinate of the event relative to the whole document.
		 * 
		 * <p><strong>Note (IE):</strong> In order to get it in IE, too, add the scrolling offset of the 
		 * document to clientX/Y.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;pageX\pageY &amp; layerX\layerY example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 	function showCoords(evt){
		 * 		var form = document.forms.form_coords;
		 * 		var parent_id = evt.target.parentNode.id;
		 * 		form.parentId.value = parent_id;
		 * 		form.pageXCoords.value = evt.pageX;
		 * 		form.pageYCoords.value = evt.pageY;
		 * 		form.layerXCoords.value = evt.layerX;
		 * 		form.layerYCoords.value = evt.layerY;
		 * 	}
		 * &lt;/script&gt;
		 * 
		 * &lt;style type="text/css"&gt;
		 * 
		 * #d1 {
		 * 	border: solid blue 1px;
		 * 	padding: 20px;
		 * }
		 * 
		 * #d2 {
		 * 	position: absolute;
		 * 	top: 180px;
		 * 	left: 80%;
		 * 	right:auto;
		 * 	width: 40%;
		 * 	border: solid blue 1px;
		 * 	padding: 20px;
		 * }
		 * 
		 * #d3 {
		 * 	position: absolute;
		 * 	top: 240px;
		 * 	left: 20%;
		 * 	width: 50%;
		 * 	border: solid blue 1px;
		 * 	padding: 10px;
		 * }
		 * 
		 * &lt;/style&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onmousedown="showCoords(event)"&gt;
		 * 
		 * &lt;p&gt;To display the mouse coordinates please click anywhere on the page.&lt;/p&gt;
		 * 
		 * &lt;div id="d1"&gt;
		 * 	&lt;span&gt;This is an un-positioned div so clicking it will return
		 * 	layerX/layerY values almost the same as pageX/PageY values.&lt;/span&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;div id="d2"&gt;
		 * 	&lt;span&gt;This is a positioned div so clicking it will return layerX/layerY
		 * 	values that are relative to the top-left corner of this positioned
		 * 	element. Note the pageX\pageY properties still return the
		 * 	absolute position in the document, including page scrolling.&lt;/span&gt;
		 * 
		 * 	&lt;span&gt;Make the page scroll more! This is a positioned div so clicking it
		 * 	will return layerX/layerY values that are relative to the top-left
		 * 	corner of this positioned element. Note the pageX\pageY properties still
		 * 	return the absolute position in the document, including page
		 * 	scrolling.&lt;/span&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;div id="d3"&gt;
		 * 	&lt;form name="form_coords"&gt;
		 * 		Parent Element id: &lt;input type="text" name="parentId" size="7" /&gt;&lt;br /&gt;
		 * 		pageX:&lt;input type="text" name="pageXCoords" size="7" /&gt;  
		 * 		pageY:&lt;input type="text" name="pageYCoords" size="7" /&gt;&lt;br /&gt;
		 * 		layerX:&lt;input type="text" name="layerXCoords" size="7" /&gt;  
		 * 		layerY:&lt;input type="text" name="layerYCoords" size="7" /&gt;
		 * 	&lt;/form&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.pageY MDC - Event: pageY Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: pageY Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #pageX
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
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
		override public function get pageY():Number{ return 0 }
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>&lt;body onmousemove="window.status = 'X=' + window.event.x + ' Y=' + window.event.y"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535154(VS.85).aspx MSDN: x Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: x Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #y
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
		 * 
		 * @productversion IE 5.5_alternative
		 * @productversion IE 6.0_alternative
		 * @productversion IE 7.0_alternative
		 * @productversion IE 8.0_as_IE7_alternative
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.1b_no
		 * @productversion Safari 3.0_alternative
		 * @productversion Safari 3.1_alternative
		 * @productversion Safari 4.0b_alternative
		 * @productversion Chrome 1.0_alternative
		 * @productversion Chrome 2.0_alternative
		 * @productversion Opera 9.62_alternative
		 * @productversion Opera 10.0a_alternative
		 */
		public function get x():Number{ return 0 }
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>&lt;body onmousemove="window.status = 'X=' + window.event.x + ' Y=' + window.event.y"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535164(VS.85).aspx MSDN: y Property
		 * @see http://www.w3.org/TR/cssom-view/#the-mouseeventview-interface  W3C - CSSOM View: y Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#mousepos  Quirksmode: Mouse position
		 * @see #x
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMEvents 2
		 * 
		 * @productversion IE 5.5_alternative
		 * @productversion IE 6.0_alternative
		 * @productversion IE 7.0_alternative
		 * @productversion IE 8.0_as_IE7_alternative
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.1b_no
		 * @productversion Safari 3.0_alternative
		 * @productversion Safari 3.1_alternative
		 * @productversion Safari 4.0b_alternative
		 * @productversion Chrome 1.0_alternative
		 * @productversion Chrome 2.0_alternative
		 * @productversion Opera 9.62_alternative
		 * @productversion Opera 10.0a_alternative
		 */
		public function get y():Number{ return 0 }
	}
}