package dom.events {
	
	import flash.xml.XMLNode;
	import dom.events.MutationEvent;
	import dom.core.types.DOMString;
	import dom.core.Node;
	
	/**
	 * The MutationNameEvent interface provides specific contextual information 
	 * associated with Mutation name event types.
	 * 
	 * To create an instance of the MutationNameEvent interface, use the 
	 * Document.createEvent("MutationNameEvent") method call.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MutationNameEvent W3C - DOM 3 Events: MutationNameEvent
	 * 
	 * @playerversion DOMEvents 3
	 * @since DOMEvents 3
	 */
	public class MutationNameEvent extends MutationEvent {
		
		// Types
		/**
		 * Occurs after the namespaceURI and/or the nodeName of an Element node have been modified (e.g., the element was 
		 * renamed using Document.renameNode()). The target node of this event is the renamed Element node.
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>MutationNameEvent.prevNamespaceURI, and MutationNameEvent.prevNodeName are in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMElementNameChanged W3C - MutationNameEvent.DOMElementNameChanged
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public static const DOMElementNameChanged:String ="DOMElementNameChanged";
		
		/**
		 * Occurs after the namespaceURI and/or the nodeName of a Attr node have been modified (e.g., the attribute was 
		 * renamed using Document.renameNode()). The target node of this event is the Element node whose Attr has been renamed.
		 * 
		 * <table class="innertable">
		 * <tr><th>Title</th><th>Value</th></tr>
		 * <tr>
		 * <td>Cancelable</td>
		 * <td>No</td>
		 * </tr>
		 * <tr>
		 * <td>Bubbles</td>
		 * <td>Yes</td>
		 * </tr>
		 * <tr>
		 * <td>Target</td>
		 * <td><code>Element</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>MutationNameEvent.prevNamespaceURI, and MutationNameEvent.prevNodeName are in use. The value of MutationEvent.relatedNode contains the renamed Attr node.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMAttributeNameChanged W3C - MutationNameEvent.DOMAttributeNameChanged
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public static const DOMAttributeNameChanged:String ="DOMAttributeNameChanged";
		
		/**
		 * The previous value of the relatedNode's namespaceURI.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MutationNameEvent-prevNamespaceURI W3C - MutationNameEvent.prevNamespaceURI
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get prevNamespaceURI():DOMString { return null; };
		
		/**
		 * The previous value of the relatedNode's nodeName.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MutationNameEvent-prevNodeName W3C - MutationNameEvent.prevNodeName
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get prevNodeName():DOMString { return null; };
		
		/**
		 * Initializes attributes of a MutationNameEvent object. This method has 
		 * the same behavior as MutationEvent.initMutationEvent(). 
		 * 
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	relatedNodeArg Specifies MutationEvent.relatedNode.
		 * @param	prevNamespaceURIArg Specifies MutationNameEvent.prevNamespaceURI. This value may be null.
		 * @param	prevNodeNameArg Specifies MutationNameEvent.prevNodeName.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initMutationNameEvent W3C - MutationNameEvent.initMutationNameEvent()
		 * @see dom.events.UIEvent#initUIEvent()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initMutationNameEvent(typeArg:DOMString, 
										canBubbleArg:Boolean, 
										cancelableArg:Boolean, 
										relatedNodeArg:XMLNode, 
										prevNamespaceURIArg:DOMString,
										prevNodeNameArg:DOMString):void { };
		
		/**
		 * Initializes attributes of a MutationNameEvent object. This method has 
		 * the same behavior as MutationEvent.initMutationEventNS(). 
		 * 
		 * @param	namespaceURIArg Specifies Event.namespaceURI, the namespace URI associated with this event, or null if no namespace.
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	relatedNodeArg Specifies MutationEvent.relatedNode.
		 * @param	prevNamespaceURIArg Specifies MutationNameEvent.prevNamespaceURI. This value may be null.
		 * @param	prevNodeNameArg Specifies MutationNameEvent.prevNodeName.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initMutationNameEventNS W3C - MutationNameEvent.initMutationNameEventNS()
		 * @see dom.events.UIEvent#initUIEventNS()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initMutationNameEventNS(namespaceURIArg:DOMString,
										typeArg:DOMString, 
										canBubbleArg:Boolean, 
										cancelableArg:Boolean, 
										relatedNodeArg:XMLNode, 
										prevNamespaceURIArg:DOMString,
										prevNodeNameArg:DOMString):void { };
	}
}