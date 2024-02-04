package dom.events {
	
	import dom.events.Event;
	import dom.core.types.DOMString;
	import dom.views.AbstractView;
	
	/**
	 * The UIEvent interface provides specific contextual information 
	 * associated with User Interface events.
	 * 
	 * <p>To create an instance of the UIEvent interface, use the 
	 * DocumentEvent.createEvent("UIEvent") method call.</p>
	 * 
	 * @see http://developer.mozilla.org/en/DOM/event MDC - event
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-UIEvent W3C - DOM 3 Events: UIEvent
	 * 
	 * @playerversion DOMEvents 2
	 * @since DOMEvents 2
	 * @modified DOMEvents 3
	 */
	public class UIEvent extends Event {
		
		// Types
		/**
		 * Refer to Activation requests and behavior.
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
		 * 		<td>Context info</td><td>UIEvent.view is in use.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-flow-activation W3C - Activation requests and behavior
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMActivate W3C - UIEvent.DOMActivate
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const DOMActivate:String ="DOMActivate";
		
		/**
		 * An event target receives focus. The focus is given to the element before the dispatch of this event type. This event type is dispatched after the event type focus.
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMFocusIn W3C - UIEvent.DOMFocusIn
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const DOMFocusIn:String ="DOMFocusIn";
		
		/**
		 * An event target loses focus. The focus is taken from the element before the dispatch of this event type. This event type is dispatched after the event type blur.
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMFocusOut W3C - UIEvent.DOMFocusOut
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const DOMFocusOut:String ="DOMFocusOut";
		
		/**
		 * An event target receives focus. The focus is given to the element before the dispatch of this event type.
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-focus W3C - UIEvent.focus
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const focus:String ="focus";
		
		/**
		 * An event target loses focus. The focus is taken from the element before the dispatch of this event type.
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-blur W3C - UIEvent.blur
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const blur:String ="blur";
		
		/**
		 * A document view or an element has been resized. The resize occured before the dispatch of this event type.
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Document, Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-UIEvent W3C - DOM 3 Events: UIEvent.resize
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const resize:String ="resize";
		
		/**
		 * A document view or an element has been scrolled. The scroll occured before the dispatch of this event type.
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Document, Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-scroll W3C - DOM 3 Events: UIEvent.scroll
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const scroll:String ="scroll";
		
		/**
		 *  The DOM Implementation finishes loading the resource (such as the document) and any dependent resources 
		 * (such as images, style sheets, or scripts). Dependent resources that fail to load will not prevent this 
		 * event from firing if the resource that loaded them is still accessible via the DOM. If this event type 
		 * is dispatched, implementations are required to dispatch this event at least on the Document node.
		 * 
		 * <p><strong>Note:</strong> Dispatched from UIEvent if generated from a user interface, Event otherwise.</p>
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Document, Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-load W3C - DOM 3 Events: UIEvent.load / Event.load
		 * 
		 * @playerversion HTML 4.0
		 * @since HTML 4.0
		 * @modified DOMEvents 3
		 */
		public static const load:String ="load";
		
		/**
		 * The DOM implementation removes from the environment the resource (such as the document) or any dependent
		 * resources (such as images, style sheets, scripts). The document is unloaded after the dispatch of this event 
		 * type. If this event type is dispatched, implementations are required to dispatch this event at least on the 
		 * Document node.
		 * 
		 * <p><strong>Note:</strong> Dispatched from UIEvent if generated from a user interface, Event otherwise.</p>
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Document, Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-unload W3C - DOM 3 Events: UIEvent.unload / Event.unload
		 * 
		 * @playerversion HTML 4.0
		 * @since HTML 4.0
		 * @modified DOMEvents 3
		 */
		public static const unload:String ="unload";
		
		/**
		 * Loading of a resource has been aborted.
		 * 
		 * <p><strong>Note:</strong> Dispatched from UIEvent if generated from a user interface, Event otherwise.</p>
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-abort W3C - DOM 3 Events: UIEvent.abort / Event.abort
		 * 
		 * @playerversion HTML 4.0
		 * @since HTML 4.0
		 * @modified DOMEvents 3
		 */
		public static const abort:String ="abort";
		
		/**
		 * A resource failed to load, or has been loaded but cannot be interpreted according to its semantics 
		 * such as an invalid image, a script execution error, or non-well-formed XML.
		 * 
		 * <p><strong>Note:</strong> Dispatched from UIEvent if generated from a user interface, Event otherwise.</p>
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-error W3C - DOM 3 Events: UIEvent.error / Event.error
		 * 
		 * @playerversion HTML 4.0
		 * @since HTML 4.0
		 * @modified DOMEvents 3
		 */
		public static const error:String ="error";
		
		/**
		 * A user selects some text. DOM Level 3 Events does not provide contextual information to access 
		 * the selected text. The selection occured before the dispatch of this event type.
		 * 
		 * <p><strong>Note:</strong> Dispatched from UIEvent if generated from a user interface, Event otherwise.</p>
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-select W3C - DOM 3 Events: UIEvent.select / Event.select
		 * 
		 * @playerversion HTML 4.0
		 * @since HTML 4.0
		 * @modified DOMEvents 3
		 */
		public static const select:String ="select";
		
		/**
		 * A control loses the input focus and its value has been modified since gaining focus. This event type is dispatched before the event type blur.
		 * 
		 * <p><strong>Note:</strong> Dispatched from UIEvent if generated from a user interface, Event otherwise.</p>
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-change W3C - DOM 3 Events: UIEvent.change / Event.change
		 * 
		 * @playerversion HTML 4.0
		 * @since HTML 4.0
		 * @modified DOMEvents 3
		 */
		public static const change:String ="change";
		
		/**
		 * A form, such as a [HTML 4.01] or [XHTML 1.0] form, is submitted.
		 * 
		 * <p><strong>Note:</strong> Dispatched from UIEvent if generated from a user interface, Event otherwise.</p>
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-submit W3C - DOM 3 Events: UIEvent.submit / Event.submit
		 * 
		 * @playerversion HTML 4.0
		 * @since HTML 4.0
		 * @modified DOMEvents 3
		 */
		public static const submit:String ="submit";
		
		/**
		 * A form, such as a [HTML 4.01] or [XHTML 1.0] form, is reset.
		 * 
		 * <p><strong>Note:</strong> Dispatched from UIEvent if generated from a user interface, Event otherwise.</p>
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>UIEvent.view is in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-reset W3C - DOM 3 Events: UIEvent.reset / Event.reset
		 * 
		 * @playerversion HTML 4.0
		 * @since HTML 4.0
		 * @modified DOMEvents 3
		 */
		public static const reset:String ="reset";
		
		/**
		 * Returns a boolean indicating whether the event produced a key character or not. 
		 * 
		 * <p><strong>Note:</strong> Some key combos may raise events but not produce any character (example: ctrl + alt ?). 
		 * When this is the case, isChar returns false. isChar is used when event handlers need to do something like echo 
		 * the input on the screen. </p>
		 * 
		 * <p><strong>Note:</strong> There is currently a known bug affecting the return result, which is always false and 
		 * never true. Please see the discussion link in the sidebar for more details. </p>
		 * 
		 * @example
		 * <listing>
		 * if e.isChar {
		 * 	echoInput(e.type);
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.isChar MDC - event.isChar
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get isChar():Boolean { return false; };
		
		/**
		 * Specifies some detail information about the Event, depending 
		 * on the type of event.
		 * 
		 * <p><strong>Note:</strong> For mouse events, such as click, dblclick, mousedown, or mouseup, the detail 
		 * property indicates how many times the mouse has been clicked in the same location for this event.</p>
		 * 
		 * <p><strong>Note:</strong> For a dblclick event the value of detail is always 2.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * 	&lt;title&gt;event.detail example&lt;/title&gt;
		 * 	&lt;script type="text/javascript"&gt;
		 * 	function giveDetails(e) {
		 * 		var text = document.getElementById("t");
		 * 		text.value = e.detail;
		 * 	}
		 * 	function init() {
		 * 		var b1 = document.getElementById("b");
		 * 		b1.onclick = giveDetails;   
		 * 	}
		 * 	&lt;/script&gt;
		 * 
		 * &lt;/head&gt;
		 * &lt;body onload="init();"&gt;
		 * &lt;form&gt;
		 * 	&lt;input id="b" type="button" value="details"&gt;
		 * 	&lt;input id="t" type="text" value=""&gt;&lt;br&gt;
		 * 	&lt;input type="reset"&gt;
		 * &lt;/form&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.detail MDC - event.detail
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-UIEvent-detail W3C - UIEvent.detail
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get detail():Number { return 0; };
		
		/**
		 * Returns the horizontal coordinate of the event relative to the current layer. 
		 * 
		 * <p><strong>Note:</strong> layerX takes scrolling of the page into account, and returns a value relative to the 
		 * whole of the document, unless the event occurs inside a positioned element, where the returned value is 
		 * relative to the top left of the positioned element. </p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		&lt;head&gt;
		&lt;title&gt;pageX\pageY &amp; layerX\layerY example&lt;/title&gt;

		&lt;script type="text/javascript"&gt;

		function showCoords(evt){
		  var form = document.forms.form_coords;
		  var parent_id = evt.target.parentNode.id;
		  form.parentId.value = parent_id;
		  form.pageXCoords.value = evt.pageX;
		  form.pageYCoords.value = evt.pageY;
		  form.layerXCoords.value = evt.layerX;
		  form.layerYCoords.value = evt.layerY;
		}
		&lt;/script&gt;

		&lt;style type="text/css"&gt;

		 #d1 {
		  border: solid blue 1px;
		  padding: 20px;
		 }

		 #d2 {
		  position: absolute;
		  top: 180px;
		  left: 80%;
		  right:auto;
		  width: 40%;
		  border: solid blue 1px;
		  padding: 20px;
		 }

		 #d3 {
		  position: absolute;
		  top: 240px;
		  left: 20%;
		  width: 50%;
		  border: solid blue 1px;
		  padding: 10px;
		 }

		&lt;/style&gt;
		&lt;/head&gt;

		&lt;body onmousedown="showCoords(event)"&gt;

		&lt;p&gt;To display the mouse coordinates please click anywhere on the page.&lt;/p&gt;

		&lt;div id="d1"&gt;
		&lt;span&gt;This is an un-positioned div so clicking it will return
		layerX/layerY values almost the same as pageX/PageY values.&lt;/span&gt;
		&lt;/div&gt;

		&lt;div id="d2"&gt;

		&lt;span&gt;This is a positioned div so clicking it will return layerX/layerY
		values that are relative to the top-left corner of this positioned
		element. Note the pageX\pageY properties still return the
		absolute position in the document, including page scrolling.&lt;/span&gt;

		&lt;span&gt;Make the page scroll more! This is a positioned div so clicking it
		will return layerX/layerY values that are relative to the top-left
		corner of this positioned element. Note the pageX\pageY properties still
		return the absolute position in the document, including page
		scrolling.&lt;/span&gt;

		&lt;/div&gt;

		&lt;div id="d3"&gt;
		&lt;form name="form_coords" id="form1"&gt;
		 Parent Element id: &lt;input type="text" name="parentId" size="7" /&gt;&lt;br /&gt;

		 pageX:&lt;input type="text" name="pageXCoords" size="7" /&gt;  
		 pageY:&lt;input type="text" name="pageYCoords" size="7" /&gt;&lt;br /&gt;
		 layerX:&lt;input type="text" name="layerXCoords" size="7" /&gt;  
		 layerY:&lt;input type="text" name="layerYCoords" size="7" /&gt;

		&lt;/form&gt;
		&lt;/div&gt;

		&lt;/body&gt;
		&lt;/html&gt;</listing>
		 *
		 * @see http://developer.mozilla.org/en/DOM/event.layerX MDC - event.layerX
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get layerX():Number { return 0; };
		
		/**
		 * Returns the vertical coordinate of the event relative to the current layer. 
		 * 
		 * <p><strong>Note:</strong> layerY takes scrolling of the page into account, and returns a value relative to the 
		 * whole of the document, unless the event occurs inside a positioned element, where the returned value is relative 
		 * to the top left of the positioned element. </p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		&lt;head&gt;
		&lt;title&gt;pageX\pageY &amp; layerX\layerY example&lt;/title&gt;

		&lt;script type="text/javascript"&gt;

		function showCoords(evt){
		  var form = document.forms.form_coords;
		  var parent_id = evt.target.parentNode.id;
		  form.parentId.value = parent_id;
		  form.pageXCoords.value = evt.pageX;
		  form.pageYCoords.value = evt.pageY;
		  form.layerXCoords.value = evt.layerX;
		  form.layerYCoords.value = evt.layerY;
		}
		&lt;/script&gt;

		&lt;style type="text/css"&gt;

		 #d1 {
		  border: solid blue 1px;
		  padding: 20px;
		 }

		 #d2 {
		  position: absolute;
		  top: 180px;
		  left: 80%;
		  right:auto;
		  width: 40%;
		  border: solid blue 1px;
		  padding: 20px;
		 }

		 #d3 {
		  position: absolute;
		  top: 240px;
		  left: 20%;
		  width: 50%;
		  border: solid blue 1px;
		  padding: 10px;
		 }

		&lt;/style&gt;
		&lt;/head&gt;

		&lt;body onmousedown="showCoords(event)"&gt;

		&lt;p&gt;To display the mouse coordinates please click anywhere on the page.&lt;/p&gt;

		&lt;div id="d1"&gt;
		&lt;span&gt;This is an un-positioned div so clicking it will return
		layerX/layerY values almost the same as pageX/PageY values.&lt;/span&gt;
		&lt;/div&gt;

		&lt;div id="d2"&gt;

		&lt;span&gt;This is a positioned div so clicking it will return layerX/layerY
		values that are relative to the top-left corner of this positioned
		element. Note the pageX\pageY properties still return the
		absolute position in the document, including page scrolling.&lt;/span&gt;

		&lt;span&gt;Make the page scroll more! This is a positioned div so clicking it
		will return layerX/layerY values that are relative to the top-left
		corner of this positioned element. Note the pageX\pageY properties still
		return the absolute position in the document, including page
		scrolling.&lt;/span&gt;

		&lt;/div&gt;

		&lt;div id="d3"&gt;
		&lt;form name="form_coords" id="form1"&gt;
		 Parent Element id: &lt;input type="text" name="parentId" size="7" /&gt;&lt;br /&gt;

		 pageX:&lt;input type="text" name="pageXCoords" size="7" /&gt;  
		 pageY:&lt;input type="text" name="pageYCoords" size="7" /&gt;&lt;br /&gt;
		 layerX:&lt;input type="text" name="layerXCoords" size="7" /&gt;  
		 layerY:&lt;input type="text" name="layerYCoords" size="7" /&gt;

		&lt;/form&gt;
		&lt;/div&gt;

		&lt;/body&gt;
		&lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.layerY MDC - event.layerY
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get layerY():Number { return 0; };
		
		/**
		 * Returns the horizontal coordinate of the event relative to whole document. 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.pageX MDC - event.pageX
		 * @see dom.events.MouseEvent#pageX
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get pageX():Number{ return 0 }
		
		/**
		 * Returns the vertical coordinate of the event relative to the whole document. 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.pageY MDC - event.pageY
		 * @see dom.events.MouseEvent#pageY
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get pageY():Number{ return 0 }
		
		/**
		 * Returns the AbstractView object from which the event was generated. In browsers, this is the window object the event happened in. 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.view MDC - event.view
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-UIEvent-view W3C - UIEvent.view
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get view():AbstractView { return null; };
		
		/**
		 * Returns the numeric keyCode of the key pressed, or the character code (charCode) for 
		 * an alphanumeric key pressed. 
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;charCode/keyCode/which example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function showKeyPress(evt) {
		 * 	alert("onkeypress handler: \n"
		 * 		+ "keyCode property: " + evt.keyCode + "\n"
		 * 		+ "which property: " + evt.which + "\n"
		 * 		+ "charCode property: " + evt.charCode + "\n"
		 * 		+ "Character Key Pressed: "
		 * 		+ String.fromCharCode(evt.charCode) + "\n"
		 * 	);
		 * }
		 * 
		 * 
		 * function keyDown(evt) {
		 * 	alert("onkeydown handler: \n"
		 * 		+ "keyCode property: " + evt.keyCode + "\n"
		 * 		+ "which property: " + evt.which + "\n"
		 * 	);
		 * }
		 * 
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body
		 *   onkeypress="showKeyPress(event);"
		 *   onkeydown="keyDown(event);"
		 * &gt;
		 * 
		 * &lt;p&gt;Please press any key.&lt;/p&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.which MDC - event.which
		 * @see #keyCode
		 * @see #charCode
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get which():DOMString { return null; };
		
		/**
		 * Initializes attributes of an UIEvent object. This method has the 
		 * same behavior as Event.initEvent(). 
		 * 
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	viewArg Specifies UIEvent.view. This value may be null.
		 * @param	detailArg Specifies UIEvent.detail.
		 * 
		 * @example
		 * <listing>
		 * e = document.createEvent("UIEvents");
		 * // creates a click event that bubbles, can be cancelled,
		 * // and with its view and detail property initialized to window and 1,
		 * // respectively
		 * e.initUIEvent("click", true, true, window, 1);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.initUIEvent MDC - event.initUIEvent()
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initUIEvent W3C - UIEvent.initUIEvent()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function initUIEvent(typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean, viewArg:AbstractView, detailArg:Number):void { };
		
		/**
		 * Initializes attributes of an UIEvent object. This method has the same behavior as Event.initEventNS(). 
		 * 
		 * @param	namespaceURIArg Specifies Event.namespaceURI, the namespace URI associated with this event, or null if no namespace.
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	viewArg Specifies UIEvent.view. This value may be null.
		 * @param	detailArg Specifies UIEvent.detail.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initUIEventNS W3C - UIEvent.initUIEventNS()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initUIEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean, viewArg:AbstractView, detailArg:Number):void { };
	}
}