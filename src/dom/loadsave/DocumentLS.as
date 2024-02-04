package dom.loadsave {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * The DocumentLS interface provides a mechanism by which the content of a document can be replaced with the 
	 * DOM tree produced when loading a URI, or parsing a string. The expectation is that an instance of the 
	 * DocumentLS interface can be obtained by using binding-specific casting methods on an instance of the 
	 * Document interface.
	 * 
	 * @see http://www.w3.org/TR/2002/WD-DOM-Level-3-ASLS-20020409/load-save.html#LS-Interfaces-DocumentLS W3C - DocumentLS
	 * 
	 * @playerversion DOMLS 3
	 * @playerversion Obsolete 0
	 */
	public interface DocumentLS {
		
		/**
		 * Indicates whether the method load should be synchronous or asynchronous. When the async attribute is set 
		 * to true the load method returns control to the caller before the document has completed loading.
		 * 
		 * @default false
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if the implementation doesn't support the mode the attribute is being set to.
		 * 
		 * @example
		 * <listing>
		 * function loadXMLData(e) {
		 * 	alert(new XMLSerializer().serializeToString(e.target)); // Gives querydata.xml contents as string
		 * }
		 * 
		 * var xmlDoc = document.implementation.createDocument("", "test", null);
		 * xmlDoc.async = false;
		 * xmlDoc.onload = loadXMLData;
		 * xmlDoc.load('querydata.xml');</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.async MDC - Document.async
		 * @see http://www.w3.org/TR/2002/WD-DOM-Level-3-ASLS-20020409/load-save.html#LS-DocumentLS-async W3C - DocumentLS.async
		 * 
		 * @playerversion DOMLS 3
		 * @playerversion Obsolete 0
		 */
		function get async():Boolean;
		function set async(value:Boolean):void;
		
		/**
		 * If the document is currently being loaded as a result of the method load being invoked the loading and parsing is immediately 
		 * aborted. The possibly partial result of parsing the document is discarded and the document is cleared. 
		 * 
		 * @see http://www.w3.org/TR/2002/WD-DOM-Level-3-ASLS-20020409/load-save.html#LS-DocumentLS-abort W3C - DocumentLS.abort()
		 * 
		 * @playerversion DOMLS 3
		 * @playerversion Obsolete 0
		 */
		function abort():void;
		
		/**
		 * Replaces the content of the document with the result of parsing the given URI. Invoking this method 
		 * will either block the caller or return to the caller immediately depending on the value of the async 
		 * attribute. Once the document is fully loaded the document will fire a "load" event that the caller can 
		 * register as a listener for. If an error occurs the document will fire an "error" event so that the caller 
		 * knows that the load failed (see ParseErrorEvent). If this method is called on a document that is currently 
		 * loading, the current load is interrupted and the new URI load is initiated. 
		 * 
		 * <p><strong>Note (Mozilla):</strong> As of at least Gecko 1.9, this no longer supports cross-site loading 
		 * of documents (Use XMLHttpRequest instead).</p>
		 * 
		 * @param	uri The URI reference for the XML file to be loaded. If this is a relative URI, the base URI used by the implementation is implementation dependent.
		 * @return 	If async is set to true load returns true if the document load was successfully initiated. If an 
		 * error occurred when initiating the document load load returns false. If async is set to false load returns 
		 * true if the document was successfully loaded and parsed. If an error occurred when either loading or parsing 
		 * the URI load returns false.
		 * 
		 * @example
		 * <listing>
		 * var xmlDoc = document.implementation.createDocument("", "test", null);
		 * function documentLoaded (e) {
		 * 	alert(new XMLSerializer().serializeToString(e.target)); // Gives querydata.xml contents as string
		 * }
		 * xmlDoc.addEventListener("load", documentLoaded, false);
		 * xmlDoc.load('querydata.xml');</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.load MDC - Document.load()
		 * @see http://www.w3.org/TR/2002/WD-DOM-Level-3-ASLS-20020409/load-save.html#LS-DocumentLS-load W3C - DocumentLS.load()
		 * 
		 * @playerversion DOMLS 3
		 * @playerversion Obsolete 0
		 */
		function load(uri:DOMString):Boolean;
		
		/**
		 * Replace the content of the document with the result of parsing the input string, this method is always synchronous. 
		 * This method always parses from a DOMString, which means the data is always UTF16. All other encoding information is ignored. 
		 * 
		 * @param	source A string containing an XML document.
		 * @return true if parsing the input string succeeded without errors, otherwise false.
		 * 
		 * @see http://www.w3.org/TR/2002/WD-DOM-Level-3-ASLS-20020409/load-save.html#LS-DocumentLS-loadXML W3C - DocumentLS.loadXML()
		 * 
		 * @playerversion DOMLS 3
		 * @playerversion Obsolete 0
		 */
		function loadXML(source:DOMString):Boolean;
		
		/**
		 * Save the document or the given node to a string (i.e. serialize the document or node). 
		 * 
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if the node passed in as the node parameter is from an other document.
		 * 
		 * @param	snode Specifies what to serialize, if this parameter is null the whole document is serialized, if it's non-null the given node is serialized.
		 * @return 	The serialized document or null.
		 * 
		 * @see http://www.w3.org/TR/2002/WD-DOM-Level-3-ASLS-20020409/load-save.html#LS-DocumentLS-saveXML W3C - DocumentLS.saveXML()
		 * 
		 * @playerversion DOMLS 3
		 * @playerversion Obsolete 0
		 */
		function saveXML(snode:Node):DOMString;
	}
}