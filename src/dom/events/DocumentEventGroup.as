package dom.events {
	
	/**
	 * The DocumentEventGroup interface provides a mechanism by which the user can create an EventGroup of a type supported by 
	 * the implementation. It is expected that the DocumentEvent interface will be implemented on the same object which implements 
	 * the Documentinterface in an implementation which supports the EventGroupextension.
	 * 
	 * <p><strong>Note:</strong> This is from DOM 3 Events Working Draft 10 (April 2001) and has since been deprecated in Working Draft 21 (December 2007)</p>
	 * 
	 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-DocumentEventGroup W3C - DOM 3 Events: DocumentEventGroup
	 * 
	 * @playerversion DOMEvents 3
	 * @since DOMEvents 3
	 */
	public interface DocumentEventGroup {
		
		/**
		 * This method creates a new EventGroup for use in the addEventListener and removeEventListener methods of the EventTargetGroup interface. 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.htmlevents-Events-DocumentEventGroup-createEventGroup W3C - DOM 3 Events: DocumentEventGroup.createEventGroup()
		 * 
		 * @return The newly created EventGroup.
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		function createEventGroup():EventGroup;
	}
}