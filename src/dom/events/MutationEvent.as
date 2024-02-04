package dom.events {
	
	import flash.xml.XMLNode;
	import dom.events.Event;
	import dom.core.types.DOMString;
	import dom.core.Node;
	
	/**
	 * The MutationEvent interface provides specific contextual information 
	 * associated with Mutation events.
	 * 
	 * <p>To create an instance of the MutationEvent interface, use the 
	 * DocumentEvent.createEvent("MutationEvent") method call.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MutationEvent W3C - MutationEvent
	 * 
	 * @playerversion DOMEvents 2
	 * @since DOMEvents 2
	 * @modified DOMEvents 3
	 */
	public class MutationEvent extends Event {
		
		/**
		 * The Attr was modified in place.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#MODIFICATION W3C - MutationEvent.MODIFICATION
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const MODIFICATION:Number = 1;
		
		/**
		 * The Attr was just added.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#ADDITION W3C - MutationEvent.ADDITION
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const ADDITION:Number = 2;
		
		/**
		 * The Attr was just removed.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#REMOVAL W3C - MutationEvent.REMOVAL
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const REMOVAL:Number = 3;
		
		// Types
		
		/**
		 * This is a general event for notification of all changes to the document. 
		 * 
		 * <p>It can be used instead 
		 * of the more specific mutation and mutation name events listed below. It may be dispatched after 
		 * a single modification to the document or, at the implementation's discretion, after multiple 
		 * changes have occurred. The latter use should generally be used to accommodate multiple changes 
		 * which occur either simultaneously or in rapid succession. The target of this event is the lowest 
		 * common parent of the changes which have taken place. This event is dispatched after any other 
		 * events caused by the mutation(s) have occurred.</p>
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
		 * <td><code>Document, DocumentFragment, Element, Attr</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>None</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMSubtreeModified W3C - MutationEvent.DOMSubtreeModified
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const DOMSubtreeModified:String ="DOMSubtreeModified";
		
		/**
		 * A node has been added as a child of another node or, in case of Attr nodes, has been added to an Element. 
		 * This event is dispatched after the insertion has taken place. The target node of this event is the node being inserted.
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
		 * <td><code>Element, Attr, Text, Comment, CDATASection, DocumentType, EntityReference, ProcessingInstruction</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>MutationEvent.relatedNode holds the parent node of the node that has been inserted or, in case of Attr nodes, the ownerElement of the Attr node.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMNodeInserted W3C - MutationEvent.DOMNodeInserted
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const DOMNodeInserted:String ="DOMNodeInserted";
		
		/**
		 * A node is being removed from its parent node or, in case of Attr nodes, removed from its ownerElement. 
		 * This event is dispatched before the removal takes place. The target node of this event is the node being removed.
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
		 * <td><code>Element, Attr, Text, Comment, CDATASection, DocumentType, EntityReference, ProcessingInstruction</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>MutationEvent.relatedNode holds the parent node of the node being removed or, in case of Attr nodes, the ownerElement of the Attr node.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMNodeRemoved W3C - MutationEvent.DOMNodeRemoved
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const DOMNodeRemoved:String ="DOMNodeRemoved";
		
		/**
		 * A node is being removed from a document, either through direct removal of the node or removal of a subtree in which 
		 * it is contained; Attr nodes are considered part of an Element's subtree. This event is dispatched before the removal 
		 * takes place. The target node of this event type is the node being removed. If the node is being directly removed, 
		 * the event type DOMNodeRemoved occurs before this event type.
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
		 * <td><code>Element, Attr, Text, Comment, CDATASection, DocumentType, EntityReference, ProcessingInstruction</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>None</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMNodeRemovedFromDocument W3C - MutationEvent.DOMNodeRemovedFromDocument
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const DOMNodeRemovedFromDocument:String ="DOMNodeRemovedFromDocument";
		
		/**
		 * A node has been inserted into a document, either through direct insertion of the node or insertion of a subtree in which 
		 * it is contained; Attr nodes are considered part of an Element's subtree. This event is dispatched after the insertion has 
		 * taken place. The target node of this event is the node being inserted. If the node is being directly inserted, the event 
		 * type DOMNodeInserted occurs before this event type.
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
		 * <td><code>Element, Attr, Text, Comment, CDATASection, DocumentType, EntityReference, ProcessingInstruction</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>None</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMNodeInsertedIntoDocument W3C - MutationEvent.DOMNodeInsertedIntoDocument
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const DOMNodeInsertedIntoDocument:String ="DOMNodeInsertedIntoDocument";
		
		/**
		 * Occurs after Attr.value has been modified and after an Attr node has been added to or removed from an Element. 
		 * The target node of this event is the Element node where the change occured. It is implementation dependent whether 
		 * this event type occurs when the children of the Attr node are changed in ways that do not affect the value of Attr.value.
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
		 * <td>MutationEvent.attrName and MutationEvent.attrChange are in use. The value of MutationEvent.relatedNode indicates the Attr 
		 * node that has been modified, added, or removed. If the Attr node has been added, MutationEvent.newValue is in use. If the Attr 
		 * node has been removed, MutationEvent.prevValue is in use. If the Attr node has been modified, MutationEvent.newValue and 
		 * MutationEvent.prevValue are in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMAttrModified W3C - MutationEvent.DOMAttrModified
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const DOMAttrModified:String ="DOMAttrModified";
		
		/**
		 * Occurs after CharacterData.data or ProcessingInstruction.data have been modified but the node itself has not been 
		 * inserted or deleted. The target node of this event is the CharacterData node or the ProcessingInstruction node.
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
		 * <td><code>Text, Comment, CDATASection, ProcessingInstruction</code></td>
		 * </tr>
		 * <tr>
		 * <td>Context info</td>
		 * <td>MutationEvent.prevValue, and MutationEvent.newValue are in use.</td>
		 * </tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-DOMCharacterDataModified W3C - MutationEvent.DOMCharacterDataModified
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public static const DOMCharacterDataModified:String ="DOMCharacterDataModified";
		
		/**
		 * Indicates the type of change which triggered the DOMAttrModified event. 
		 * The values can be MODIFICATION, ADDITION, or REMOVAL.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MutationEvent-attrChange W3C - MutationEvent.attrChange
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get attrChange():Number { return 0; };
		
		/**
		 * Indicates the name of the changed Attr node in a DOMAttrModified event.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MutationEvent-attrName W3C - MutationEvent.attrName
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get attrName():DOMString { return null; };
		
		/**
		 * Indicates the new value of the Attr node in DOMAttrModified events, and 
		 * of the CharacterData node in DOMCharacterDataModified events.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MutationEvent-newValue W3C - MutationEvent.newValue
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get newValue():DOMString { return null; };
		
		/**
		 * Indicates the previous value of the Attr node in DOMAttrModified events, 
		 * and of the CharacterData node in DOMCharacterDataModified events.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MutationEvent-prevValue W3C - MutationEvent.prevValue
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get prevValue():DOMString { return null; };
		
		/**
		 * is used to identify a secondary node related to a mutation event. For 
		 * example, if a mutation event is dispatched to a node indicating that 
		 * its parent has changed, the relatedNode is the changed parent. If an 
		 * event is instead dispatched to a subtree indicating a node was changed 
		 * within it, the relatedNode is the changed node. In the case of the 
		 * DOMAttrModified event it indicates the Attr node which was modified, 
		 * added, or removed.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MutationEvent-relatedNode W3C - MutationEvent.relatedNode
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function get relatedNode():Node { return null; };
		
		/**
		 * Initializes attributes of a MutationEvent object. This method has the 
		 * same behavior as Event.initEvent(). 
		 * 
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	relatedNodeArg Specifies MutationEvent.relatedNode.
		 * @param	prevValueArg Specifies MutationEvent.prevValue. This value may be null.
		 * @param	newValueArg Specifies MutationEvent.newValue. This value may be null.
		 * @param	attrNameArg Specifies MutationEvent.attrName. This value may be null.
		 * @param	attrChangeArg Specifies MutationEvent.attrChange. This value may be null.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initMutationEvent W3C - MutationEvent.initMutationEvent()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function initMutationEvent(typeArg:DOMString, 
									canBubbleArg:Boolean, 
									cancelableArg:Boolean, 
									relatedNodeArg:XMLNode, 
									prevValueArg:DOMString, 
									newValueArg:DOMString, 
									attrNameArg:DOMString, 
									attrChangeArg:Number):void { };
		
		/**
		 * Initializes attributes of a MutationEvent object. This method has 
		 * the same behavior as Event.initEventNS().
		 * 
		 * @param	namespaceURIArg Specifies Event.namespaceURI, the namespace URI associated with this event, or null if no namespace.
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	relatedNodeArg Specifies MutationEvent.relatedNode.
		 * @param	prevValueArg Specifies MutationEvent.prevValue. This value may be null.
		 * @param	newValueArg Specifies MutationEvent.newValue. This value may be null.
		 * @param	attrNameArg Specifies MutationEvent.attrName. This value may be null.
		 * @param	attrChangeArg Specifies MutationEvent.attrChange. This value may be null.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initMutationEventNS W3C - MutationEvent.initMutationEventNS()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initMutationEventNS(namespaceURIArg:DOMString,
									typeArg:DOMString, 
									canBubbleArg:Boolean, 
									cancelableArg:Boolean, 
									relatedNodeArg:XMLNode, 
									prevValueArg:DOMString, 
									newValueArg:DOMString, 
									attrNameArg:DOMString, 
									attrChangeArg:Number):void { };
	}
}