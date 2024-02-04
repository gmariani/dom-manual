package dom.events {
	
	import dom.core.types.DOMString;
	import dom.events.EventListener;
	import dom.events.Event;
	
	/**
	 * The EventTarget interface is implemented by all the objects which could be 
	 * event targets in an implementation which supports an event flow. The 
	 * interface allows registration and removal of event listeners, and dispatch 
	 * of events to an event target.
	 * 
	 * <p>When used with the DOM event flow, this interface is implemented by all 
	 * target nodes and target ancestors, i.e. all DOM Nodes of the tree support 
	 * this interface when the implementation conforms to DOM Level 3 Events and, 
	 * therefore, this interface can be obtained by using binding-specific casting 
	 * methods on an instance of the Node interface.</p>
	 * 
	 * <p>Invoking addEventListener or addEventListenerNS repeatedly on the same 
	 * EventTarget with the same values for the parameters namespaceURI, type, 
	 * listener, and useCapture has no effect. Doing so does not cause the 
	 * EventListener to be called more than once and does not cause a change in the 
	 * triggering order.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventTarget W3C - DOM 3 Events: EventTarget
	 * 
	 * @playerversion DOMEvents 2
	 * @since DOMEvents 2
	 */
	public interface EventTarget {
		
		/**
		 * Associates a function with a particular event and binds the event to the current node.
		 * 
		 * @param	type A string representing the event to bind, without the "on" prefix. For example, "click", "mousedown" etc.
		 * @param	listener The function or method to associate with the event.
		 * @param	useCapture Whether to bind the event as it is propagating towards the target node, (event Capture), or as the 
		 * event bubbles upwards from the target (event bubble). Set to true or false, respectively.
		 * 
		 * @example
		 * <listing>
		 * function statusreport() {
		 * 		alert("document has loaded");
		 * }
		 * 
		 * if (window.addEventListener) {
		 * 		window.addEventListener("load", statusreport, false); //invoke function
		 * }
		 * window.onload = statusreport(); //function invoked again, since no event handler conflicts</listing>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventTarget-addEventListener W3C - DOM 3 Events: EventTarget.addEventListener()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		function addEventListener(type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void;
		
		/**
		 * Registers an event listener, depending on the useCapture parameter, on the 
		 * capture phase of the DOM event flow or its target and bubbling phases.
		 * 
		 * @param	namespaceURI Specifies the Event.namespaceURI associated with the event for which the user is registering.
		 * @param	type A string representing the event to bind, without the "on" prefix. For example, "click", "mousedown" etc.
		 * @param	listener The function or method to associate with the event.
		 * @param	useCapture Whether to bind the event as it is propagating towards the target node, (event Capture), or as the 
		 * event bubbles upwards from the target (event bubble). Set to true or false, respectively.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventTarget-addEventListener W3C - DOM 3 Events: EventTarget.addEventListener()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		function addEventListenerNS(namespaceURI:DOMString, type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void;
		
		/**
		 * Dispatches an event to fire on a node artificially.
		 * 
		 * <p><strong>Note (IE):</strong> IE's equivalent of dispatchEvent() is fireEvent().</p>
		 * 
		 * @throws dom.events.EventException UNSPECIFIED_EVENT_TYPE_ERR: 
		 * Raised if the Event.type was not specified by initializing the event 
		 * before dispatchEvent was called. Specification of the Event.type as 
		 * null or an empty string will also trigger this exception.
		 * 
		 * @throws dom.events.EventException DISPATCH_REQUEST_ERR: Raised 
		 * if the Event object is already being dispatched.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if the Event 
		 * object has not been created using DocumentEvent.createEvent().
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if 
		 * Event.type is not an NCName as defined in [XML Namespaces 1.1].
		 * 
		 * @param	event The event to be dispatched.
		 * @return 	Indicates whether any of the listeners which handled the 
		 * event called Event.preventDefault(). If Event.preventDefault() was 
		 * called the returned value is false, else it is true.
		 * 
		 * @example
		 * <listing>
		 * &lt;div id="test" onclick="alert('hi')">Sample DIV.&lt;/div>
		 * &lt;script type="text/javascript">
		 * //Generate an artificial click event on "test". Fires alert("hi")
		 * var clickevent = document.createEvent("MouseEvents");
		 * clickevent.initEvent("click", true, true);
		 * document.getElementById("test").dispatchEvent(myevent);
		 * &lt;/script></listing>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventTarget-dispatchEvent W3C - DOM 3 Events: EventTarget.dispatchEvent()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 * @modified DOMEvents 3
		 */
		function dispatchEvent(event:dom.events.Event):Boolean;
		
		/**
		 * Removes an event listener.
		 * 
		 * <p>Calling removeEventListener with arguments 
		 * which do not identify any currently registered EventListener on the 
		 * EventTarget has no effect. The Event.namespaceURI for which the user 
		 * registered the event listener is implied and is null.</p>
		 * 
		 * @param	type Specifies the Event.type for which the user registered 
		 * the event listener.
		 * @param	listener The EventListener to be removed.
		 * @param	useCapture Specifies whether the EventListener being removed 
		 * was registered for the capture phase or not. If a listener was 
		 * registered twice, once for the capture phase and once for the target 
		 * and bubbling phases, each must be removed separately. Removal of an 
		 * event listener registered for the capture phase does not affect the 
		 * same event listener registered for the target and bubbling phases, 
		 * and vice versa.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventTarget-removeEventListener W3C - DOM 3 Events: EventTarget.removeEventListener()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		function removeEventListener(type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void;
		
		/**
		 * Removes an event listener. Calling removeEventListenerNS with arguments 
		 * which do not identify any currently registered EventListener on the 
		 * EventTarget has no effect. 
		 *  
		 * @param	namespaceURI Specifies the Event.namespaceURI associated with the event for which the user registered the event listener.
		 * @param	type Specifies the Event.type for which the user registered 
		 * the event listener.
		 * @param	listener The EventListener to be removed.
		 * @param	useCapture Specifies whether the EventListener being removed 
		 * was registered for the capture phase or not. If a listener was 
		 * registered twice, once for the capture phase and once for the target 
		 * and bubbling phases, each must be removed separately. Removal of an 
		 * event listener registered for the capture phase does not affect the 
		 * same event listener registered for the target and bubbling phases, 
		 * and vice versa.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventTargetGroup-removeEventListenerNS W3C - DOM 3 Events: EventTarget.removeEventListenerNS()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		function removeEventListenerNS(namespaceURI:DOMString, type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void;
	}
}