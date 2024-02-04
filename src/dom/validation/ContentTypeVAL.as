package dom.validation {
	
	/**
	 * Content type constants stored in ElementEditVAL.
	 * 
	 * <p><strong>Note:</strong> Moved to ContentTypeVAL specifically for this documentation. Constants are not allowed in an interface.</p>
	 * 
	 * @see dom.validation.ElementEditVAL
	 */
	public class ContentTypeVAL {
		
		/**
		 * The content model does not allow any content. If the schema is a W3C XML schema, this 
		 * corresponds to the empty content type; and if the schema is a DTD, this corresponds to the EMPTY content model. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-VAL_EMPTY_CONTENTTYPE W3C - ElementEditVAL.VAL_EMPTY_CONTENTTYPE
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_EMPTY_CONTENTTYPE:Number = 1;
		
		/**
		 * The content model contains unordered child information item(s), i.e., element, processing instruction, unexpanded entity reference, character, and 
		 * comment information items as defined in the XML Information Set. If the schema is a DTD, this corresponds to the ANY content model. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-VAL_ANY_CONTENTTYPE W3C - ElementEditVAL.VAL_ANY_CONTENTTYPE
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_ANY_CONTENTTYPE:Number = 2;
		
		/**
		 * The content model contains a sequence of ordered element information items  optionally interspersed with character data. If the schema is a W3C XML 
		 * schema, this corresponds to the mixed  content type. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-VAL_MIXED_CONTENTTYPE W3C - ElementEditVAL.VAL_MIXED_CONTENTTYPE
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_MIXED_CONTENTTYPE:Number = 3;
		
		/**
		 * The content model contains a sequence of element information items  optionally separated by whitespace. If the schema is a DTD, this is the element 
		 * content content model; and if the schema is a W3C XML schema, this is the element-only content type. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-VAL_ELEMENTS_CONTENTTYPE W3C - ElementEditVAL.VAL_ELEMENTS_CONTENTTYPE
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_ELEMENTS_CONTENTTYPE:Number = 4;
		
		/**
		 * The content model contains  character information items. If the schema is a W3C XML schema, then the element has a content type of VAL_SIMPLE_CONTENTTYPE  
		 * if the type of the element is a simple type definition, or the type of the element is a complexType whose {content type} is a simple type definition. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-ElementEditVAL-VAL_SIMPLE_CONTENTTYPE W3C - ElementEditVAL.VAL_SIMPLE_CONTENTTYPE
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_SIMPLE_CONTENTTYPE:Number = 5;
	}
}