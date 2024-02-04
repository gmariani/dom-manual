package dom.validation {
	
	import dom.core.DOMStringList;
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * This interface is similar to the DOM Level 3 Core Node interface, with methods for guided document editing. 
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL W3C - NodeEditVAL
	 * 
	 * @playerversion DOMVAL 3
	 * @since DOMVAL 3
	 */
	public interface NodeEditVAL {
		
		/**
		 * The default value specified in an attribute or an element declaration or null if unspecified. If the schema is a 
		 * W3C XML schema, this is the canonical lexical representation of the default value. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#NodeEditVAL-defaultValue W3C - NodeEditVAL.defaultValue
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get defaultValue():DOMString;
		
		/**
		 * A DOMStringList, as described in DOM Level 3 Core, of distinct values for an attribute or an element declaration or 
		 * null  if unspecified. If the schema is a W3C XML schema, this is a list of strings which are lexical representations 
		 * corresponding to the values in the [value] property of the enumeration component for the type of the attribute or element. 
		 * It is recommended that the canonical lexical representations of the values be used. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#NodeEditVAL-enumeratedValues W3C - NodeEditVAL.enumeratedValues
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get enumeratedValues():DOMStringList;
		
		/**
		 * Determines whether the Node.insertBefore operation would make this document not compliant with the VAL_INCOMPLETE  validity type. 
		 * 
		 * @param	newChild Node to be inserted.
		 * @param	refChild Reference Node.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL-canInsertBefore W3C - NodeEditVAL.canInsertBefore()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canInsertBefore(newChild:Node, refChild:Node):Number;
		
		/**
		 * Determines whether the Node.removeChild operation would make this document not compliant with the VAL_INCOMPLETE  validity type. 
		 * 
		 * @param	oldChild Node to be removed.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL-canRemoveChild W3C - NodeEditVAL.canRemoveChild()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canRemoveChild(oldChild:Node):Number;
		
		/**
		 * Determines whether the Node.replaceChild operation would make this document not compliant with the VAL_INCOMPLETE validity type.  
		 * 
		 * @param	newChild New Node.
		 * @param	oldChild Node to be replaced.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL-canReplaceChild W3C - NodeEditVAL.canReplaceChild()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canReplaceChild(newChild:Node, oldChild:Node):Number;
		
		/**
		 * Determines whether the Node.appendChild operation would make this document not compliant with the VAL_INCOMPLETE validity type. 
		 * 
		 * @param	newChild Node to be appended.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL-canAppendChild W3C - NodeEditVAL.canAppendChild()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canAppendChild(newChild:Node):Number;
		
		/**
		 * Determines if the node is valid relative to the validation type  specified in valType. This operation doesn't normalize 
		 * before checking if it is valid. To do so, one would need to explicitly call a normalize method. The difference between 
		 * this method and the DocumentEditVAL.validateDocument method is that the latter method only checks to determine whether 
		 * the entire document is valid. 
		 * 
		 * @param	valType Flag to indicate the validation type  checking to be done. 
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#NodeEditVAL-nodeValidity W3C - NodeEditVAL.nodeValidity()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function nodeValidity(valType:Number):Number;
	}
}