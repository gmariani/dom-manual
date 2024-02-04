package dom.core {
	
	import dom.core.DOMImplementation;
	import dom.core.types.DOMString;
	
	/**
	 * This interface permits a DOM implementer to supply one or more 
	 * implementations, based upon requested features and versions, as specified 
	 * in DOM Features. Each implemented DOMImplementationSource object is listed 
	 * in the binding-specific list of available sources so that its 
	 * DOMImplementation objects are made available.
	 * 
	 * @see http://developer.mozilla.org/En/DOM/DOMImplementationSource MDC - DOMImplementationSource
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMImplementationSource W3C - DOMImplementationSource
	 * 
	 * @playerversion DOMCore 3
	 * @since DOMCore 3
	 */
	public interface DOMImplementationSource {
		
		/**
		 * A method to request the first DOM implementation that supports the 
		 * specified features. 
		 * 
		 * @param	features A string that specifies which features and versions are 
		 * required. This is a space separated list in which each feature is specified 
		 * by its name optionally followed by a space and a version number.
		 * This method returns the first item of the list returned by getDOMImplementationList.
		 * As an example, the string "XML 3.0 Traversal +Events 2.0" will request a DOM 
		 * implementation that supports the module "XML" for its 3.0 version, a module 
		 * that support of the "Traversal" module for any version, and the module 
		 * "Events" for its 2.0 version. The module "Events" must be accessible using the 
		 * method Node.getFeature() and DOMImplementation.getFeature(). 
		 * @return The first DOM implementation that support the desired features, or 
		 * null if this source has none.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMImplementationSource.getDOMImplementation MDC - DOMImplementationSource.getDOMImplementation()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-getDOMImpl W3C - DOMImplementationSource.getDOMImplementation()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function getDOMImplementation(features:DOMString):DOMImplementation;
		
		/**
		 * A method to request a list of DOM implementations that support the 
		 * specified features and versions, as specified in DOM Features.
		 * 
		 * @param	features A string that specifies which features and versions are required. 
		 * This is a space separated list in which each feature is specified by its name 
		 * optionally followed by a space and a version number. This is something like: 
		 * "XML 3.0 Traversal +Events 2.0"
		 * @return A list of DOM implementations that support the desired features.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMImplementationSource.getDOMImplementationList MDC - DOMImplementationSource.getDOMImplementationList()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-getDOMImpls W3C - DOMImplementationSource.getDOMImplementationList()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function getDOMImplementationList(features:DOMString):DOMImplementationList;
	}
}