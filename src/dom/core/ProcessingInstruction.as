package dom.core {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	//--------------------------------------
    //  Events
    //--------------------------------------
	
	/**
	 * A node has been added as a child of another node or, in case of Attr 
	 * nodes, has been added to an Element. This event is dispatched after 
	 * the insertion has taken place. The target node of this event is the 
	 * node being inserted.
	 *
	 * @eventType DOMNodeInserted
	 */
	[Event(name = "DOMNodeInserted", type = "dom.events.MutationEvent")]
	
	/**
	 * A node is being removed from its parent node or, in case of Attr nodes, 
	 * removed from its ownerElement. This event is dispatched before the 
	 * removal takes place. The target node of this event is the node 
	 * being removed.
	 *
	 * @eventType DOMNodeRemoved
	 */
	[Event(name = "DOMNodeRemoved", type = "dom.events.MutationEvent")]
	
	/**
	 * A node is being removed from a document, either through direct removal 
	 * of the node or removal of a subtree in which it is contained; Attr nodes 
	 * are considered part of an Element's subtree. This event is dispatched 
	 * before the removal takes place. The target node of this event type is 
	 * the node being removed. If the node is being directly removed, the event 
	 * type DOMNodeRemoved occurs before this event type.
	 *
	 * @eventType DOMNodeRemovedFromDocument
	 */
	[Event(name = "DOMNodeRemovedFromDocument", type = "dom.events.MutationEvent")]
	
	/**
	 * A node has been inserted into a document, either through direct insertion 
	 * of the node or insertion of a subtree in which it is contained; Attr nodes 
	 * are considered part of an Element's subtree. This event is dispatched 
	 * after the insertion has taken place. The target node of this event is the 
	 * node being inserted. If the node is being directly inserted, the event type 
	 * DOMNodeInserted occurs before this event type.
	 *
	 * @eventType DOMNodeInsertedIntoDocument
	 */
	[Event(name = "DOMNodeInsertedIntoDocument", type = "dom.events.MutationEvent")]
	
	/**
	 * Occurs after CharacterData.data or ProcessingInstruction.data have been
	 * modified but the node itself has not been inserted or deleted. The target 
	 * node of this event is the CharacterData node or the 
	 * ProcessingInstruction node.
	 *
	 * @eventType DOMCharacterDataModified
	 */
	[Event(name = "DOMCharacterDataModified", type = "dom.events.MutationEvent")]
	
	/**
	 * A processing instruction provides an opportunity for application-specific 
	 * instructions to be embedded within XML and which can be ignored by XML 
	 * processors which do not support processing their instructions (outside of 
	 * their having a place in the DOM).
	 * 
	 * <p>A Processing instruction is distinct from a XML Declaration which is used 
	 * for other information about the document such as encoding and which appear 
	 * (if it does) as the first item in the document.</p>
	 * 
	 * <p>User-defined processing instructions cannot begin with 'xml', as these are 
	 * reserved (e.g., as used in &lt;?xml-stylesheet ?&gt;).</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms765480%28VS.85%29.aspx MSDN - IXMLDOMProcessingInstruction
	 * @see http://developer.mozilla.org/en/DOM/ProcessingInstruction MDC - ProcessingInstruction
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1004215813 W3C - ProcessingInstruction
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 */
	public class ProcessingInstruction extends Node {
		
		/**
		 * After the &lt;? and before whitespace delimiting it from data
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms757903%28VS.85%29.aspx MSDN - target Property
		 * @see http://developer.mozilla.org/en/DOM/ProcessingInstruction MDC - ProcessingInstruction
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1478689192 W3C - ProcessingInstruction.target
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get target():DOMString { return null; };
		
		/**
		 * First non-whitespace character after target and before ?>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms757835%28VS.85%29.aspx MSDN - data Property (IXMLDOMProcessingInstruction)
		 * @see http://developer.mozilla.org/en/DOM/ProcessingInstruction MDC - ProcessingInstruction
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-837822393 W3C - ProcessingInstruction.data
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get data():DOMString { return null; };
	}
}