package dom.validation {
	
	/**
	 * Validation state constants stored in NodeEditVAL.
	 * 
	 * <p><strong>Note:</strong> Moved to ValidationState specifically for this documentation. Constants are not allowed in an interface.</p>
	 * 
	 * @see dom.validation.NodeEditVAL
	 */
	public class ValidationState {
		
		/**
		 * True if the node is valid with regards to the operation, or if the operation can be done. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL-VAL_TRUE W3C - NodeEditVAL.VAL_TRUE
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_TRUE:Number = 5;
		
		/**
		 * False if the node is invalid with regards to the operation, or if the operation cannot be done. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL-VAL_FALSE W3C - NodeEditVAL.VAL_FALSE
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_FALSE:Number = 6;
		
		/**
		 * The validity of the node is unknown. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL-VAL_UNKNOWN W3C - NodeEditVAL.VAL_UNKNOWN
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_UNKNOWN:Number = 7;
	}
}