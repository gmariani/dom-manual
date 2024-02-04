package dom.core {
	
	import dom.core.types.DOMString;
	
	/**
	 * This is a global variable used to get a single DOMImplementation or DOMImplementationList 
	 * depending on the registered objects with the specified features.
	 * 
	 * <p><strong>Note (Mozilla):</strong> This is not implemented in Mozilla</p>
	 * 
	 * @see http://developer.mozilla.org/En/DOM/DOMImplementationRegistry MDC - DOMImplementationRegistry
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Bootstrap W3C - Bootstrapping
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/ecma-script-binding.html#Level-3-ECMAScript-Binding-Extension-h2 W3C - ECMAScript Binding Extension
	 * 
	 * @playerversion DOMCore 3
	 * @since DOMCore 3
	 */
	public interface DOMImplementationRegistry {
		
		/**
		 * @copy dom.core.DOMImplementationSource#getDOMImplementation()
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMImplementationRegistry.getDOMImplementation MDC - DOMImplementationRegistry.getDOMImplementation()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Bootstrap W3C - Bootstrapping
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function getDOMImplementation(feature:DOMString):DOMImplementation;
		
		/**
		 * @copy dom.core.DOMImplementationSource#getDOMImplementationList()
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMImplementationRegistry.getDOMImplementationList MDC - DOMImplementationRegistry.getDOMImplementationList()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Bootstrap W3C - Bootstrapping
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function getDOMImplementationList(feature:DOMString):DOMImplementationList;
	}
}