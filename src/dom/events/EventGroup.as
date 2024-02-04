package dom.events {
	
	/**
	 * The EventGroup interface functions primarily as a placeholder for separating the event flows when there 
	 * are multiple groups of listeners for a DOM tree.
	 * 
	 * <p>EventListeners can be registered without an EventGroup using the existing EventTarget interface, or with 
	 * an associated EventGroup using the new EventTargetGroup interface. When an event is dispatched, it is 
	 * dispatched independently to each EventGroup. In particular, the stopPropagation method of the Event interface 
	 * only stops propagation within an EventListener's associated EventGroup.</p>
	 * 
	 * <p><strong>Note:</strong> This is from DOM 3 Events Working Draft 10 (April 2001) and has since been deprecated in Working Draft 21 (December 2007)</p>
	 * 
	 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-EventGroup W3C - DOM 3 Events: EventGroup
	 * 
	 * @playerversion DOMEvents 3
	 * @since DOMEvents 3
	 */
	public interface EventGroup {
		/**
		 * This method checks if the supplied EventGroup is the same as the EventGroup upon which the method is called. 
		 * 
		 * @param	eventGroup The EventGroup with which to check equality.
		 * @return Returns true if the EventGroups are equal, else returns false.
		 * 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-EventGroup-isSameEventGroup W3C - DOM 3 Events: EventGroup.isSameEventGroup()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		function isSameEventGroup(eventGroup:EventGroup):Boolean;
	}
}