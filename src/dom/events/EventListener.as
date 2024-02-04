package dom.events {
	
	import dom.events.Event;
	
	/**
	 * The EventListener interface is the primary way for handling events. Users 
	 * implement the EventListener interface and register their event listener on 
	 * an EventTarget. The users should also remove their EventListener from its 
	 * EventTarget after they have completed using the listener.
	 * 
	 * <p>Copying a Node, with methods such as Node.cloneNode or Range.cloneContents, 
	 * does not copy the event listeners attached to it. Event listeners must be 
	 * attached to the newly created Node afterwards if so desired.</p>
	 * 
	 * <p>Moving a Node, with methods Document.adoptNode, Node.appendChild, or 
	 * Range.extractContents, does not affect the event listeners attached to it.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventListener W3C - DOM 3 Events: EventListener
	 * @see dom.events.EventTarget
	 * 
	 * @playerversion DOMEvents 2
	 * @since DOMEvents 2
	 */
	public interface EventListener {
		
		/**
		 * This method is called whenever an event occurs of the event type for 
		 * which the EventListener interface was registered. 
		 * @param	evt The Event contains contextual information about the event.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventListener W3C - DOM 3 Events: EventListener.handleEvent()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		function handleEvent(evt:dom.events.Event):void;
	}
}