package dom.validation {
	
	import dom.core.DOMConfiguration;
	import dom.core.NameList;
	import dom.core.types.DOMString;
	
	/**
	 * An object implementing this interface must also implement the Document interface. 
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-DocumentEditVAL W3C - DocumentEditVAL
	 * 
	 * @playerversion DOMVAL 3
	 * @since DOMVAL 3
	 */
	public interface DocumentEditVAL extends NodeEditVAL {
		
		/**
		 * An attribute specifying whether the validity of the document is continuously enforced. When the attribute 
		 * is set to true, the implementation may raise certain exceptions, depending on the situation (see the following).
		 * 
		 * @default false
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if the implementation does not support setting this attribute to true.
		 * 
		 * @throws dom.validation.ExceptionVAL NO_SCHEMA_AVAILABLE_ERR: Raised if this attribute is set to true  and a schema is unavailable. 
		 * 
		 * @throws dom.core.DOMException VALIDATION_ERR: Raised if an operation makes this document not compliant with the VAL_INCOMPLETE 
		 * validity type or the document is invalid, and this attribute is set to true. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#DocumentEditVAL-continuousValidityChecking W3C - DocumentEditVAL.continuousValidityChecking
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get continuousValidityChecking():Boolean;
		function set continuousValidityChecking(value:Boolean):void;
		
		/**
		 * This allows the setting of the error handler, as described in the [DOM Level 3 Core] DOMConfiguration interface. An object implementing 
		 * this DocumentEditVAL interface and the DOM Level 3 Core Document interface, which also has a domConfig attribute, needs to only implement 
		 * this attribute once. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#DocumentEditVAL-domConfig W3C - DocumentEditVAL.domConfig
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get domConfig():DOMConfiguration;
		
		/**
		 * Returns list of all element information item names of global declaration, belonging to the specified namespace. 
		 * 
		 * @param	namespaceURI namespaceURI of namespace. For DTDs, this is null.
		 * @return List of all element information item names belonging to the specified namespace or null if no schema is available. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#DocumentEditVAL-getDefinedElements W3C - DocumentEditVAL.getDefinedElements()
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function getDefinedElements(namespaceURI:DOMString):NameList;
		
		/**
		 * Validates the document against the schema, e.g., a DTD or an W3C XML schema or another. Any attempt to modify any part 
		 * of the document while validating results in implementation-dependent behavior. In addition, the validation operation itself 
		 * cannot modify the document, e.g., for default attributes. This method makes use of the error handler, as described in the 
		 * DOM Level 3 Core DOMConfiguration interface, with all errors being SEVERITY_ERROR as defined in the DOMError interface. 
		 * 
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#DocumentEditVAL-validateDocument W3C - DocumentEditVAL.validateDocument()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function validateDocument():Number;
	}
}