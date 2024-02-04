package dom.objects {
	
	/**
	 * Each channel has two message ports. Data sent through one port is received by the other port, and vice versa.
	 * 
	 * @see http://www.w3.org/TR/html5/comms.html#messageport W3C - HTML5: MessagePort
	 * 
	 * @playerversion HTML 5
	 */
	public interface MessagePort {
		
		/**
		 * Returns true if the port is still active; otherwise, returns false.
		 * 
		 * @see http://www.w3.org/TR/html5/comms.html#dom-messageport-active W3C - HTML5: MessagePort.active
		 * 
		 * @playerversion HTML 5
		 */
		function get active():Boolean;
		
		/**
		 * Posts a message through the channel, optionally with the given ports.
		 * 
		 * @throws dom.core.DOMException INVALID_STATE_ERR: If the ports array is not null and it contains either null 
		 * entries, duplicate ports, ports that are not entangled, or the source or target port.
		 * 
		 * @param	message
		 * @param	ports
		 * 
		 * @see http://www.w3.org/TR/html5/comms.html#dom-messageport-postmessage W3C - HTML5: MessagePort.postMessage()
		 * 
		 * @playerversion HTML 5
		 */
		function postMessage(message:*, ports:MessagePortArray):void;
		
		/**
		 * Begins dispatching messages received on the port.
		 * 
		 * @see http://www.w3.org/TR/html5/comms.html#dom-messageport-start W3C - HTML5: MessagePort.start()
		 * 
		 * @playerversion HTML 5
		 */
		function start():void;
		
		/**
		 * Disconnects the port, so that it is no longer active.
		 * 
		 * @see http://www.w3.org/TR/html5/comms.html#dom-messageport-close W3C - HTML5: MessagePort.start()
		 * 
		 * @playerversion HTML 5
		 */
		function close():void;
	}
}