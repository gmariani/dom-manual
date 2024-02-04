package dom.events {
	
	import dom.core.types.DOMString;
	import dom.objects.MessagePortArray;
	import dom.WindowProxy;
	
	/**
	 * Messages in server-sent events, Web sockets, cross-document messaging, and channel messaging use the message event.
	 * 
	 * @see http://www.whatwg.org/specs/web-apps/current-work/multipage/comms.html#messageevent HTML 5: MessageEvent
	 * 
	 * @playerversion HTML 5
	 * @since DOMEvents 3
	 */
	public class MessageEvent extends Event {
		
		/**
		 * A string holding the message passed from the other window. 
		 * 
		 * @see http://www.whatwg.org/specs/web-apps/current-work/multipage/comms.html#dom-messageevent-data HTML 5: MessageEvent.data
		 * 
		 * @playerversion HTML 5
		 * @since DOMEvents 3
		 */
		public function get data():* { return null; };
		
		/**
		 * Returns the origin of the message, for server-sent events and cross-document messaging.
		 * 
		 * <p>The origin of the window that sent the message at the time postMessage was called. This string is 
		 * the concatenation of the protocol and "://", the host name if one exists, and ":" followed by a port 
		 * number if a port is present and differs from the default port for the given protocol. Examples of 
		 * typical origins are http://example.org (implying port 443), http://example.net (implying port 80), 
		 * and http://example.com:8080. Note that this origin is not guaranteed to be the current or future origin 
		 * of that window, which might have been navigated to a different location since postMessage was called. </p>
		 * 
		 * @see http://www.whatwg.org/specs/web-apps/current-work/multipage/comms.html#dom-messageevent-origin HTML 5: MessageEvent.origin
		 * 
		 * @playerversion HTML 5
		 * @since DOMEvents 3
		 */
		public function get origin():DOMString { return null; };
		
		/**
		 * Returns the last event ID, for server-sent events.
		 * 
		 * @see http://www.whatwg.org/specs/web-apps/current-work/multipage/comms.html#dom-messageevent-lasteventid HTML 5: MessageEvent.lastEventId
		 * 
		 * @playerversion HTML 5
		 * @since DOMEvents 3
		 */
		public function get lastEventId():DOMString { return null; };
		
		/**
		 * Returns the WindowProxy of the source window, for cross-document messaging.
		 * 
		 * @see http://www.whatwg.org/specs/web-apps/current-work/multipage/comms.html#dom-messageevent-source HTML 5: MessageEvent.source
		 * 
		 * @playerversion HTML 5
		 * @since DOMEvents 3
		 */
		public function get source():WindowProxy { return null; };
		
		/**
		 * Returns the MessagePortArray sent with the message, for cross-document messaging and channel messaging.
		 * 
		 * @see http://www.whatwg.org/specs/web-apps/current-work/multipage/comms.html#dom-messageevent-ports HTML 5: MessageEvent.ports
		 * 
		 * @playerversion HTML 5
		 * @since DOMEvents 3
		 */
		public function get ports():MessagePortArray { return null; };
		
		/**
		 * The initMessageEvent() must initialize the event in a manner analogous to the similarly-named methods in the DOM3 Events interfaces.
		 * 
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	dataArg The message being sent.
		 * @param	originArg The origin of the document that sent the message (typically the scheme, hostname, and port of the document, but not its path or fragment identifier).
		 * @param	lastEventIdArg The last event ID string of the event source.
		 * @param	sourceArg The WindowProxy of the browsing context of the Window object from which the message came.
		 * @param	portsArg The MessagePortArray  being sent, if any.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.initMessageEvent MDC - event.initMessageEvent()
		 * @see http://www.whatwg.org/specs/web-apps/current-work/multipage/comms.html#dom-messageevent-initmessageevent HTML 5: MessageEvent.initMessageEvent()
		 * 
		 * @playerversion HTML 5
		 * @since DOMEvents 3
		 */
		public function initMessageEvent(typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean, dataArg:*, originArg:DOMString, lastEventIdArg:DOMString, sourceArg:WindowProxy, portsArg:MessagePortArray):void { };
		
		/**
		 * The initMessageEventNS() must initialize the event in a manner analogous to the similarly-named methods in the DOM3 Events interfaces.
		 * 
		 * @param	namespaceURIArg Specifies Event.namespaceURI, the namespace URI associated with this event, or null if no namespace.
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	dataArg The message being sent.
		 * @param	originArg The origin of the document that sent the message (typically the scheme, hostname, and port of the document, but not its path or fragment identifier).
		 * @param	lastEventIdArg The last event ID string of the event source.
		 * @param	sourceArg The WindowProxy of the browsing context of the Window object from which the message came.
		 * @param	portsArg The MessagePortArray  being sent, if any.
		 * 
		 * @see http://www.whatwg.org/specs/web-apps/current-work/multipage/comms.html#dom-messageevent-initmessageeventns HTML 5: MessageEvent.initMessageEventNS()
		 * 
		 * @playerversion HTML 5
		 * @since DOMEvents 3
		 */
		public function initMessageEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean, dataArg:*, originArg:DOMString, lastEventIdArg:DOMString, sourceArg:WindowProxy, portsArg:MessagePortArray):void { };
	}
}