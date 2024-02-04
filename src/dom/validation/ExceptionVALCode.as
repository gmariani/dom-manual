package dom.validation {
	
	/**
	 * An integer indicating the type of error generated. 
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#ExceptionVAL-codes W3C - ExceptionVALCode
	 * 
	 * @playerversion DOMVAL 3
	 * @since DOMVAL 3
	 */
	public class ExceptionVALCode {
		
		/**
		 * This error occurs when the operation cannot complete due to an unavailable schema. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#ExceptionVAL-NO_SCHEMA_AVAILABLE_ERR W3C - ExceptionVALCode.NO_SCHEMA_AVAILABLE_ERR
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		public static const NO_SCHEMA_AVAILABLE_ERR:Number = 71;
	}
}