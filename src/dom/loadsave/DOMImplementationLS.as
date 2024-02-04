package dom.loadsave {
	
	import dom.core.types.DOMString;
	
	/**
	 * DOMImplementationLS contains the factory methods for creating Load and Save objects. 
	 * 
	 * The expectation is that an instance of the DOMImplementationLS interface can be obtained by using 
	 * binding-specific casting methods on an instance of the DOMImplementation interface or, if the Document 
	 * supports the feature "Core"  version "3.0" defined in DOM Level 3 Core, by using the method 
	 * DOMImplementation.getFeature with parameter values "LS" (or "LS-Async") and "3.0" (respectively). 
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementation W3C - DOMImplementationLS
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public interface DOMImplementationLS {
		
		/**
		 * Create a new LSParser. The newly constructed parser may then be configured by means of its 
		 * DOMConfiguration object, and used to parse documents by means of its parse method. 
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if the requested mode or schema type is not supported. 
		 * 
		 * @param	mode The mode argument is either MODE_SYNCHRONOUS or MODE_ASYNCHRONOUS, if mode is 
		 * MODE_SYNCHRONOUS then the LSParser that is created will operate in synchronous mode, if it's 
		 * MODE_ASYNCHRONOUS then the LSParser that is created will operate in asynchronous mode. 
		 * @param	schemaType An absolute URI representing the type of the schema language used during 
		 * the load of a Document using the newly created LSParser. Note that no lexical checking is done 
		 * on the absolute URI. In order to create a LSParser for any kind of schema types (i.e. the LSParser 
		 * will be free to use any schema found), use the value null. 
		 * 
		 * <p><strong>Note:</strong> For W3C XML Schema [XML Schema Part 1], applications must use the value 
		 * "http://www.w3.org/2001/XMLSchema". For XML DTD [XML 1.0], applications must use the value 
		 * "http://www.w3.org/TR/REC-xml". Other Schema languages are outside the scope of the W3C and therefore 
		 * should recommend an absolute URI in order to use this method. </p>
		 * 
		 * @return The newly created LSParser object. This LSParser is either synchronous or asynchronous depending on the value of the mode argument. 
		 * 
		 * <p><strong>Note:</strong> By default, the newly created LSParser does not contain a DOMErrorHandler, 
		 * i.e. the value of the "error-handler" configuration parameter is null. However, implementations may provide 
		 * a default error handler at creation time. In that case, the initial value of the "error-handler" configuration 
		 * parameter on the new LSParser object contains a reference to the default error handler. </p>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementationLS-createLSParser W3C - DOMImplementationLS.createLSParser()
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function createLSParser(mode:Number, schemaType:DOMString):LSParser;
		
		/**
		 * Create a new LSSerializer object. 
		 * 
		 * @return The newly created LSSerializer object.
		 * 
		 * <p><strong>Note:</strong> By default, the newly created LSSerializer  has no DOMErrorHandler, i.e. the value of the 
		 * "error-handler" configuration parameter is null. However, implementations may provide a default error handler at creation time. 
		 * In that case, the initial value of the "error-handler"  configuration parameter on the new LSSerializer object contains a 
		 * reference to the default error handler. </p>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementationLS-createLSSerializer W3C - DOMImplementationLS.createLSSerializer()
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function createLSSerializer():LSSerializer;
		
		/**
		 * Create a new empty input source object where LSInput.characterStream, LSInput.byteStream, LSInput.stringData  
		 * LSInput.systemId, LSInput.publicId, LSInput.baseURI, and LSInput.encoding are null, and LSInput.certifiedText is false. 
		 * 
		 * @return The newly created input object. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementationLS-createLSInput W3C - DOMImplementationLS.createLSInput()
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function createLSInput():LSInput;
		
		/**
		 * Create a new empty output destination object where LSOutput.characterStream, LSOutput.byteStream, LSOutput.systemId, 
		 * LSOutput.encoding are null. 
		 * 
		 * @return The newly created output object. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementationLS-createLSOutput W3C - DOMImplementationLS.createLSOutput()
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function createLSOutput():LSOutput;
	}
}