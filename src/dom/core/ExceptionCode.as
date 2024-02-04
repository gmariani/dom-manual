package dom.core {
	
	/**
	 * An integer indicating the type of error generated.
	 * 
	 * <p><strong>Note:</strong> Other numeric codes are reserved for W3C for possible future use.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-258A00AF W3C - DOM 3 Core: ExceptionCode
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 * @modified DOMCore 3
	 */
	public class ExceptionCode {
		
		/**
		 * If index or size is negative, or greater than the allowed value.
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const INDEX_SIZE_ERR:Number = 1;
		
		/**
		 * If the specified range of text does not fit into a DOMString.
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const DOMSTRING_SIZE_ERR:Number = 2;
		
		/**
		 * If any Node is inserted somewhere it doesn't belong.
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const HIERARCHY_REQUEST_ERR:Number = 3;
		
		/**
		 * If a Node is used in a different document than the one that created it (that doesn't support it).
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const WRONG_DOCUMENT_ERR:Number = 5;
		
		/**
		 * If an invalid or illegal character is specified, such as in an XML name.
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const INVALID_CHARACTER_ERR:Number = 5;
		
		/**
		 * If data is specified for a Node which does not support data.
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const NO_DATA_ALLOWED_ERR:Number = 6;
		
		/**
		 * If an attempt is made to modify an object where modifications are not allowed.
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const NO_MODIFICATION_ALLOWED_ERR:Number = 7;
		
		/**
		 * If an attempt is made to reference a Node in a context where it does not exist.
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const NOT_FOUND_ERR:Number = 8;
		
		/**
		 * If the implementation does not support the requested type of object or operation.
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const NOT_SUPPORTED_ERR:Number = 9;
		
		/**
		 * If an attempt is made to add an attribute that is already in use elsewhere.
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const INUSE_ATTRIBUTE_ERR:Number = 10;
		
		/**
		 * If an attempt is made to use an object that is not, or is no longer, usable.
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public static const INVALID_STATE_ERR:Number = 11;
		
		/**
		 * If an invalid or illegal string is specified.
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public static const SYNTAX_ERR:Number = 12;
		
		/**
		 * If an attempt is made to modify the type of the underlying object.
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public static const INVALID_MODIFICATION_ERR:Number = 13;
		
		/**
		 * If an attempt is made to create or change an object in a way which is 
		 * incorrect with regard to namespaces.
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public static const NAMESPACE_ERR:Number = 14;
		
		/**
		 * If a parameter or an operation is not supported by the underlying object.
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public static const INVALID_ACCESS_ERR:Number = 15;
		
		/**
		 * If a call to a method such as insertBefore or removeChild would make the 
		 * Node invalid with respect to "partial validity", this exception would be 
		 * raised and the operation would not be done. This code is used in [DOM 
		 * Level 3 Validation]. Refer to this specification for further information.
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const VALIDATION_ERR:Number = 16;
		
		/**
		 * If the type of an object is incompatible with the expected type of the 
		 * parameter associated to the object.
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const TYPE_MISMATCH_ERR:Number = 17;
		
	}
}