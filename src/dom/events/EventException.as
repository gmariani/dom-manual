package dom.events {
	
	/**
	 * Event operations may throw an EventException as specified in their method descriptions.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventException W3C - DOM 3 Events: EventException
	 * 
	 * @playerversion DOMEvents 2
	 * @since DOMEvents 2
	 */
	public interface EventException {
		
		/**
		 * An integer indicating the type of error generated.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventException W3C - DOM 3 Events: EventException.code
		 * @see dom.events.EventExceptionCode
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		function get code():Number;
	}
}