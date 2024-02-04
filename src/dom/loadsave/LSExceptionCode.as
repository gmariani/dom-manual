package dom.loadsave {
	
	/**
	 * An integer indicating the type of error generated. 
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSException-LSExceptionCode W3C - LSExceptionCode
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public class LSExceptionCode {
		
		/**
		 * If an attempt was made to load a document, or an XML Fragment, using LSParser and the processing has been stopped. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#PARSE_ERR W3C - LSExceptionCode.PARSE_ERR
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const PARSE_ERR:Number = 81;
		
		/**
		 * If an attempt was made to serialize a Node using LSSerializer and the processing has been stopped. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#SERIALIZE_ERR W3C - LSExceptionCode.SERIALIZE_ERR
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const SERIALIZE_ERR:Number = 82;
	}
}