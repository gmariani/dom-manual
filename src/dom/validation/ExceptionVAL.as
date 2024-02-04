package dom.validation {
	
	/**
	 * Some Validation operations may throw an ExceptionVAL as described in their descriptions. 
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#ExceptionVAL W3C - ExceptionVAL
	 * 
	 * @playerversion DOMVAL 3
	 * @since DOMVAL 3
	 */
	public interface ExceptionVAL {
		/**
		 * The specific exception code.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#ExceptionVAL W3C - ExceptionVAL
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function get code():Number;
	}
}