package dom.core {
	
	import dom.core.Node;
	import dom.core.NamedNodeMap;
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
	 * Each Document has a doctype attribute whose value is either null or a 
	 * DocumentType  object. The DocumentType interface in the DOM Core provides 
	 * an interface to the list of entities that are defined for the document, 
	 * and little else because the effect of namespaces and the various XML schema 
	 * efforts on DTD representation are not clearly understood as of this writing.
	 * 
	 * <p><strong>Note:</strong> DOM Level 3 doesn't support editing DocumentType nodes. DocumentType nodes 
	 * are read-only.</p>
	 * 
	 * <p><strong>Note (Mozilla):</strong> This interface is not fully supported in Mozilla at present, 
	 * including for indicating internalSubset information which Gecko generally does otherwise support.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms762752%28VS.85%29.aspx MSDN - IXMLDOMDocumentType
	 * @see http://developer.mozilla.org/En/DOM/DocumentType MDC - DocumentType
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-412266927 W3C - DocumentType
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 * @modified DOMCore 2
	 */
	public class DocumentType extends Node {
		
		/**
		 * A NamedNodeMap containing the general entities, both external and internal, 
		 * declared in the DTD. Parameter entities are not contained. Duplicates 
		 * are discarded.
		 * 
		 * <p>Internal (Parsed) Entities define entity references in order to replace certain strings by a replacement text. The content of the entity is given in the declaration.</p>
		 * 
		 * <p>External (Parsed) Entities refer to external storage objects.</p>
		 * 
		 * <p><strong>Note:</strong> The DOM Level 2 does not support editing entities, therefore entities 
		 * cannot be altered in any way.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;!DOCTYPE ex SYSTEM "ex.dtd" [
		 * 	&lt;!ENTITY bat "bat"&gt;       
		 * 	&lt;!ENTITY bar "bar"&gt;       
		 * ]&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms757817%28VS.85%29.aspx MSDN - entities Property
		 * @see http://developer.mozilla.org/En/DOM/DocumentType.entities MDC - DocumentType.entities
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1788794630 W3C - DocumentType.entities
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get entities():NamedNodeMap { return null; };
		
		/**
		 * The internal subset as a string, or null if there is none. This is does 
		 * not contain the delimiting square brackets.
		 * 
		 * <p><strong>Note:</strong> The actual content returned depends on how much information is 
		 * available to the implementation. This may vary depending on various 
		 * parameters, including the XML processor used to build the document.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
		 * 	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
		 * 	[
		 * 	&lt;!ATTLIST input validate CDATA #IMPLIED&gt;
		 * 	&lt;!ATTLIST input range CDATA #IMPLIED&gt;
		 * ]&gt;
		 * // internalSubset : &lt;!ATTLIST input validate CDATA #IMPLIED&gt;&lt;!ATTLIST input range CDATA #IMPLIED&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DocumentType.internalSubset MDC - DocumentType.internalSubset
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-Core-DocType-internalSubset W3C - DocumentType.internalSubset
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function get internalSubset():DOMString { return null; };
		
		/**
		 * The name of DTD; i.e., the name immediately following the DOCTYPE keyword.
		 * 
		 * @example
		 * <listing>
		 * &lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;
		 * // name : html</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms754603%28VS.85%29.aspx MSDN - name Property (IXMLDOMDocumentType)
		 * @see http://developer.mozilla.org/En/DOM/DocumentType.name MDC - DocumentType.name
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1844763134 W3C - DocumentType.name
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get name():DOMString { return null; };
		
		/**
		 * A NamedNodeMap containing the notations declared in the DTD. Duplicates 
		 * are discarded. Every node in this map also implements the Notation interface.
		 * 
		 * <p><strong>Note:</strong> The DOM Level 2 does not support editing notations, therefore notations 
		 * cannot be altered in any way.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;!DOCTYPE ex SYSTEM "ex.dtd" [
		 * 	&lt;!NOTATION GIF system "image/gif"&gt;    
		 * ]&gt;
		 * </listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms762714%28VS.85%29.aspx MSDN - notations Property
		 * @see http://developer.mozilla.org/En/DOM/DocumentType.notations MDC - DocumentType.notations
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-D46829EF W3C - DocumentType.notations
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get notations():NamedNodeMap { return null; };
		
		/**
		 * The public identifier of the external subset.
		 * 
		 * @example
		 * <listing>
		 * &lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;
		 * // publicId : -//W3C//DTD XHTML 1.0 Transitional//EN</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms760313%28VS.85%29.aspx MSDN - publicId Property (IXMLDOMEntity)
		 * @see http://msdn.microsoft.com/en-us/library/ms765397%28VS.85%29.aspx MSDN - publicId Property (IXMLDOMNotation)
		 * @see http://developer.mozilla.org/En/DOM/DocumentType.publicId MDC - DocumentType.publicId
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-Core-DocType-publicId W3C - DocumentType.publicId
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function get publicId():DOMString { return null; };
		
		/**
		 * The system identifier of the external subset. This may be an absolute URI or not.
		 * 
		 * @example
		 * <listing>
		 * &lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;
		 * // systemId : http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms764731%28VS.85%29.aspx MSDN - systemId Property (IXMLDOMEntity)
		 * @see http://msdn.microsoft.com/en-us/library/ms754668%28VS.85%29.aspx MSDN - systemId Property (IXMLDOMNotation)
		 * @see http://developer.mozilla.org/En/DOM/DocumentType.systemId MDC - DocumentType.systemId
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-Core-DocType-systemId W3C - DocumentType.systemId
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function get systemId():DOMString { return null; };
	}
}