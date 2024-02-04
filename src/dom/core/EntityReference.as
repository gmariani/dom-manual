package dom.core {
	
	import dom.core.Node;
	
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
	 * Read-only reference to an entity reference in the DOM tree.
	 * 
	 * <p><strong>Note:</strong> Character references and references to predefined entities 
	 * are considered to be expanded by the HTML or XML processor so that 
	 * characters are represented by their Unicode equivalent rather than by an 
	 * entity reference. Moreover, the XML processor may completely expand 
	 * references to entities while building the Document, instead of providing 
	 * EntityReference  nodes. If it does provide such nodes, then for an 
	 * EntityReference node that represents a reference to a known entity an Entity 
	 * exists, and the subtree of the EntityReference node is a copy of the Entity 
	 * node subtree. However, the latter may not be true when an entity contains 
	 * an unbound namespace prefix. In such a case, because the namespace prefix 
	 * resolution depends on where the entity reference is, the descendants of the 
	 * EntityReference node may be bound to different namespace URIs. When an 
	 * EntityReference node represents a reference to an unknown entity, the node has 
	 * no children and its replacement value, when used by Attr.value for example, 
	 * is empty.</p>
	 * 
	 * <p><strong>Note:</strong> As for Entity nodes, EntityReference nodes and all their descendants are readonly.</p>
	 * 
	 * <p><strong>Note:</strong> EntityReference nodes may cause element content and attribute value normalization 
	 * problems when, such as in XML 1.0 and XML Schema, the normalization is performed 
	 * after entity reference are expanded.</p>
	 * 
	 * <p><strong>Note (Mozilla):</strong> This is not implemented in Mozilla.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms755427%28VS.85%29.aspx MSDN - IXMLDOMEntityReference
	 * @see http://developer.mozilla.org/En/DOM/EntityReference MDC - EntityReference
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-11C98490 W3C - EntityReference
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 */
	public class EntityReference extends Node { }
}