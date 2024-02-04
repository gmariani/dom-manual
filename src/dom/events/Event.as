package dom.events {
	
	import dom.core.types.DOMString;
	import dom.core.types.DOMTimeStamp;
	import gecko.events.nsIDOMEventTarget;
	
	/**
	 * The Event interface is used to provide contextual information about an 
	 * event to the listener processing the event. An object which implements 
	 * the Event interface is passed as the parameter to an EventListener. The 
	 * object passed to the event listener may also implement derived interfaces 
	 * that provide access to information directly relating to the type of event 
	 * they represent.
	 * 
	 * <p>To create an instance of the Event interface, use the 
	 * DocumentEvent.createEvent("Event") method call.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event W3C - DOM 3 Events: Event
	 * 
	 * @playerversion DOMEvents 2
	 * @since DOMEvents 2
	 * @modified DOMEvents 3
	 */
	public class Event {
		
		// Phases
		/**
		 * The current event phase is the capture phase.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#CAPTURING_PHASE W3C - DOM 3 Events: Event.CAPTURING_PHASE
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const CAPTURING_PHASE:Number = 1;
		
		/**
		 * The current event is in the target phase, i.e. it is being evaluated at the event target.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#AT_TARGET W3C - DOM 3 Events: Event.AT_TARGET
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const AT_TARGET:Number = 2;
		
		/**
		 * The current event phase is the bubbling phase.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#BUBBLING_PHASE W3C - DOM 3 Events: Event.BUBBLING_PHASE
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const BUBBLING_PHASE:Number = 3;
		
		// Types
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
		 * Used to indicate whether or not an event is a bubbling event. If the 
		 * event can bubble the value is true, otherwise the value is false.
		 * 
		 * @example
		 * <listing>
		 * function goInput(e) {
		 * 	// checks bubbles and
		 * 	if not e.bubbles {
		 * 		// passes event along if it's not
		 * 		passItOn(e); 
		 * 	}
		 * 	// already bubbling
		 * 	doOutput(e)
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.altKey  MDC - event.bubbles
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-canBubble W3C - DOM 3 Events: Event.bubbles
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get bubbles():Boolean { return false; };
		
		/**
		 * Indicates whether the event is cancelable or not.
		 * 
		 * <p><strong>Note:</strong> Whether an event can be canceled or not 
		 * is something that's determined when that event is initialized. </p>
		 * 
		 * <p><strong>Note:</strong> To cancel an event, call the preventDefault method on the event. This keeps 
		 * the implementation from executing the default action that is associated with the event. </p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.cancelable  MDC - event.cancelable
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-canCancel W3C - DOM 3 Events: Event.cancelable
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get cancelable():Boolean { return false; };
		
		/**
		 * Identifies the current target for the event, as the event traverses the DOM.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.currentTarget  MDC - event.currentTarget
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-currentTarget W3C - DOM 3 Events: Event.currentTarget
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get currentTarget():EventTarget { return null; };
		
		/**
		 * Used to indicate whether Event.preventDefault() has been called for 
		 * this event.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-defaultPrevented W3C - DOM 3 Events: Event.defaulPrevented
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get defaulPrevented():Boolean { return false; };
		
		/**
		 * Used to indicate which phase of event flow is currently being accomplished.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.eventPhase  MDC - event.eventPhase
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-eventPhase W3C - DOM 3 Events: Event.eventPhase
		 * @see #CAPTURING_PHASE
		 * @see #AT_TARGET
		 * @see #BUBBLING_PHASE
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get eventPhase():Number { return 0; };
		
		/**
		 * The explicit original target of the event.
		 * 
		 * <p>If the event was retargeted for some reason other than an anonymous boundary crossing, this 
		 * will be set to the target before the retargeting occurs. For example, mouse events are retargeted 
		 * to their parent node when they happen over text nodes (see bug 185889), and in that case 
		 * currentTarget will show the parent and explicitOriginalTarget will show the text node. </p>
		 * 
		 * <p>explicitOriginalTarget differs from originalTarget in that it will never contain anonymous content. </p>
		 * 
		 * @example
		 * This property can be used with &lt;command&gt; to get the event details of the original object calling the command.
		 * <listing>
		 * function myCommand(ev) {
		 * 	alert(ev.explicitOriginalTarget.nodeName); // returns 'menuitem'
		 * }
		 * 
		 * 
		 * &lt;command id="my-cmd-anAction" oncommand="myCommand(event);"/&gt;
		 * 
		 * &lt;menulist&gt;&lt;menupopup&gt;
		 * 	&lt;menuitem label="Get my element name!" command="my-cmd-anAction"/&gt;
		 * &lt;/menupopup&gt;&lt;/menulist&gt;</listing>
		 * 
		 * @see http://mxr.mozilla.org/mozilla-central/source/dom/interfaces/events/nsIDOMNSEvent.idl Mozilla Central - nsIDOMNSEvent.idl
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get explicitOriginalTarget():nsIDOMEventTarget { return null; };
		
		/**
		 * Determines if the event was from the user or script generated. Returns
		 * true if the user caused the event to be dispatched.
		 * 
		 * <p><strong>Note:</strong> Can't find any more information on this property</p>
		 * 
		 * @see http://osdir.com/ml/w3c.webapi/2006-06/msg00080.html W3C WebAPI Forum - [DOM3EV] introduce Event.trusted?
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get isTrusted():Boolean { return false; };
		
		/**
		 * The original target of the event before any retargetings.
		 * 
		 * @see http://mxr.mozilla.org/mozilla-central/source/dom/interfaces/events/nsIDOMNSEvent.idl Mozilla Central - nsIDOMNSEvent.idl
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get originalTarget():* { return null; };
		
		/**
		 * The namespace URI associated with this event at initialization time, or 
		 * null if it is unspecified.
		 * DOM Level 2 Events initialization methods, such as Event.initEvent(), set 
		 * the value to null.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-namespaceURI W3C - DOM 3 Events: Event.namespaceURI
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get namespaceURI():DOMString { return null; };
		
		/**
		 * Used to indicate the event target. This attribute contains the target node 
		 * when used with the Event dispatch and DOM event flow.
		 * 
		 * @example
		 * <listing>&lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;target example&lt;/title&gt;
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function highlightTarget(evt) {
		 * 	evt.target.style.backgroundColor = 'blue';
		 * }
		 * 
		 * function resetTarget(evt) {
  		 * 	evt.target.style.backgroundColor = 'silver';
		 * }
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onmousedown="highlightTarget(event)" onmouseup="resetTarget(event)"&gt;
		 * 
		 * &lt;p&gt;This example demonstrates how, by using event propagation, two event
		 * handler functions in the body element can use the &lt;i&gt;target&lt;/i&gt; property
		 * to distinguish between, and process, all other bubbleable events occuring
		 * lower down the DOM. Note: not all events can bubble up the DOM.&lt;/p&gt;
		 * 
		 * &lt;p&gt;As an event lower down the DOM bubbles up and reaches the body
		 * object, the &lt;i&gt;target&lt;/i&gt; property contains the object reference of the
		 * original event target. In this case which element in the document
		 * received an onmousedown or onmouseup event.&lt;/p&gt;
		 * 
		 * &lt;p&gt;This allows the event handlers of the body object to process bubbleable
		 * events occuring lower down the DOM structure, which means there is no need
		 * to attach the event handlers to every button &amp; para element of the page.&lt;/p&gt;
		 * 
		 * &lt;button&gt;button 1&lt;/button&gt;&lt;br /&gt;
		 * &lt;button&gt;button 2&lt;/button&gt;&lt;br /&gt;
		 * 
		 * &lt;button&gt;button 3&lt;/button&gt;&lt;br /&gt;
		 * &lt;button&gt;button 4&lt;/button&gt;&lt;br /&gt;
		 * &lt;button&gt;button 5&lt;/button&gt;&lt;br /&gt;
		 * &lt;button&gt;button 6&lt;/button&gt;&lt;br /&gt;
		 * 
		 * &lt;button&gt;button 7&lt;/button&gt;&lt;br /&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.target MDC - event.target
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-target W3C - DOM 3 Events: Event.target
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get target():EventTarget { return null; };
		
		/**
		 * Used to specify the time at which the event was created in milliseconds 
		 * relative to 1970-01-01T00:00:00Z. Due to the fact that some systems may not 
		 * provide this information the value of timeStamp may be not available for all 
		 * events. When not available, the value is 0.
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * 
		 * &lt;title&gt;timeStamp example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * function getTime(event) {
		 * 	document.getElementById("time").firstChild.nodeValue = event.timeStamp;
		 * }
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onkeypress="getTime(event)"&gt;
		 * 
		 * &lt;p&gt;Press any key to get the current timestamp
		 * for the onkeypress event.&lt;/p&gt;
		 * &lt;p&gt;timeStamp: &lt;span id="time"&gt;-&lt;/span&gt;&lt;/p&gt;
		 * 
		 * &lt;/body&gt;
		 * 
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.timeStamp MDC - event.timeStamp
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-timeStamp W3C - DOM 3 Events: Event.timeStamp
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get timeStamp():DOMTimeStamp { return null; };
		
		/**
		 * The local name of the event type. The name must be an NCName as defined in 
		 * [XML Namespaces 1.1] and is case-sensitive.
		 * 
		 * <p><strong>Note:</strong> The type must be an XML name.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * 
		 * &lt;title&gt;type example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * var currEvent = null;
		 * 
		 * function getEvtType(evt) {
		 * 	currEvent = evt.type;
		 * 	document.getElementById("Etype").firstChild.nodeValue = currEvent;
		 * }
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body
		 *   onkeydown="getEvtType(event)"
		 *   onkeyup="getEvtType(event)"
		 *   onmousedown="getEvtType(event)"
		 *   onmouseup="getEvtType(event)"&gt;
		 * 
		 * &lt;p&gt;Press any key or click the mouse to get the event type.&lt;/p&gt;
		 * &lt;p&gt;Event type: &lt;span id="Etype"&gt;-&lt;/span&gt;&lt;/p&gt;
		 * 
		 * &lt;/body&gt;
		 * 
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.type MDC - event.type
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-type W3C - DOM 3 Events: Event.type
		 * @see http://www.w3.org/TR/2006/REC-xml-names11-20060816/ W3C - XML Namespaces 1.1
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get type():DOMString { return null; };
		
		/**
		 * Initializes attributes of an Event created through the 
		 * DocumentEvent.createEvent method. This method may only be called 
		 * before the Event has been dispatched via the 
		 * EventTarget.dispatchEvent() method. If the method is called several 
		 * times before invoking EventTarget.dispatchEvent, only the final 
		 * invocation takes precedence. This method has no effect if called after 
		 * the event has been dispatched. If called from a subclass of the Event 
		 * interface only the values specified in this method are modified, all 
		 * other attributes are left unchanged.
		 * 
		 * <p>This method sets the Event.type attribute to typeArg, and 
		 * Event.namespaceURI to null. To initialize an event with a namespace 
		 * URI, use the Event.initEventNS() method.</p>
		 * 
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initEvent W3C - DOM 3 Events: Event.initEvent()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function initEvent(typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean):void { };
		
		/**
		 * Initializes attributes of an Event object. This method has the same 
		 * behavior as Event.initEvent(). 
		 * 
		 * @param	namespaceURIArg Specifies Event.namespaceURI, the namespace URI associated with this event, or null if no namespace.
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initEventNS W3C - DOM 3 Events: Event.initEventNS()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean):void { };
		
		/**
		 * Prevents the event from bubbling. This method is deprecated in favor of standard stopPropagation and is removed in Gecko 1.9. 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.preventBubble MDC - event.preventBubble()
		 * 
		 * @playerversion Obsolete Mozilla
		 */
		public function preventBubble():void { };
		
		/**
		 * This method is deprecated in favor of standard stopPropagation and is removed in Gecko 1.9. 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.preventCapture MDC - event.preventCapture()
		 * 
		 * @playerversion Obsolete Mozilla
		 */
		public function preventCapture():void { };
		
		/**
		 * Cancels the event if it is cancelable, without stopping further propagation of the event. 
		 * 
		 * Signifies that the event is to be canceled, meaning any default action 
		 * normally taken by the implementation as a result of the event will not 
		 * occur (see also Default actions and cancelable events). Calling this 
		 * method for a non-cancelable event has no effect.
		 * 
		 * <p><strong>Note:</strong> This method does not stop the event propagation; use 
		 * Event.stopPropagation() or Event.stopImmediatePropagation() for that effect.</p>
		 * 
		 * <p><strong>Note:</strong> Calling preventDefault during any stage of event flow cancels 
		 * the event, meaning that any default action normally taken by the implementation as a 
		 * result of the event will not occur. </p>
		 * 
		 * @example
		 * Toggling a checkbox is the default action of clicking on a checkbox. This example demonstrates how to prevent that happening: 
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;preventDefault example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function stopDefAction(evt) {
		 * 	evt.preventDefault();
		 * }
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body&gt;
		 * 
		 * &lt;p&gt;Please click on the checkbox control.&lt;/p&gt;
		 * 
		 * &lt;form&gt;
		 * &lt;input type="checkbox" onclick="stopDefAction(event);"/&gt;
		 * &lt;label for="checkbox"&gt;Checkbox&lt;/label&gt;
		 * 
		 * &lt;/form&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.preventDefault MDC - event.preventDefault()
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-preventDefault W3C - DOM 3 Events: Event.preventDefault()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function preventDefault():void { };
		
		/**
		 * Prevents other event listeners from being triggered and, unlike 
		 * Event.stopPropagation() its effect is immediate . Once it has been called, 
		 * further calls to this method have no additional effect.
		 * 
		 * <p><strong>Note:</strong> This method does not prevent the default action from being invoked; 
		 * use Event.preventDefault() for that effect.</p>
		 * 
		 * @example
		 * This example demonstrates how events fire and are handled in the DOM in a very simple way. 
		 * When the BODY of this HTML document loads, an event listener is registered with the top row 
		 * of the TABLE. The event listener handles the event by executing the function stopEvent, 
		 * which changes the value in the bottom cell of the table.
		 * 
		 * <p>However, stopEvent also calls an event object method, event.stopPropagation, which keeps 
		 * the event from bubbling any further up into the DOM. Note that the table itself has an onclick 
		 * event handler that ought to display a message when the table is clicked. But the stopEvent 
		 * method has stopped propagation, and so after the data in the table is updated, the event phase 
		 * is effectively ended, and an alert box is displayed to confirm this.</p>
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;Event Propagation&lt;/title&gt;
		 * 
		 * &lt;style type="text/css"&gt;
		 * 	#t-daddy { border: 1px solid red }
		 * 	#c1 { background-color: pink; }
		 * &lt;/style&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function stopEvent(ev) {
		 * 	c2 = document.getElementById("c2");
		 * 	c2.innerHTML = "hello";
		 * 
		 * 	// this ought to keep t-daddy from getting the click.
		 * 	ev.stopPropagation();
		 * 	alert("event propagation halted.");
		 * }
		 * 
		 * function load() {
		 * 	elem = document.getElementById("tbl1");
		 * 	elem.addEventListener("click", stopEvent, false);
		 * }
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onload="load();"&gt;
		 * 
		 * &lt;table id="t-daddy" onclick="alert('hi');"&gt;
		 * 	&lt;tr id="tbl1"&gt;
		 * 		&lt;td id="c1"&gt;one&lt;/td&gt;
		 * 	&lt;/tr&gt;
		 * 	&lt;tr&gt;
		 * 		&lt;td id="c2"&gt;two&lt;/td&gt;
		 * 	&lt;/tr&gt;
		 * &lt;/table&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-stopImmediatePropagation W3C - DOM 3 Events: Event.stopImmediatePropogation()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function stopImmediatePropogation():void { };
		
		/**
		 * Prevents other event listeners from being triggered but its effect is 
		 * deferred until all event listeners attached on the Event.currentTarget 
		 * have been triggered . Once it has been called, further calls to this 
		 * method have no additional effect.
		 * 
		 * <p><strong>Note:</strong> This method does not prevent the default action from being 
		 * invoked; use Event.preventDefault() for that effect.</p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.stopPropogation MDC - event.stopPropogation()
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-stopPropagation W3C - DOM 3 Events: Event.stopPropogation()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function stopPropogation():void { };
	}
}