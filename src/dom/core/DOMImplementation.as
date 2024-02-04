package dom.core {
	
	import dom.core.types.DOMString;
	import dom.core.types.DOMObject;
	import dom.core.DocumentType;
	
	/**
	 * The DOMImplementation interface provides a number of methods for 
	 * performing operations that are independent of any particular 
	 * instance of the document object model. 
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/dd347056(VS.85).aspx MSDN - DOMImplementation Prototype
	 * @see http://developer.mozilla.org/En/DOM/DOMImplementation MDC - DOMImplementation
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-102161490 W3C - DOMImplementation
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 * @modified DOMCore 3
	 */
	public interface DOMImplementation {
		
		/**
		 * This method creates a DOM document.
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the 
		 * specified qualified name is not an XML name according to [XML 1.0].
		 * 
		 * @throws dom.core.DOMException NAMESPACE_ERR: Raised if the 
		 * qualifiedName is malformed, if the qualifiedName has a prefix and the 
		 * namespaceURI is null, or if the qualifiedName is null and the 
		 * namespaceURI is different from null, or if the qualifiedName has a 
		 * prefix that is "xml" and the namespaceURI is different from 
		 * "http://www.w3.org/XML/1998/namespace" [XML Namespaces], or if the DOM 
		 * implementation does not support the "XML" feature but a non-null 
		 * namespace URI was provided, since namespaces were defined by XML.
		 * 
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if doctype has 
		 * already been used with a different document or was created from a 
		 * different implementation.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if the 
		 * implementation does not support the feature "XML" and the language 
		 * exposed through the Document does not support XML Namespaces. 
		 * 
		 * @param	namespaceURI The namespace URI of the document element to 
		 * create or null.
		 * @param	qualifiedName The qualified name of the document element to 
		 * be created or null.
		 * @param	doctype The type of document to be created or null.
		 * When doctype is not null, its Node.ownerDocument attribute is set to 
		 * the document being created.
		 * @return A new Document object with its document element. If the NamespaceURI, 
		 * qualifiedName, and doctype are null, the returned Document is empty with 
		 * no document element.
		 * 
		 * @example
		 * <listing>
		 * var doc = document.implementation.createDocument ('http://www.w3.org/1999/xhtml', 'html', null);
		 * var body = document.createElementNS('http://www.w3.org/1999/xhtml', 'body');
		 * body.setAttribute('id', 'abc');
		 * doc.documentElement.appendChild(body);
		 * alert(doc.getElementById('abc')); // [object HTMLBodyElement]</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMImplementation.createDocument MDC - DOMImplementation.createDocument()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Level-2-Core-DOM-createDocument W3C - DOMImplementation.createDocument()
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		function createDocument(namespaceURI:DOMString, qualifiedName:DOMString, doctype:DocumentType):Document;
		
		/**
		 * Creates an empty DocumentType node.
		 * 
		 * <p>Entity declarations and notations 
		 * are not made available. Entity reference expansions and default 
		 * attribute additions do not occur.</p>
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the 
		 * specified qualified name is not an XML name according to [XML 1.0].
		 * 
		 * @throws dom.core.DOMException NAMESPACE_ERR: Raised if the 
		 * qualifiedName is malformed.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if 
		 * the implementation does not support the feature "XML" and the 
		 * language exposed through the Document does not support XML Namespaces. 
		 * 
		 * @param	qualifiedName The qualified name  of the document type to be created.
		 * @param	publicId The external subset public identifier.
		 * @param	systemId The external subset system identifier.
		 * @return A new DocumentType node with Node.ownerDocument set to null.
		 * 
		 * @example
		 * <listing>
		 * var dt = document.implementation.createDocumentType('svg:svg', '-//W3C//DTD SVG 1.1//EN', 'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd');
		 * var d = document.implementation.createDocument('http://www.w3.org/2000/svg', 'svg:svg', dt);
		 * alert(d.doctype.publicId); // -//W3C//DTD SVG 1.1//EN</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMImplementation.createDocumentType MDC - DOMImplementation.createDocumentType()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Level-2-Core-DOM-createDocType W3C - DOMImplementation.createDocumentType()
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		function createDocumentType(qualifiedName:DOMString, publicId:DOMString, systemId:DOMString):DocumentType;
		
		/**
		 * This method returns a specialized object which implements the 
		 * specialized APIs of the specified feature and version, as specified 
		 * in DOM Features. 
		 * 
		 * <p>The specialized object may also be obtained by using 
		 * binding-specific casting methods but is not necessarily expected to, 
		 * as discussed in Mixed DOM Implementations. This method also allow 
		 * the implementation to provide specialized objects which do not support 
		 * the DOMImplementation interface. </p>
		 * 
		 * @param	feature The name of the feature requested. Note that any plus 
		 * sign "+" prepended to the name of the feature will be ignored since it 
		 * is not significant in the context of this method. 
		 * @param	version This is the version number of the feature to test. 
		 * @return Returns an object which implements the specialized APIs of the 
		 * specified feature and version, if any, or null if there is no object 
		 * which implements interfaces associated with that feature. If the DOMObject 
		 * returned by this method implements the DOMImplementation  interface, it 
		 * must delegate to the primary core DOMImplementation and not return results 
		 * inconsistent with the primary core DOMImplementation such as hasFeature, 
		 * getFeature, etc. 
		 * 
		 * @example
		 * <listing>
		 * if (myNode.isSupported("+Events", "3.0")) {
		 * 	// (the plus sign "+" is irrelevant for the getFeature method itself and is ignored by this method anyway)
		 * 	EventTarget evt = (EventTarget) myNode.getFeature("Events", "3.0");
		 * 	// ...
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMImplementation.getFeature MDC - DOMImplementation.getFeature()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMImplementation3-getFeature W3C - DOMImplementation.getFeature()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMFeatures W3C - DOM Features
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function getFeature(feature:DOMString, version:DOMString):DOMObject;
		
		/**
		 * Test if the DOM implementation implements a specific feature and version, 
		 * as specified in DOM Features.
		 * 
		 * @param	feature The name of the feature to test. 
		 * @param	version This is the version number of the feature to test. 
		 * @return If the feature is implemented in the specified version.
		 * 
		 * @example
		 * The following example uses the hasFeature method to test whether the object implements the DOM HTML standard.
		 * <listing>var bSupported = document.implementation.hasFeature("HTML","1.0");</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536446(VS.85).aspx MSDN - hasFeature Method
		 * @see http://developer.mozilla.org/En/DOM/DOMImplementation.hasFeature MDC - DOMImplementation.hasFeature()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-5CED94D7 W3C - DOMImplementation.hasFeature()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMFeatures W3C - DOM Features
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		function hasFeature(feature:DOMString, version:DOMString):Boolean;
	}
}