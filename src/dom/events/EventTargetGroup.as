package dom.events {
	
	import dom.core.types.DOMString;
	
	/**
	 * The EventTargetGroup interface is implemented by the same set of objects that implement the EventTarget 
	 * interface, namely all EventTargets in in implementation which supports the Event model and the EventGroup extension.
	 * 
	 * <p><strong>Note:</strong> This is from DOM 3 Events Working Draft 10 (April 2001) and has since been deprecated in Working Draft 21 (December 2007)</p>
	 * 
	 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-EventTargetGroup W3C - DOM 3 Events: EventTargetGroup
	 * 
	 * @playerversion DOMEvents 3
	 * @since DOMEvents 3
	 */
	public interface EventTargetGroup {
		
		/**
		 * This method is equivalent to the addEventListener method of the EventTarget interface, with the exception of 
		 * the added eventGroup parameter. The listener is registered with this EventGroup associated. 
		 * 
		 * @param	type
		 * @param	listener
		 * @param	useCapture
		 * @param	eventGroup The EventGroup to associate with the listener.
		 * 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-EventTargetGroup-addEventListener W3C - DOM 3 Events: EventTargetGroup.addEventListener()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		function addEventListener(type:DOMString, listener:EventListener, useCapture:Boolean, eventGroup:EventGroup):void;
		
		/**
		 * This method is equivalent to the removeEventListener method of the EventTarget interface, with the exception 
		 * of the added eventGroup parameter. The listener registered with this EventGroup associated is removed. 
		 * 
		 * @param	type
		 * @param	listener
		 * @param	useCapture
		 * @param	eventGroup The EventGroup to associate with the listener.
		 * 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-EventTargetGroup-removeEventListener W3C - DOM 3 Events: EventTargetGroup.removeEventListener()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		function removeEventListener(type:DOMString, listener:EventListener, useCapture:Boolean, eventGroup:EventGroup):void;
	}
}