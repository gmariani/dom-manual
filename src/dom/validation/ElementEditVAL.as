package dom.validation {
	
	import dom.core.Attr;
	import dom.core.NameList;
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * This interface also has attributes that are a NameList of elements or attributes which can appear in the specified context. 
	 * Some schema languages, i.e., W3C XML schema, define wildcards which provide for validation of attribute and element information 
	 * items dependent on their namespace names but independent of their local names. 
	 * 
	 * <p>To expose wildcards, the NameList returns the values that represent the  namespace constraint: 
	 * <ul>
	 * <li><code>{namespaceURI, name}</code> is <code>{null, ##any}</code> if any;</li>
	 * <li><code>{namespaceURI, name}</code> is <code>{namespace_a, ##other}</code> if not and a namespace name (namespace_a);</li>
	 * <li><code>{namespaceURI, name}</code> is <code>{null, ##other}</code> if not and absent;</li>
	 * <li>Pairs of <code>{namespaceURI, name}</code> with values <code>{a_namespaceURI | null, null}</code> if a set whose members are either namespace names or absent.</li>
	 * </ul>
	 * </p>
	 * 
	 * <p>An object implementing this interface must also implement the Element interface. </p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL W3C - ElementEditVAL
	 * 
	 * @playerversion DOMVAL 3
	 * @since DOMVAL 3
	 */
	public interface ElementEditVAL extends NodeEditVAL {
		
		/**
		 * A NameList, as described in [DOM Level 3 Core], of all possible element information items or wildcards  that can appear as children 
		 * of this element, or null  if this element has no context or schema. Duplicate pairs of {namespaceURI, name} are eliminated. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#ElementEditVAL-allowedChildren W3C - ElementEditVAL.allowedChildren
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get allowedChildren():NameList;
		
		/**
		 * A NameList, as described in [DOM Level 3 Core], of all possible element information items or wildcards  that can appear as a first 
		 * child of this element, or null  if this element has no context or schema. Duplicate pairs of {namespaceURI, name} are eliminated. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#ElementEditVAL-allowedFirstChildren W3C - ElementEditVAL.allowedFirstChildren
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get allowedFirstChildren():NameList;
		
		/**
		 * A NameList, as described in [DOM Level 3 Core], of all possible element information items that can appear as a parent this 
		 * element, or null  if this element has no context or schema. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#ElementEditVAL-allowedParents W3C - ElementEditVAL.allowedParents
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get allowedParents():NameList;
		
		/**
		 * A NameList, as described in [DOM Level 3 Core], of all element information items or wildcards  that can be inserted as a next 
		 * sibling of this element, or null  if this element has no context or schema. Duplicate pairs of {namespaceURI, name} are eliminated. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#ElementEditVAL-allowedNextSiblings W3C - ElementEditVAL.allowedNextSiblings
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get allowedNextSiblings():NameList;
		
		/**
		 * A NameList, as described in [DOM Level 3 Core], of all element information items or wildcards  that can be inserted as a previous 
		 * sibling of this element, or null  if this element has no context or schema. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#ElementEditVAL-allowedNextSiblings W3C - ElementEditVAL.allowedNextSiblings
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get allowedPreviousSiblings():NameList;
		
		/**
		 * A NameList, as described in [DOM Level 3 Core], of all possible attribute information items or wildcards  that can appear as attributes 
		 * of this element, or null  if this element has no context or schema. Duplicate pairs of {namespaceURI, name} are eliminated. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#ElementEditVAL-allowedAttributes W3C - ElementEditVAL.allowedAttributes
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get allowedAttributes():NameList;
		
		/**
		 * A NameList, as described in [DOM Level 3 Core], of required attribute information items that must appear on this element, or null  
		 * if this element has no context or schema. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#ElementEditVAL-requiredAttributes W3C - ElementEditVAL.requiredAttributes
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get requiredAttributes():NameList;
		
		/**
		 * The content type of an element as defined above.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-ElementEditVAL-contentType W3C - ElementEditVAL.contentType
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get contentType():Number;
		
		/**
		 * Determines if the text content of this node and its descendants can be set to the string passed in. 
		 * 
		 * @param	possibleTextContent Possible text content string.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-canSetTextContent W3C - ElementEditVAL.canSetTextContent()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canSetTextContent(possibleTextContent:DOMString):Number;
		
		/**
		 * Determines if the value for specified attribute can be set.
		 * 
		 * @param	attrname Name of attribute.
		 * @param	attrval Value to be assigned to the attribute.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-ElementEditVAL-canSetAttribute W3C - ElementEditVAL.canSetAttribute()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canSetAttribute(attrname:DOMString, attrval:DOMString):Number;
		
		/**
		 * Determines if an attribute node can be added. 
		 * 
		 * @param	attrNode Node in which the attribute can possibly be set.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-canSetAttributeNode W3C - ElementEditVAL.canSetAttributeNode()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canSetAttributeNode(attrNode:Attr):Number;
		
		/**
		 * Determines if the attribute with given namespace and qualified name can be created if not already present in the attribute list 
		 * of the element. If the attribute with the same qualified name and namespaceURI is already present in the element's attribute list, 
		 * it tests whether the value of the attribute and its prefix can be set to the new value. 
		 * 
		 * @param	namespaceURI namespaceURI of namespace.
		 * @param	qualifiedName Qualified name of attribute.
		 * @param	value Value to be assigned to the attribute.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-canSetAttributeNS W3C - ElementEditVAL.canSetAttributeNS()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */ 
		function canSetAttributeNS(namespaceURI:DOMString, qualifiedName:DOMString, value:DOMString):Number;
		
		/**
		 * Verifies if an attribute by the given name can be removed.
		 * 
		 * @param	attrname Name of attribute.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-canRemoveAttribute W3C - ElementEditVAL.canRemoveAttribute()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canRemoveAttribute(attrname:DOMString):Number;
		
		/**
		 * Verifies if an attribute by the given local name and namespace can be removed.
		 * 
		 * @param	namespaceURI The namespace URI of the attribute to remove.
		 * @param	localName Local name of the attribute to be removed.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-canRemoveAttributeNS W3C - ElementEditVAL.canRemoveAttributeNS()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canRemoveAttributeNS(namespaceURI:DOMString, localName:DOMString):Number;
		
		/**
		 * Determines if an attribute node can be removed.
		 * 
		 * @param	attrNode The Attr node to remove from the attribute list.
		 * @return A validation state constant.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-canRemoveAttributeNode W3C - ElementEditVAL.canRemoveAttributeNode()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canRemoveAttributeNode(attrNode:Node):Number;
		
		/**
		 * Determines if name is defined in the schema. This only applies to global declarations. This method is for non-namespace aware schemas. 
		 * 
		 * @param	name Name of element.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-isElementDefined W3C - ElementEditVAL.isElementDefined()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function isElementDefined(name:DOMString):Number;
		
		/**
		 * Determines if name in this namespace is defined in the current context. Thus not only does this apply to global declarations, 
		 * but depending on the content, this may also apply to local definitions. This method is for namespace aware schemas. 
		 * 
		 * @param	namespaceURI namespaceURI of namespace.
		 * @param	name Name of element.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-isElementDefinedNS W3C - ElementEditVAL.isElementDefinedNS()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function isElementDefinedNS(namespaceURI:DOMString, name:DOMString):Number;
	}
}