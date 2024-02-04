package dom.core {
	
	/**
	 * DOM operations only raise exceptions in "exceptional" circumstances. For example,
	 * when an operation is impossible to perform (either for logical reasons, 
	 * because data is lost, or because the implementation has become unstable). 
	 * In general, DOM methods return specific error values in ordinary processing 
	 * situations, such as out-of-bound errors when using NodeList.
	 * 
	 * @see http://developer.mozilla.org/En/DOM/DOMException MDC - DOMException
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-17189187 W3C - DOMException
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 */
	public interface DOMException {
		
		/**
		 * An integer indicating the type of error generated.
		 * 
		 * @see dom.core.ExceptionCode
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		function get code():Number;
		function set code(value:Number):void;
	}
}