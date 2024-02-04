package dom.core {
	
	import dom.core.types.DOMString;
	import dom.core.types.DOMUserData;
	import dom.core.DOMException;
	import dom.core.DOMStringList;
	
	/**
	 * Used by Document.normalizeDocument(), and DOM Level 3 DOMParser() and DOMSerializer.
	 * 
	 * <p>Using the configuration, it is possible to change Document.normalizeDocument() 
	 * behavior, such as replacing the CDATASection nodes with Text nodes 
	 * or specifying the type of the schema that must be used when the 
	 * validation of the Document is requested. DOMConfiguration objects are 
	 * also used in [DOM Level 3 Load and Save] in the DOMParser and 
	 * DOMSerializer interfaces.</p>
	 * 
	 * <p><strong>Note (Mozilla):</strong> This is not implemented in Mozilla.</p>
	 * 
	 * <p>The following list of parameters defined in the DOM: 
	 * <table class="innertable">
	 * 	<tr><th>Parameter</th><th width='100'>Value</th><th>Description</th></tr>
	 * 	<tr>
	 * 		<td>"canonical-form"</td><td><code>true</code> [optional]</td><td>Canonicalize the document according to the rules 
	 * specified in [Canonical XML], such as removing the DocumentType node (if any) from the tree, or removing 
	 * superfluous namespace declarations from each element. Note that this is limited to what can be represented 
	 * in the DOM; in particular, there is no way to specify the order of the attributes in the DOM. In addition, 
	 * Setting this parameter to true will also set the state of the parameters listed below. Later changes to the 
	 * state of one of those parameters will revert "canonical-form" back to false. Parameters set to false: 
	 * "entities", "normalize-characters", "cdata-sections". Parameters set to true: "namespaces", 
	 * "namespace-declarations", "well-formed", "element-content-whitespace". Other parameters are not changed unless 
	 * explicitly specified in the description of the parameters.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [required] (default)</td><td>Do not canonicalize the document.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"cdata-sections"</td><td><code>true</code> [required] (default)</td><td>Keep CDATASection nodes in the document.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [required]</td><td>Transform CDATASection nodes in the document into Text nodes. The new Text  node is then combined with any adjacent Text  node.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"check-character-normalization"</td><td><code>true</code> [optional]</td><td>Check if the characters in the document are fully normalized, as defined in appendix B of XML 1.1. When a sequence of characters is encountered that fails normalization checking, an error with the DOMError.type equals to "check-character-normalization-failure" is issued. </td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [required] (default)</td><td>Do not check if characters are normalized.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"comments"</td><td><code>true</code> [required] (default)</td><td>Keep Comment nodes in the document.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [required]</td><td>Discard Comment nodes in the document.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"datatype-normalization"</td><td><code>true</code> [optional]</td><td>Expose schema normalized values in the tree, such as XML Schema normalized values in the case of XML Schema. Since this parameter requires to have schema information, the "validate" parameter will also be set to true. Having this parameter activated when "validate" is false has no effect and no schema-normalization will happen. </td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [required] (default)</td><td>Do not perform schema normalization on the tree. </td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"element-content-whitespace"</td><td><code>true</code> [required] (default)</td><td>Keep all whitespaces in the document.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [optional]</td><td>Discard all Text nodes that contain whitespaces in element content, as described in [element content whitespace]. The implementation is expected to use the attribute Text.isElementContentWhitespace to determine if a Text node should be discarded or not.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"entities"</td><td><code>true</code> [required] (default)</td><td>Keep EntityReference nodes in the document.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [required]</td><td>Remove all EntityReference nodes from the document, putting the entity expansions directly in their place. Text nodes are normalized, as defined in Node.normalize. Only unexpanded entity references are kept in the document.<p><strong>Note:</strong> This parameter does not affect Entity nodes.</p></td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"error-handler"</td><td>[required]</td><td>Contains a DOMErrorHandler object. If an error is encountered in the document, the implementation will call back the DOMErrorHandler registered using this parameter. The implementation may provide a default DOMErrorHandler object. When called, DOMError.relatedData will contain the closest node to where the error occurred. If the implementation is unable to determine the node where the error occurs, DOMError.relatedData will contain the Document node. Mutations to the document from within an error handler will result in implementation dependent behavior. </td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"infoset"</td><td><code>true</code> [required]</td><td>Keep in the document the information defined in the XML Information Set. This forces the following parameters to false: "validate-if-schema", "entities", "datatype-normalization", "cdata-sections". This forces the following parameters to true: "namespace-declarations", "well-formed", "element-content-whitespace", "comments", "namespaces". Other parameters are not changed unless explicitly specified in the description of the parameters. Note that querying this parameter with getParameter returns true only if the individual parameters specified above are appropriately set.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code></td><td>Setting infoset to false  has no effect.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"namespaces"</td><td><code>true</code> [required] (default)</td><td>Perform the namespace processing as defined in Namespace Normalization. </td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [optional]</td><td>Do not perform the namespace processing. </td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"namespace-declarations"</td><td></td><td>This parameter has no effect if the parameter "namespaces" is set to false. </td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>true</code> [required] (default)</td><td>Include namespace declaration attributes, specified or defaulted from the schema, in the document.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [required]</td><td>Discard all namespace declaration attributes. The namespace prefixes (Node.prefix) are retained even if this parameter is set to false.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"normalize-characters"</td><td><code>true</code> [optional]</td><td>Fully normalized the characters in the document as defined in appendix B of [XML 1.1].</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [required] (default)</td><td>Do not perform character normalization.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"schema-location"</td><td>[optional]</td><td>Represent a DOMString object containing a list of URIs, separated by whitespaces (characters matching the nonterminal production S defined in section 2.3 [XML 1.0]), that represents the schemas against which validation should occur, i.e. the current schema. The types of schemas referenced in this list must match the type specified with schema-type, otherwise the behavior of an implementation is undefined. The schemas specified using this property take precedence to the schema information specified in the document itself. For namespace aware schema, if a schema specified using this property and a schema specified in the document instance (i.e. using the schemaLocation attribute) in a schema document (i.e. using schema import mechanisms) share the same targetNamespace, the schema specified by the user using this property will be used. If two schemas specified using this property share the same targetNamespace or have no namespace, the behavior is implementation dependent. If no location has been provided, this parameter is null.<p><strong>Note:</strong> The "schema-location" parameter is ignored unless the "schema-type" parameter value is set. It is strongly recommended that Document.documentURI will be set so that an implementation can successfully resolve any external entities referenced.</p></td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"schema-type"</td><td>[optional]</td><td>Represent a DOMString object containing an absolute URI and representing the type of the schema language used to validate a document against. Note that no lexical checking is done on the absolute URI. If this parameter is not set, a default value may be provided by the implementation, based on the schema languages supported and on the schema language used at load time. If no value is provided, this parameter is null.<p><strong>Note:</strong> For XML Schema, applications must use the value "http://www.w3.org/2001/XMLSchema". For XML DTD, applications must use the value "http://www.w3.org/TR/REC-xml". Other schema languages are outside the scope of the W3C and therefore should recommend an absolute URI in order to use this method.</p></td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"split-cdata-sections"</td><td><code>true</code> [required] (default)</td><td>Split CDATA sections containing the CDATA section termination marker ']]&gt;'. When a CDATA section is split a warning is issued with a DOMError.type equals to "cdata-sections-splitted" and DOMError.relatedData equals to the first CDATASection node in document order resulting from the split.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [required]</td><td>Signal an error if a CDATASection contains an unrepresentable character.</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"validate"</td><td><code>true</code> [optional]</td><td>Require the validation against a schema (i.e. XML schema, DTD, any other type or representation of schema) of the document as it is being normalized as defined by [XML 1.0]. If validation errors are found, or no schema was found, the error handler is notified. Schema-normalized values will not be exposed according to the schema in used unless the parameter "datatype-normalization" is true. This parameter will reevaluate:<ul><li>Attribute nodes with Attr.specified equals to false, as specified in the description of the Attr interface;</li><li>The value of the attribute Text.isElementContentWhitespace for all Text nodes;</li><li>The value of the attribute Attr.isId for all Attr nodes;</li><li>The attributes Element.schemaTypeInfo and Attr.schemaTypeInfo.</li></ul><p><strong>Note:</strong> "validate-if-schema" and "validate" are mutually exclusive, setting one of them to true will set the other one to false. Applications should also consider setting the parameter "well-formed" to true, which is the default for that option, when validating the document.</p></td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [required] (default)</td><td>Do not accomplish schema processing, including the internal subset processing. Default attribute values information are kept. Note that validation might still happen if "validate-if-schema" is true. </td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"validate-if-schema"</td><td><code>true</code> [optional]</td><td>Enable validation only if a declaration for the document element can be found in a schema (independently of where it is found, i.e. XML schema, DTD, or any other type or representation of schema). If validation is enabled, this parameter has the same behavior as the parameter "validate" set to true.<p><strong>Note:</strong> "validate-if-schema" and "validate" are mutually exclusive, setting one of them to true will set the other one to false.</p></td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [required] (default)</td><td>No schema processing should be performed if the document has a schema, including internal subset processing. Default attribute values information are kept. Note that validation must still happen if "validate" is true. </td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>"well-formed"</td><td><code>true</code> [required] (default)</td><td>Check if all nodes are XML well formed according to the XML version in use in Document.xmlVersion: <ul><li>check if the attribute Node.nodeName contains invalid characters according to its node type and generate a DOMError of type "wf-invalid-character-in-node-name", with a DOMError.SEVERITY_ERROR severity, if necessary;</li><li>check if the text content inside Attr, Element, Comment, Text, CDATASection nodes for invalid characters and generate a DOMError of type "wf-invalid-character", with a DOMError.SEVERITY_ERROR severity, if necessary;</li><li>check if the data inside ProcessingInstruction nodes for invalid characters and generate a DOMError of type "wf-invalid-character", with a DOMError.SEVERITY_ERROR severity, if necessary;</li></ul></td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td></td><td><code>false</code> [optional]</td><td>Do not check for XML well-formedness. </td>
	 * 	</tr>
	 * </table>
	 * </p>
	 * 
	 * @see http://developer.mozilla.org/En/DOM/DOMConfiguration MDC - DOMConfiguration
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMConfiguration W3C - DOMConfiguration
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/ W3C - DOM 3 Load and Save Specification
	 * @see http://www.w3.org/TR/2004/REC-xml-infoset-20040204#infoitem.character W3C - [element content whitespace]
	 * @see http://www.w3.org/TR/xml11/ W3C - [XML 1.1]
	 * @see http://www.w3.org/TR/REC-xml/ W3C - [XML 1.0]
	 * @see http://www.w3.org/TR/xml-c14n W3C - [Canonical XML]
	 * 
	 * @playerversion DOMCore 3
	 * @since DOMCore 3
	 */
	public interface DOMConfiguration {
		
		/**
		 * The list of the parameters supported by this DOMConfiguration object 
		 * and for which at least one value can be set by the application. Note 
		 * that this list can also contain parameter names defined outside 
		 * this specification. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMConfiguration.parameterNames MDC - DOMConfiguration.parameterNames
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMConfiguration-parameterNames W3C - DOMConfiguration.parameterNames
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function get parameterNames():DOMStringList;
		
		/**
		 * Check if setting a parameter to a specific value is supported.
		 * 
		 * @param	name The name of the parameter to check.
		 * @param	value An object. if null, the returned value is true. 
		 * @return If the parameter could be successfully set to the specified value
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMConfiguration.canSetParameter MDC - DOMConfiguration.canSetParameter()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMConfiguration-canSetParameter W3C - DOMConfiguration.canSetParameter()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function canSetParameter(name:DOMString, value:DOMUserData):Boolean;
		
		/**
		 * Return the value of a parameter if known. 
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised when the parameter 
		 * name is not recognized. 
		 * 
		 * @param	name The name of the parameter. 
		 * @return The current object associated with the specified parameter or n
		 * ull if no object has been associated or if the parameter is not supported. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMConfiguration.getParameter MDC - DOMConfiguration.getParameter()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMConfiguration-getParameter W3C - DOMConfiguration.getParameter()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function getParameter(name:DOMString):DOMUserData;
		
		/**
		 * Set the value of a parameter.
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised when the parameter 
		 * name is not recognized. 
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised when the 
		 * parameter name is recognized but the requested value cannot be set. 
		 * 
		 * @throws dom.core.DOMException TYPE_MISMATCH_ERR: Raised if the value 
		 * type for this parameter name is incompatible with the expected 
		 * value type. 
		 * 
		 * @param	name The name of the parameter to set.
		 * @param	value The new value or null if the user wishes to unset the 
		 * parameter. While the type of the value parameter is defined as 
		 * DOMUserData, the object type must match the type defined by the definition 
		 * of the parameter. For example, if the parameter is "error-handler", the 
		 * value must be of type DOMErrorHandler. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/DOMConfiguration.setParameter MDC - DOMConfiguration.setParameter()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMConfiguration-property W3C - DOMConfiguration.setParameter()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function setParameter(name:DOMString, value:DOMUserData):void;
	}
}