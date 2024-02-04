package dom.events {
	
	/**
	 * An integer indicating the type of error generated.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventException-EventExceptionCode W3C - DOM 3 Events: EventExceptionCode
	 * 
	 * @playerversion DOMEvents 2
	 * @since DOMEvents 2
	 * @modified DOMEvents 3
	 */
	public class EventExceptionCode {
		
		/**
		 * If the Event.type was not specified by initializing the event 
		 * before the method was called. Specification of the Event.type 
		 * as null or an empty string will also trigger this exception.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#UNSPECIFIED_EVENT_TYPE_ERR W3C - DOM 3 Events: EventExceptionCode.UNSPECIFIED_EVENT_TYPE_ERR
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const UNSPECIFIED_EVENT_TYPE_ERR:Number = 0;
		
		/**
		 * If the Event object is already dispatched in the tree.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#DISPATCH_REQUEST_ERR W3C - DOM 3 Events: EventExceptionCode.DISPATCH_REQUEST_ERR
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public static const DISPATCH_REQUEST_ERR:Number = 1;
	}
}