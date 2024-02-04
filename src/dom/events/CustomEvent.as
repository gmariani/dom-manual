package dom.events {
	
	import dom.events.Event;
	import dom.core.types.DOMObject;
	import dom.core.types.DOMString;
	
	/**
	 * The CustomEvent interface is the recommended interface for 
	 * application-specific event types. Unlike the Event interface, it allows 
	 * applications to provide contextual information about the event type. 
	 * Application-specific event types should have an associated namespace to 
	 * avoid clashes with future general-purpose event types.
	 * 
	 * <p>To create an instance of the CustomEvent interface, use the 
	 * DocumentEvent.createEvent("CustomEvent") method call.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-CustomEvent W3C - DOM 3 Events: CustomEvent
	 * 
	 * @playerversion DOMEvents 3
	 * @since DOMEvents 3
	 */
	public class CustomEvent extends dom.events.Event {
		
		/**
		 * Specifies some detail information about the Event.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-CustomEvent-detail W3C - DOM 3 Events: CustomEvent.detail
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get detail():DOMObject { return null; };
		
		/**
		 * Initializes attributes of a CustomEvent object. This method has 
		 * the same behavior as Event.initEventNS(). 
		 * 
		 * @param	namespaceURIArg Specifies Event.namespaceURI, the namespace URI associated with this event, or null if no namespace.
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	detailArg Specifies CustomEvent.detail. This value may be null.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initCustomEventNS W3C - DOM 3 Events: CustomEvent.initCustomEventNS()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initCustomEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean, detailArg:DOMObject):void { };
	}
}