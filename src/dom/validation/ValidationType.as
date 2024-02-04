package dom.validation {
	
	/**
	 * Validation type constants stored in NodeEditVAL.
	 * 
	 * <p><strong>Note:</strong> Moved to ValidationType specifically for this documentation. Constants are not allowed in an interface.</p>
	 * 
	 * @see dom.validation.NodeEditVAL
	 */
	public class ValidationType {
		
		/**
		 * Check if the node is  well-formed.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL-VAL_WF W3C - NodeEditVAL.VAL_WF
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_WF:Number = 1;
		
		/**
		 * Check if the node is namespace well-formed. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL-VAL_NS_WF W3C - NodeEditVAL.VAL_NS_WF
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_NS_WF:Number = 2;
		
		/**
		 * Check if the node's immediate children are those expected by the content model. This node's trailing required 
		 * children could be missing. It includes VAL_NS_WF. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL-VAL_INCOMPLETE W3C - NodeEditVAL.VAL_INCOMPLETE
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_INCOMPLETE:Number = 3;
		
		/**
		 * Check if the node's entire subtree are those expected by the content model. It includes VAL_NS_WF. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-NodeEditVAL-VAL_SCHEMA W3C - NodeEditVAL.VAL_SCHEMA
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const VAL_SCHEMA:Number = 4;
	}
}