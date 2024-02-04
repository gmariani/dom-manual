package dom.core {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * This interface represents a known entity, either parsed or unparsed, in 
	 * an XML document. Note that this models the entity itself not the entity 
	 * declaration.
	 * 
	 * <p>The nodeName attribute that is inherited from Node contains the name of 
	 * the entity.</p>
	 * 
	 * <p><strong>Note:</strong> An Entity node does not have any parent.</p>
	 * 
	 * <p><strong>Note:</strong> If the entity contains an unbound namespace prefix, the namespaceURI of 
	 * the corresponding node in the Entity node subtree is null. The same is true 
	 * for EntityReference nodes that refer to this entity, when they are created 
	 * using the createEntityReference method of the Document interface.</p>
	 * 
	 * <p><strong>Note (Mozilla):</strong> This is not implemented in Mozilla</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms766394%28VS.85%29.aspx MSDN - IXMLDOMEntity
	 * @see http://developer.mozilla.org/En/DOM/Entity MDC - Entity
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-527DCFF2 W3C - Entity
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 * @modified DOMCore 3
	 */
	public class Entity extends Node {
		
		/**
		 * An attribute specifying the encoding used for this entity at the time of 
		 * parsing, when it is an external parsed entity. This is null if it an 
		 * entity from the internal subset or if it is not known.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Entity.inputEncoding MDC - Entity.inputEncoding
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Entity3-inputEncoding W3C - Entity.inputEncoding
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get inputEncoding():DOMString { return null; };
		
		/**
		 * For unparsed entities, the name of the notation for the entity. For parsed 
		 * entities, this is null.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms757830%28VS.85%29.aspx MSDN - notationName Property
		 * @see http://developer.mozilla.org/En/DOM/Entity.notationName MDC - Entity.notationName
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-6ABAEB38 W3C - Entity.notationName
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get notationName():DOMString { return null; };
		
		/**
		 * The public identifier associated with the entity if specified, and null otherwise.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms760313%28VS.85%29.aspx MSDN - publicId Property (IXMLDOMEntity)
		 * @see http://developer.mozilla.org/En/DOM/Entity.publicId MDC - Entity.publicId
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-D7303025 W3C - Entity.publicId
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get publicId():DOMString { return null; };
		
		/**
		 * The system identifier associated with the entity if specified, and null 
		 * otherwise. This may be an absolute URI or not.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms764731%28VS.85%29.aspx MSDN - systemId Property (IXMLDOMEntity)
		 * @see http://developer.mozilla.org/En/DOM/Entity.systemId MDC - Entity.systemId
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-D7C29F3E W3C - Entity.systemId
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get systemId():DOMString { return null; };
		
		/**
		 * An attribute specifying, as part of the text declaration, the encoding of 
		 * this entity, when it is an external parsed entity. This is null otherwise.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Entity.xmlEncoding MDC - Entity.xmlEncoding
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Entity3-encoding W3C - Entity.xmlEncoding
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get xmlEncoding():DOMString { return null; };
		
		/**
		 * An attribute specifying, as part of the text declaration, the version number 
		 * of this entity, when it is an external parsed entity. This is null otherwise.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Entity.xmlVersion MDC - Entity.xmlVersion
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Entity3-version W3C - Entity.xmlVersion
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get xmlVersion():DOMString { return null; };
	}
}