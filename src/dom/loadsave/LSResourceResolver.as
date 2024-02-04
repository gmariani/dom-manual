package dom.loadsave {
	
	import dom.core.types.DOMString;
	
	/**
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSResourceResolver
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public interface LSResourceResolver {
		/**
		 * 
		 * @param	type
		 * @param	namespaceURI
		 * @param	publicId
		 * @param	systemId
		 * @param	baseURI
		 * @return
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSResourceResolver-resolveResource
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function resolveResource(type:DOMString, namespaceURI:DOMString, publicId:DOMString, systemId:DOMString, baseURI:DOMString):LSInput;
	}
}