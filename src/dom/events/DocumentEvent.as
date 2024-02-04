package dom.events {
	
	import dom.events.Event;
	import dom.core.types.DOMString;
	
	/**
	 * The DocumentEvent interface provides a mechanism by which the user can 
	 * create an Event object of a type supported by the implementation. If 
	 * the feature "Events" is supported by the Document object, the 
	 * DocumentEvent interface must be implemented on the same object. If the 
	 * feature "+Events" is supported by the Document object, an object that 
	 * supports the DocumentEvent interface must be returned by invoking the 
	 * method Node.getFeature("+Events", "3.0") on the Document object.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-DocumentEvent W3C - DOM 3 Events: DocumentEvent
	 * 
	 * @playerversion DOMEvents 2
	 * @since DOMEvents 2
	 * @modified DOMEvents 3
	 */
	public interface DocumentEvent {
		
		/**
		 * Tests if the implementation can generate events of a specified type. 
		 * 
		 * @param	namespaceURI Specifies the Event.namespaceURI of the event.
		 * @param	type Specifies the Event.type of the event.
		 * @return If the implementation can generate and dispatch this event type
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-DocumentEvent-canDispatch W3C - DOM 3 Events: DocumentEvent.canDispatch()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		function canDispatch(namespaceURI:DOMString, type:DOMString):Boolean;
		
		/**
		 * Creates an event object of the type specified. 
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if the 
		 * implementation does not support the Event interface requested.
		 * 
		 * @param	eventType The eventType parameter specifies the name of the 
		 * DOM Events interface to be supported by the created event object, 
		 * e.g. "Event", "MouseEvent", "MutationEvent" and so on. If the Event 
		 * is to be dispatched via the EventTarget.dispatchEvent() method the 
		 * appropriate event initialization method must be called after creation 
		 * in order to initialize the Event's values.
		 * 
		 * As an example, a user wishing to synthesize some kind of UIEvent would 
		 * invoke DocumentEvent.createEvent("UIEvent"). The UIEvent.initUIEventNS() 
		 * ethod could then be called on the newly created UIEvent object to 
		 * set the specific type of user interface event to be dispatched, DOMActivate 
		 * for example, and set its context information, e.g. UIEvent.detail in 
		 * this example.
		 * 
		 * For backward compatibility reason, "UIEvents", "MouseEvents", "MutationEvents", 
		 * and "HTMLEvents" feature names are valid values for the parameter eventType 
		 * and represent respectively the interfaces "UIEvent", "MouseEvent", 
		 * "MutationEvent", and "Event", and the characters 'a'..'z' are considered 
		 * equivalent to the characters 'A'..'Z'.
		 * @return The newly created event object.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-DocumentEvent-createEvent W3C - DOM 3 Events: DocumentEvent.createEvent()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		function createEvent(eventType:DOMString):dom.events.Event;
	}
}