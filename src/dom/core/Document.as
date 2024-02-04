package dom.core {
	
	import dom.loadsave.DocumentLS;
	import dom.loadsave.DOMImplementationLS;
	import dom.loadsave.LSInput;
	import dom.loadsave.LSOutput;
	import dom.loadsave.LSParser;
	import dom.loadsave.LSSerializer;
	import dom.style.stylesheets.StyleSheet;
	import gecko.nsIURI;
	import selectors.NodeSelector;
	import dom.style.css.CSSStyleDeclaration;
	import dom.style.css.DocumentCSS;
	import dom.style.stylesheets.DocumentStyle;
	import dom.events.DocumentEvent;
	import dom.events.Event;
	import dom.core.Node;
	import dom.core.Comment;
	import dom.core.DocumentFragment;
	import dom.core.Element;
	import dom.core.DOMConfiguration;
	import dom.core.DOMImplementation;
	import dom.core.NodeList;
	import dom.core.types.DOMString;
	import dom.core.ProcessingInstruction;
	import dom.core.DocumentType;
	import dom.core.CDATASection;
	import dom.core.EntityReference;
	import dom.tr.range.Range;
	import dom.tr.range.DocumentRange;
	import dom.style.stylesheets.StyleSheetList;
	import dom.core.Text;
	import dom.tr.traversal.DocumentTraversal;
	import dom.tr.traversal.NodeFilter;
	import dom.tr.traversal.NodeIterator;
	import dom.tr.traversal.TreeWalker;
	import dom.views.AbstractView;
	import dom.views.DocumentView;
	import cssom.view.DocumentView;
	
	//--------------------------------------
    //  Events
    //--------------------------------------
	
	/**
	 * A mouse wheel has been rotated. A default action of user agent 
	 * generated event objects of this type causes implementations to 
	 * dispatch a mousewheel event iff it supports that event type and 
	 * MouseMultiWheelEvent.wheelDeltaY is non-zero.
	 *
	 * @eventType mousemultiwheel
	 */
	[Event(name = "mousemultiwheel", type = "dom.events.MouseMultiWheelEvent")]
	
	/**
	 * A mouse wheel has been rotated around the y-axis.
	 *
	 * @eventType mousewheel
	 */
	[Event(name = "mousewheel", type = "dom.events.MouseWheelEvent")]
	
	/**
	 * This is a general event for notification of all changes to the 
	 * document. It can be used instead of the more specific mutation and 
	 * mutation name events listed below. It may be dispatched after a 
	 * single modification to the document or, at the implementation's 
	 * discretion, after multiple changes have occurred. The latter use 
	 * should generally be used to accommodate multiple changes which occur 
	 * either simultaneously or in rapid succession. The target of this 
	 * event is the lowest common parent of the changes which have taken 
	 * place. This event is dispatched after any other events caused by the 
	 * mutation(s) have occurred.
	 *
	 * @eventType DOMSubtreeModified
	 */
	[Event(name = "DOMSubtreeModified", type = "dom.events.MutationEvent")]
	
	/**
	 * The DOM Implementation finishes loading the resource (such as the 
	 * document) and any dependent resources (such as images, style sheets, 
	 * or scripts). Dependent resources that fail to load will not prevent 
	 * this event from firing if the resource that loaded them is still 
	 * accessible via the DOM. If this event type is dispatched, 
	 * implementations are required to dispatch this event at least on the 
	 * Document node.
	 *
	 * @eventType load
	 */
	[Event(name = "load", type = "dom.events.Event")]
	
	/**
	 * The DOM implementation removes from the environment the resource 
	 * (such as the document) or any dependent resources (such as images, 
	 * style sheets, scripts). The document is unloaded after the dispatch 
	 * of this event type. If this event type is dispatched, implementations 
	 * are required to dispatch this event at least on the Document node.
	 *
	 * @eventType unload
	 */
	[Event(name = "unload", type = "dom.events.Event")]
	
	/**
	 * A document view or an element has been resized. The resize occured before 
	 * the dispatch of this event type.
	 *
	 * @eventType resize
	 */
	[Event(name = "resize", type = "dom.events.Event")]
	
	/**
	 * A document view or an element has been scrolled. The scroll occured before 
	 * the dispatch of this event type.
	 *
	 * @eventType scroll
	 */
	[Event(name = "scroll", type = "dom.events.Event")]
	
	/**
	 * Is fired when the browser switches between online and offline mode.
	 *
	 * @eventType online
	 */
	[Event(name = "online", type = "dom.events.Event")]
	
	/**
	 * Is fired when the browser switches between online and offline mode.
	 *
	 * @eventType offline
	 */
	[Event(name = "offline", type = "dom.events.Event")]
	
	/**
	 * In the DOM, the document object provides a general way to represent HTML, 
	 * XHTML, and XML documents. Document objects implement the general DOM Core 
	 * document interface (which itself implements the Node interface).
	 * 
	 * <p>In addition to the generalized DOM Core document interface, HTML documents 
	 * also implement the DOM HTMLDocument interface, which is a more specialized 
	 * interface for dealing with HTML documents (e.g., document.cookie, 
	 * document.alinkColor). Methods listed here that are part of this more 
	 * specialized interface have an asterisk (~~) next to them.</p>
	 * 
	 * <p>The document is contained by the window object and may contain any number 
	 * of elements.</p>
	 * 
	 * <p>The document interface provides access to things such as the document type, 
	 * its color and formatting, plugins and applets, as well providing methods 
	 * for creating and manipulating all of the document's child nodes, or elements, 
	 * such as BODY and TABLE elements.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms531073%28VS.85%29.aspx MSDN - document Object
	 * @see http://developer.mozilla.org/en/DOM/document MDC - Document
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#i-Document W3C - Document
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 * @modified DOMCore 3
	 */
	public class Document extends Node implements DocumentCSS, DocumentStyle, cssom.view.DocumentView, dom.views.DocumentView, DocumentRange, DocumentEvent, DocumentTraversal, NodeSelector, DOMImplementationLS, DocumentLS {
		
		// START dom.views.DocumentView //
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.defaultView MDC - Document.defaultView
		 * @see http://www.w3.org/TR/DOM-Level-2-Views/views.html#Views-DocumentView-defaultView W3C - DocumentView.defaultView
		 * 
		 * @playerversion DOMViews 2
		 * @since DOMCore 2
		 */
		public function get defaultView():AbstractView { return null; };
		
		// END dom.views.DocumentView //
		
		/**
		 * The Document Type Declaration (see DocumentType) associated with this 
		 * document. For XML documents without a document type declaration this 
		 * returns null. For HTML documents, a DocumentType object may be returned, 
		 * independently of the presence or absence of document type declaration in 
		 * the HTML document.
		 * 
		 * <p>This provides direct access to the DocumentType node, child node of this 
		 * Document. This node can be set at document creation time and later changed 
		 * through the use of child nodes manipulation methods, such as 
		 * Node.insertBefore, or Node.replaceChild. Note, however, that while some 
		 * implementations may instantiate different types of Document objects 
		 * supporting additional features than the "Core", such as "HTML", based on the DocumentType specified at creation time, changing it 
		 * afterwards is very unlikely to result in a change of the features supported.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533737%28VS.85%29.aspx MSDN - doctype Property
		 * @see http://developer.mozilla.org/en/DOM/document.doctype MDC - Document.doctype
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-B63ED1A31 W3C - Document.doctype
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function get doctype():DocumentType { return null; };
		
		/**
		 * This is a convenience  attribute that allows direct access to the child node 
		 * that is the document element of the document.
		 * 
		 * <p><strong>Note:</strong> HTML documents typically contain a single child node, &lt;html&gt;, perhaps 
		 * with a DOCTYPE declaration before it. XML documents often contain multiple child nodes: the root 
		 * element, the DOCTYPE declaration, and  processing instructions. </p>
		 * 
		 * <p>That's why you should use document.documentElement rather than document.firstChild  to get the root element. </p>
		 * 
		 * @example
		 * <listing>
		 * var rootElement = document.documentElement;
		 * var firstTier = rootElement.childNodes;
		 * // firstTier is the NodeList of the direct children of the root element
		 * for (var i = 0; i &lt; firstTier.length; i++) {
		 * 	// do something with each direct kid of the root element
		 * 	// as firstTier[i]
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533739%28VS.85%29.aspx MSDN - documentElement Property
		 * @see http://developer.mozilla.org/en/DOM/document.documentElement MDC - Document.documentElement
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-87CD092 W3C - Document.documentElement
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get documentElement():Element { return null; };
		
		/**
		 * The location of the document or null if undefined or if the Document was 
		 * created using DOMImplementation.createDocument. No lexical checking is 
		 * performed when setting this attribute; this could result in a null value 
		 * returned when using Node.baseURI.
		 * 
		 * <p>Beware that when the Document supports the feature "HTML", the href attribute 
		 * of the HTML BASE element takes precedence over this attribute when computing Node.baseURI.</p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.documentURI MDC - Document.documentURI
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Document3-documentURI W3C - Document.documentURI
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get documentURI():DOMString { return null; };
		public function set documentURI(value:DOMString):void { };
		
		/**
		 * The configuration used when Document.normalizeDocument() is invoked. 
		 * 
		 * <p><strong>Note (Mozilla):</strong> This is not implemented in Mozilla at present.</p>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Document.domConfig MDC - Document.domConfig
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Document3-domConfig W3C - Document.domConfig
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get domConfig():DOMConfiguration { return null; };
		
		/**
		 * The DOMImplementation object that handles this document. A DOM application 
		 * may use objects from multiple implementations.
		 * 
		 * @example
		 * <listing>
		 * var modName = "HTML";
		 * var modVer = "2.0";
		 * var conformTest = document.implementation.hasFeature(modName, modVer);
		 * 
		 * alert("DOM " + modName + " " + modVer + " supported?: " + conformTest);
		 * 
		 * // alerts with: "DOM HTML 2.0 supported?: true" if DOM Level 2 HTML module is supported.</listing>
		 * 
		 * <p>A list of module names (e.g., Core, HTML, XML, etc) is available in the DOM Level 2 Conformance Section</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535865%28VS.85%29.aspx MSDN - implementation Object
		 * @see http://msdn.microsoft.com/en-us/library/ms533884%28VS.85%29.aspx MSDN - implementation Property
		 * @see http://developer.mozilla.org/en/DOM/document.implementation MDC - Document.implementation
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1B793EBA W3C - Document.implementation
		 * @see http://www.w3.org/TR/DOM-Level-2-Core/introduction.html#ID-Conformance-h2 W3C - Conformance Section
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get implementation():DOMImplementation { return null; };
		
		/**
		 * Returns a string representing the encoding under which the document was parsed (e.g. ISO-8859-1). 
		 * This is null when it is not known, such as when the Document was created in memory.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.inputEncoding MDC - Document.inputEncoding
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Document3-inputEncoding W3C - Document.inputEncoding
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get inputEncoding():DOMString { return null; };
		
		/**
		 * An attribute specifying whether error checking is enforced or not. When set 
		 * to false, the implementation is free to not test every possible error case 
		 * normally defined on DOM operations, and not raise any DOMException on DOM 
		 * operations or report errors while using Document.normalizeDocument(). In 
		 * case of error, the behavior is undefined. This attribute is true by default.
		 * 
		 * @default true
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.strictErrorChecking MDC - Document.strictErrorChecking
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Document3-strictErrorChecking W3C - Document.strictErrorChecking
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get strictErrorChecking():Boolean { return false; };
		public function set strictErrorChecking(value:Boolean):void { };
		
		/**
		 * An attribute specifying, as part of the XML declaration, the encoding of 
		 * this document. This is null when unspecified or when it is not known, such 
		 * as when the Document was created in memory.
		 * 
		 * <p>If the XML Declaration states:</p>
		 * 
		 * <listing>&lt;?xml version="1.0" encoding="UTF-16"?&gt;</listing>
		 * 
		 * <p>...the result should be "UTF-16".</p>
		 * 
		 * <p><strong>Note (Mozilla):</strong> However, Firefox 3.0 includes information on endianness (e.g., UTF-16BE for big 
		 * endian encoding), and while this extra information is removed as of Firefox 3.1b3, Firefox 3.1b3 is still 
		 * consulting the file's encoding, rather than the XML Declaration as the spec defines it ("An attribute specifying, 
		 * as part of the XML declaration, the encoding of this document.").</p>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Document.xmlEncoding MDC - Document.xmlEncoding
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Document3-encoding W3C - Document.xmlEncoding
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get xmlEncoding():DOMString { return null; };
		
		/**
		 * An attribute specifying, as part of the XML declaration, whether this 
		 * document is standalone. This is false when unspecified.
		 * 
		 * <p><strong>Note:</strong> No verification is done on the value when setting this attribute. 
		 * Applications should use Document.normalizeDocument() with the "validate" 
		 * parameter to verify if the value matches the validity constraint for 
		 * standalone document declaration as defined in XML 1.0.</p>
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if this document 
		 * does not support the "XML" feature. 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.xmlStandalone MDC - Document.xmlStandalone
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Document3-standalone W3C - Document.xmlStandalone
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get xmlStandalone():Boolean { return false; };
		public function set xmlStandalone(value:Boolean):void { };
		
		/**
		 * An attribute specifying, as part of the XML declaration, the version 
		 * number of this document. If there is no declaration and if this document 
		 * supports the "XML" feature, the value is "1.0". If this document does not 
		 * support the "XML" feature, the value is always null. Changing this 
		 * attribute will affect methods that check for invalid characters in XML 
		 * names. Application should invoke Document.normalizeDocument() in order to 
		 * check for invalid characters in the Nodes that are already part of this Document.
		 * 
		 * <p>DOM applications may use the DOMImplementation.hasFeature(feature, version) 
		 * method with parameter values "XMLVersion" and "1.0" (respectively) to 
		 * determine if an implementation supports XML 1.0. DOM applications may use 
		 * the same method with parameter values "XMLVersion" and "1.1" (respectively) 
		 * to determine if an implementation supports XML 1.1. In both cases, in 
		 * order to support XML, an implementation must also support the "XML" feature 
		 * defined in this specification. Document objects supporting a version of the 
		 * "XMLVersion" feature must not raise a NOT_SUPPORTED_ERR exception for the 
		 * same version number when using Document.xmlVersion.</p>
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if the version is set 
		 * to a value that is not supported by this Document or if this document does 
		 * not support the "XML" feature. 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.xmlVersion MDC - Document.xmlVersion
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Document3-version W3C - Document.xmlVersion
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get xmlVersion():DOMString { return null; };
		public function set xmlVersion(value:DOMString):void { };
		
		/**
		 * Attempts to adopt a node from another document to this document. If supported, 
		 * it changes the ownerDocument of the source node, its children, as well as the 
		 * attached attribute nodes if there are any. If the source node has a parent it 
		 * is first removed from the child list of its parent. This effectively allows 
		 * moving a subtree from one document to another (unlike importNode() which create 
		 * a copy of the source node instead of moving it). When it fails, applications 
		 * should use Document.importNode() instead. Note that if the adopted node is 
		 * already part of this document (i.e. the source and target document are the same), 
		 * this method still has the effect of removing the source node from the child 
		 * list of its parent, if any. The following list describes the specifics for 
		 * each type of node.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Attribute</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>ATTRIBUTE_NODE</td>
		 * 		<td>The ownerElement attribute is set to null and the specified flag is set to true on the adopted Attr. The descendants of the source Attr are recursively adopted.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>DOCUMENT_FRAGMENT_NODE</td>
		 * 		<td>The descendants of the source node are recursively adopted.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>DOCUMENT_NODE</td>
		 * 		<td>Document nodes cannot be adopted.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>DOCUMENT_TYPE_NODE</td>
		 * 		<td>DocumentType nodes cannot be adopted.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>ELEMENT_NODE</td>
		 * 		<td>Specified attribute nodes of the source element are adopted. Default attributes are discarded, though if the document being adopted into defines default attributes for this element name, those are assigned. The descendants of the source element are recursively adopted.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>ENTITY_NODE</td>
		 * 		<td>Entity nodes cannot be adopted.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>ENTITY_REFERENCE_NODE</td>
		 * 		<td>Only the EntityReference node itself is adopted, the descendants are discarded, since the source and destination documents might have defined the entity differently. If the document being imported into provides a definition for this entity name, its value is assigned.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>NOTATION_NODE</td>
		 * 		<td>Notation nodes cannot be adopted.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>PROCESSING_INSTRUCTION_NODE, TEXT_NODE, CDATA_SECTION_NODE, COMMENT_NODE</td>
		 * 		<td>These 
		 * nodes can all be adopted. No specifics.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * <p><strong>Note:</strong> Since it does not create new nodes unlike the Document.importNode() method, 
		 * this method does not raise an INVALID_CHARACTER_ERR exception, and applications 
		 * should use the Document.normalizeDocument() method to check if an imported name 
		 * is not an XML name according to the XML version in use.</p>
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if the source 
		 * node is of type DOCUMENT, DOCUMENT_TYPE.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised when 
		 * the source node is readonly.
		 * 
		 * @param	source The node to move into this document.
		 * @return The adopted node, or null if this operation fails, such as when 
		 * the source node comes from a different implementation.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.adoptNode MDC - Document.adoptNode()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Document3-adoptNode W3C - Document.adoptNode()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function adoptNode(source:Node):Node { return null; };
		
		/**
		 * Binds the specified function to an event, so that the function gets called whenever 
		 * the event fires on the object.
		 * 
		 * @param	type The event string should include the "on" prefix (ie: "onload", "onclick" etc).
		 * @param	listener The function or method to associate with the event.
		 * @return  true (successful) or false (failed).
		 * 
		 * @example
		 * <listing>if (window.attachEvent) window.attachEvent("onload", statusreport); //invoke function</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536343%28VS.85%29.aspx MSDN - attachEvent Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function attachEvent(type:DOMString, listener:Function):Boolean { return false; };
		
		/**
		 * Creates an Attr of the given name. Note that the Attr instance can 
		 * then be set on an Element  using the setAttributeNode method.
		 * To create an attribute with a qualified name and namespace URI, use 
		 * the createAttributeNS method.
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the 
		 * specified name is not an XML name according to the XML version 
		 * in use specified in the Document.xmlVersion attribute.
		 * 
		 * @param	name The name of the attribute.
		 * @return A new Attr object with the nodeName  attribute set to name, 
		 * and localName, prefix, and namespaceURI set to null. The value of 
		 * the attribute is the empty string.
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 
		 * &lt;head&gt;
		 * &lt;title&gt; create/set/get Attribute example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function doAttrib() {
		 * 	var node = document.getElementById("div1");
		 * 	var a = document.createAttribute("my_attrib");
		 * 	a.nodeValue = "newVal";
		 * 	node.setAttributeNode(a);
		 * 	alert(node.getAttribute("my_attrib")); // "newVal"
		 * }
		 * 
		 * // alternative form not actually using createAttribute
		 * //function doAttrib() {
		 * //var node = document.getElementById("div1");
		 * //node.setAttribute("my_attrib", "newVal");
		 * //alert(node.getAttribute("my_attrib")); // "newVal"
		 * //}
		 * 
		 * &lt;/script&gt;
		 * 
		 * &lt;/head&gt;
		 * 
		 * &lt;body onload="doAttrib();"&gt;
		 * 	&lt;div id="div1"&gt;
		 * 		&lt;p&gt;Some content here&lt;/p&gt;
		 * 	&lt;/div&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536379%28VS.85%29.aspx MSDN - createAttribute Method
		 * @see http://developer.mozilla.org/en/DOM/document.createAttribute MDC - Document.createAttribute()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1084891198 W3C - Document.createAttribute()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function createAttribute(name:DOMString):Attr { return null; };
		
		/**
		 * Creates an attribute of the given qualified name and namespace URI.
		 * Per XML Namespaces, applications must use the value null as the 
		 * namespaceURI parameter for methods if they wish to have no namespace.
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the 
		 * specified qualifiedName  is not an XML name according to the XML 
		 * version in use specified in the Document.xmlVersion attribute.
		 * 
		 * @throws dom.core.DOMException NAMESPACE_ERR: Raised if the qualifiedName 
		 * is a malformed qualified name, if the qualifiedName has a prefix and 
		 * the namespaceURI is null, if the qualifiedName has a prefix that is 
		 * "xml" and the namespaceURI is different from 
		 * "http://www.w3.org/XML/1998/namespace", if the qualifiedName or its 
		 * prefix is "xmlns" and the namespaceURI is different from 
		 * "http://www.w3.org/2000/xmlns/", or if the namespaceURI is 
		 * "http://www.w3.org/2000/xmlns/" and neither the qualifiedName nor its 
		 * prefix is "xmlns".
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Always thrown if the 
		 * current document does not support the "XML" feature, since namespaces 
		 * were defined by XML.
		 * 
		 * @param	namespaceURI The namespace URI of the attribute to create.
		 * @param	qualifiedName The qualified name of the attribute to instantiate.
		 * @return A new Attr object with the following attributes:
		 * <table class="innertable">
		 * 	<tr><th>Attribute</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td><code>Node.nodeName</code></td>
		 * 		<td>qualifiedName</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>Node.namespaceURI</code></td>
		 * 		<td><code>namespaceURI</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>Node.prefix</code></td>
		 * 		<td>prefix, extracted from <code>qualifiedName</code>, or <code>null</code> if there is no	prefix</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>Node.localName</code></td>
		 * 		<td>local name, extracted from <code>qualifiedName</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>Attr.name</code></td>
		 * 		<td>qualifiedName</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>Node.nodeValue</code></td>
		 * 		<td>the empty string</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.createAttributeNS MDC - Document.createAttributeNS()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-DocCrAttrNS W3C - Document.createAttributeNS()
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function createAttributeNS(namespaceURI:DOMString, qualifiedName:DOMString):Attr { return null; };
		
		/**
		 * Creates a CDATASection node whose value is the specified string.
		 * 
		 * <p><strong>Note (Mozilla):</strong> Will throw a NS_ERROR_DOM_INVALID_CHARACTER_ERR exception if one tries to 
		 * submit the closing CDATA sequence ("]]&gt;") as part of the data, so unescaped user-provided data cannot 
		 * be safely used without with this method getting this exception (createTextNode() can often be used in 
		 * its place). </p>
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if this 
		 * document is an HTML document.
		 * 
		 * @param	data The data for the CDATASection contents.
		 * @return The new CDATASection object.
		 * 
		 * @example
		 * <listing>
		 * var docu = new DOMParser().parseFromString('&lt;xml&gt;&lt;/xml&gt;',  "application/xml");
		 * 
		 * var cdata = docu.createCDATASection('Some &lt;CDATA&gt; data &amp; then some');
		 * 
		 * docu.getElementsByTagName('xml')[0].appendChild(cdata);
		 * 
		 * alert(new XMLSerializer().serializeToString(docu));
		 * // Displays: &lt;xml&gt;&lt;![CDATA[Some &lt;CDATA&gt; data &amp; then some]]&gt;&lt;/xml&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.createCDATASection MDC - Document.createCDATASection()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-D26C0AF8 W3C - Document.createCDATASection()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function createCDATASection(data:DOMString):CDATASection { return null; };
		
		/**
		 * Creates a Comment node given the specified string.
		 * 
		 * <p><strong>Note (Mozilla):</strong> Will throw a NS_ERROR_DOM_INVALID_CHARACTER_ERR exception if one tries to 
		 * include the "--" sequence as part of the data, so if based on user data, this potential string would 
		 * need to be escaped or have its exception caught. </p>
		 * 
		 * @param	data The data for the node.
		 * @return The new Comment object.
		 * 
		 * @example
		 * <listing>
		 * var docu = new DOMParser().parseFromString('&lt;xml&gt;&lt;/xml&gt;',  "application/xml");
		 * 
		 * var comment = docu.createComment('This is a not-so-secret comment in your document');
		 * 
		 * docu.getElementsByTagName('xml')[0].appendChild(comment);
		 * 
		 * alert(new XMLSerializer().serializeToString(docu));
		 * // Displays: &lt;xml&gt;&lt;!--This is a not-so-secret comment in your document--&gt;&lt;/xml&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536383%28VS.85%29.aspx MSDN - createComment Method
		 * @see http://developer.mozilla.org/en/DOM/document.createComment MDC - Document.createComment()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1334481328 W3C - Document.createComment()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function createComment(data:DOMString):Comment { return null; };
		
		/**
		 * Creates an empty DocumentFragment object. 
		 * 
		 * @return A new DocumentFragment.
		 * 
		 * @example
		 * <listing>
		 * var frag = document.createDocumentFragment();
		 * frag.appendChild(document.createTextNode('Ipsum Lorem'));
		 * document.body.appendChild(frag);</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536387%28VS.85%29.aspx MSDN - createDocumentFragment Method
		 * @see http://developer.mozilla.org/en/DOM/document.createDocumentFragment MDC - Document.createDocumentFragment()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-35CB04B5 W3C - Document.createDocumentFragment()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function createDocumentFragment():DocumentFragment { return null; };
		
		/**
		 * Creates an element of the type specified. Note that the instance
		 * returned implements the Element interface, so attributes can be 
		 * specified directly on the returned object.
		 * In addition, if there are known attributes with default values, 
		 * Attr nodes representing them are automatically created and attached 
		 * to the element.
		 * To create an element with a qualified name and namespace URI, use 
		 * the createElementNS method.
		 * 
		 * <p><strong>Note (Mozilla):</strong> Gecko implementation of createElement doesn't conform 
		 * to the DOM spec for XUL and XHTML documents: localName and namespaceURI are not set 
		 * to null on the created element. See bug 280692 for details.</p>
		 * 
		 * <p><strong>Note (IE):</strong> In Microsoft Internet Explorer 4.0, the only new elements you can create are  img,  area, and  
		 * option. As of Internet Explorer 5, you can create all elements programmatically, except  frame and  
		 * iframe. The properties of these created elements are read/write and can be accessed programmatically.
		 * Before you use new objects, you must explicitly add them to their respective collections or to the 
		 * document. To insert new elements into the current document, use the  insertBefore method or the  
		 * appendChild method. </p>
		 * 
		 * <p><strong>Note (IE):</strong> You must perform a second step when you use createElement to create the  
		 * input element. The createElement method generates an input text box, because that is the default input 
		 * type property. To insert any other kind of input element, first invoke createElement for input, and then 
		 * set the type property to the appropriate value in the next line of code. </p>
		 * 
		 * <p><strong>Note (IE):</strong> Attributes can be included with the tagName as long as the entire string is valid 
		 * HTML. To include the  NAME attribute at run time on objects created with the createElement method, use the tagName.</p>
		 * 
		 * <p><strong>Note (IE):</strong> Use the tagName to include attributes when form elements are created that will be reset 
		 * using the  reset method or a  BUTTON with a  TYPE attribute value of reset.</p>
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the 
		 * specified name is not an XML name according to the XML version in 
		 * use specified in the Document.xmlVersion attribute.
		 * 
		 * @param	tagName The name of the element type to instantiate. For XML, 
		 * this is case-sensitive, otherwise it depends on the case-sensitivity 
		 * of the markup language in use. In that case, the name is mapped to 
		 * the canonical form of that markup by the DOM implementation.
		 * @return A new Element object with the nodeName attribute set to tagName, 
		 * and localName, prefix, and namespaceURI set to null.
		 * 
		 * @example
		 * This creates a new &lt;div&gt; and inserts it before the element with id "org_div1":
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;||Working with elements||&lt;/title&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * var my_div = null;
		 * var newDiv = null;
		 * 
		 * function addElement() {
		 * // create a new div element
		 * // and give it some content
		 * newDiv = document.createElement("div");
		 * newDiv.innerHTML = "&lt;h1&gt;Hi there and greetings!&lt;/h1&gt;";
		 * 
		 * // add the newly created element and it's content into the DOM
		 * my_div = document.getElementById("org_div1");
		 * document.body.insertBefore(newDiv, my_div);
		 * }
		 * 
		 * 
		 * &lt;/script&gt;
		 * 
		 * &lt;body onload="addElement()"&gt;
		 * 	&lt;div id='org_div1'&gt; The text above has been created dynamically.&lt;/div&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536389%28VS.85%29.aspx MSDN - createElement Method
		 * @see http://developer.mozilla.org/en/DOM/document.createElement MDC - Document.createElement()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-2141741547 W3C - Document.createElement()
		 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=280692 bug 280692
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function createElement(tagName:DOMString):Element { return null; };
		
		/**
		 * Creates an element of the given qualified name and namespace URI.
		 * Per XML Namespaces, applications must use the value null as the 
		 * namespaceURI parameter for methods if they wish to have no namespace.
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the 
		 * specified qualifiedName is not an XML name according to the XML 
		 * version in use specified in the Document.xmlVersion attribute.
		 * 
		 * @throws dom.core.DOMException NAMESPACE_ERR: Raised if the qualifiedName 
		 * is a malformed qualified name, if the qualifiedName has a prefix and the 
		 * namespaceURI is null, or if the qualifiedName has a prefix that is "xml" 
		 * and the namespaceURI is different from 
		 * "http://www.w3.org/XML/1998/namespace" [XML Namespaces], or if the 
		 * qualifiedName or its prefix is "xmlns" and the namespaceURI is different 
		 * from "http://www.w3.org/2000/xmlns/", or if the namespaceURI is 
		 * "http://www.w3.org/2000/xmlns/" and neither the qualifiedName nor its 
		 * prefix is "xmlns".
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Always thrown if the 
		 * current document does not support the "XML" feature, since namespaces 
		 * were defined by XML.
		 * 
		 * @param	namespaceURI The namespace URI of the element to create.
		 * @param	qualifiedName The qualified name of the element type to instantiate.
		 * @return A new Element object with the following attributes:
		 * <table class="innertable">
		 * 	<tr><th>Attribute</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td><code>Node.nodeName</code></td>
		 * 		<td>qualifiedName</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>Node.namespaceURI</code></td>
		 * 		<td><code>namespaceURI</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>Node.prefix</code></td>
		 * 		<td>prefix, extracted from <code>qualifiedName</code>, or <code>null</code> if there is no	prefix</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>Node.localName</code></td>
		 * 		<td>local name, extracted from <code>qualifiedName</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>Element.tagName</code></td>
		 * 		<td>qualifiedName</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @example
		 * This creates a new &lt;div&gt; element in the XHTML namespace and appends it to the vbox element. Although 
		 * this is not an extremely useful XUL document, it does demonstrate the use of elements from two different 
		 * namespaces within a single document:
		 * <listing>
		 * &lt;?xml version="1.0"?&gt;
		 * &lt;page xmlns="http://www.mozilla.org/keymaster/gatekeeper/there.is.only.xul"
		 * 		xmlns:html="http://www.w3.org/1999/xhtml"
		 * 		title="||Working with elements||"
		 * 		onload="init()"&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;&lt;![CDATA[
		 * var container;
		 * var newdiv;
		 * var txtnode;
		 * 
		 * function init(){
		 * 	container = document.getElementById("ContainerBox");
		 * 	newdiv = document.createElementNS("http://www.w3.org/1999/xhtml","html:div");
		 * 	txtnode = document.createTextNode("This is text that was constructed dynamically with createElementNS and createTextNode then inserted into the document using appendChild.");
		 * 	newdiv.appendChild(txtnode);
		 * 	container.appendChild(newdiv);
		 * }
		 * 
		 * ]]&gt;&lt;/script&gt;
		 * 
		 * 	&lt;vbox id='ContainerBox' flex='1'&gt;
		 * 		&lt;html:div&gt;
		 * 			The script on this page will add dynamic content below:
		 * 		&lt;/html:div&gt;
		 * 	&lt;/vbox&gt;
		 * &lt;/page&gt;</listing>
		 * 
		 * <p>The example given above uses inline script which is not recommended in XHTML documents. This particular 
		 * example is actually an XUL document with embedded XHTML, however, the recommendation still applies. Inline 
		 * script does not cause any problems for this short example, however, for any serious work you should learn 
		 * about Properly Using CSS and JavaScript in XHTML Documents. </p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.createElementNS MDC - Document.createElementNS()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-DocCrElNS W3C - Document.createElementNS()
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function createElementNS(namespaceURI:DOMString, qualifiedName:DOMString):Element { return null; };
		
		/**
		 * Creates an EntityReference object. In addition, if the referenced 
		 * entity is known, the child list of the EntityReference node is made 
		 * the same as that of the corresponding Entity node.
		 * 
		 * <p><strong>Note:</strong> If any descendant of the Entity node has an unbound namespace 
		 * prefix, the corresponding descendant of the created EntityReference 
		 * node is also unbound; (its namespaceURI is null). The DOM Level 2 and 
		 * 3 do not support any mechanism to resolve namespace prefixes in this case.</p>
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the 
		 * specified name is not an XML name according to the XML version in 
		 * use specified in the Document.xmlVersion attribute.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if this document 
		 * is an HTML document.
		 * 
		 * @param	name The name of the entity to reference.
		 * Unlike Document.createElementNS or Document.createAttributeNS, no 
		 * namespace well-formed checking is done on the entity name. Applications 
		 * should invoke Document.normalizeDocument() with the parameter "namespaces" 
		 * set to true in order to ensure that the entity name is namespace well-formed. 
		 * @return The new EntityReference object.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.createEntityReference MDC - Document.createEntityReference()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-392B75AE W3C - Document.createEntityReference()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function createEntityReference(name:DOMString):EntityReference { return null; };
		
		/**
		 * Generates an  event object to pass event context information when you use the  fireEvent method.
		 * 
		 * @param	existingEvent A object that specifies an existing event object on which to base the new object.
		 * @return Returns an event object.
		 * 
		 * @example
		 * The following sample shows how to use the createEventObject method with the fireEvent method.
		 * <listing>
		 * &lt;html&gt;
		 * &lt;body&gt;
		 * &lt;script&gt;
		 * 	function OuterClick() {
		 * 		if(event.expando == "from_inner") {
		 * 			alert("Event actually fired by clicking on inner DIV!")
		 * 		} else {
		 * 			alert("Event fired by clicking on outer DIV!")
		 * 		}
		 * 	}
		 * 	function InnerClick() {
		 * 		var eventObj = document.createEventObject();
		 * 		// Set an expando property on the event object. This will be used by the 
		 * 		// event handler to determine what element was clicked on.
		 * 		eventObj.expando = "from_inner";
		 * 		parent.document.all.Outer.fireEvent("onclick",eventObj);
		 * 		event.cancelBubble = true;
		 * 	}
		 * &lt;/script&gt;
		 * &lt;div id="Outer" onclick="OuterClick()" style="height:200;width:200;padding:50;background-color:mistyrose"&gt;
		 * 	&lt;div id="Inner" onclick="InnerClick()" style="height:100;width:100;padding:25;background-color:lavender"&gt;&lt;/div&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536390%28VS.85%29.aspx MSDN - createEventObject Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function createEventObject(existingEvent:Event = null):Event { return null; };
		
		/**
		 * Creates a ProcessingInstruction node given the specified name and 
		 * data strings.
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the specified
		 * target is not an XML name according to the XML version in use specified in 
		 * the Document.xmlVersion attribute.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if this document is 
		 * an HTML document.
		 * 
		 * @param	target The target part of the processing instruction.
		 * Unlike Document.createElementNS or Document.createAttributeNS, no namespace 
		 * well-formed checking is done on the target name. Applications should invoke 
		 * Document.normalizeDocument() with the parameter "namespaces" set to true in 
		 * order to ensure that the target name is namespace well-formed. 
		 * @param	data The data for the node.
		 * @return The new ProcessingInstruction object.
		 * 
		 * @example
		 * <listing>
		 * var docu = new DOMParser().parseFromString('&lt;xml&gt;&lt;/xml&gt;',  "application/xml");
		 * 
		 * var pi = docu.createProcessingInstruction('xml-stylesheet', 'href="mycss.css" type="text/css"');
		 * 
		 * docu.getElementsByTagName('xml')[0].appendChild(pi);
		 * 
		 * alert(new XMLSerializer().serializeToString(docu));
		 * // Displays: &lt;xml&gt;&lt;?xml-stylsheet href="mycss.css" type="text/css"?&gt;&lt;/xml&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.createProcessingInstruction MDC - Document.createProcessingInstruction()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-135944439 W3C - Document.createProcessingInstruction()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function createProcessingInstruction(target:DOMString, data:DOMString):ProcessingInstruction { return null; };
		
		/**
		 * Creates a style sheet for the document. 
		 * 
		 * <p><strong>Note (IE):</strong> You can create up to 31 styleSheet objects with the createStyleSheet method. After 
		 * that, the method returns an "Invalid Argument" exception. To create additional objects, use  createElement and 
		 * append them to the  HEAD of the document as follows: 
		 * 
		 * <listing>
		 * var styleSheet = document.createElement('STYLE');
		 * document.documentElement.firstChild.appendChild(styleSheet);</listing>
		 * </p>
		 * 
		 * @example
		 * This example uses the createStyleSheet method to create a link to a style sheet.
		 * <listing>document.createStyleSheet('styles.css');</listing>
		 * 
		 * @param	url Specifies how to add the style sheet to the document. If a file name is specified for the URL, the style information is added as a  link object. If the URL contains style information, it is added to the  style object.
		 * @param	index The index that indicates where the new style sheet is inserted in the  styleSheets collection. The default is to insert the new style sheet at the end of the collection.
		 * @return Returns a  styleSheet object. 
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms531194%28VS.85%29.aspx MSDN - createStyleSheet Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function createStyleSheet(url:DOMString = null, index:Number = NaN):StyleSheet { return null; };
		
		/**
		 * Creates a Text node given the specified string.
		 * 
		 * @param	data The data for the node.
		 * @return The new Text object.
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;createTextNode example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function addTextNode() {
		 * 	var newtext = document.createTextNode(" Some text added dynamically. ");
		 * 	var para = document.getElementById("p1");
		 * 	para.appendChild(newtext);
		 * }
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body&gt;
		 * &lt;div style="border: 1px solid red"&gt;
		 * &lt;p id="p1"&gt;First line of paragraph.&lt;br /&gt;&lt;/p&gt;
		 * &lt;/div&gt;&lt;br /&gt;
		 * 
		 * &lt;button onclick="addTextNode();"&gt;add another textNode.&lt;/button&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536400%28VS.85%29.aspx MSDN - createTextNode Method
		 * @see http://developer.mozilla.org/en/DOM/document.createTextNode MDC - Document.createTextNode()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1975348127 W3C - Document.createTextNode()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function createTextNode(data:DOMString):Text { return null; };
		
		/**
		 * Unbinds the specified function from the event, so that the function stops receiving notifications when the event fires.
		 * 
		 * <p><strong>Note (IE):</strong> Behaviors that attach to events using the attachEvent method must explicitly call 
		 * the detachEvent method to stop receiving notifications from the page when the  ondetach event fires. 
		 * Behaviors that attach to events using the  PUBLIC:ATTACH element automatically stop receiving notifications 
		 * when the behavior detaches from the element, and thus do not need to call the detachEvent method.</p>
		 * 
		 * @param	type Specifies any of the standard  DHTML Events.
		 * @param	listener Specifies the function previously set using the attachEvent method.
		 * 
		 * @example
		 * This example calls the detachEvent method from an HTML Component (HTC) when the highlighting effect is 
		 * removed from the page, causing the ondetach event to fire.
		 * <listing>
		 * &lt;PUBLIC:ATTACH EVENT="ondetach" ONEVENT="cleanup()" /&gt;
		 * 
		 * &lt;script language="JScript"&gt;
		 * attachEvent ('onmouseover', Hilite);
		 * attachEvent ('onmouseout', Restore);
		 * 
		 * function cleanup() {
		 * 	detachEvent ('onmouseover', Hilite);
		 * 	detachEvent ('onmouseout', Restore);
		 * }
		 * 
		 * function Hilite() {
		 * 	if (event.srcElement == element) { 
		 * 		normalColor = style.color;  
		 * 		runtimeStyle.color  = "red";
		 * 		runtimeStyle.cursor = "hand";
		 * 	}
		 * }
		 * 
		 * function Restore() {
		 * 	if (event.srcElement == element) {
		 * 		runtimeStyle.color  = normalColor;
		 * 		runtimeStyle.cursor = "";
		 * 	}
		 * }
		 * &lt;/script&gt;</listing>
		 * 
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536411%28VS.85%29.aspx MSDN - detachEvent Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function detachEvent(type:DOMString, listener:Function):void { };
		
		// START cssom.view.DocumentView //
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 	&lt;head&gt;
		 * 		&lt;title&gt;elementFromPoint example&lt;/title&gt;
		 * 		&lt;script type="text/javascript"&gt;
		 * 			function changeColor(newColor) {
		 * 				elem = document.elementFromPoint(2, 2);
		 * 				elem.style.color = newColor;
		 * 			}
		 * 		&lt;/script&gt;
		 * 	&lt;/head&gt;
		 * 
		 * 	&lt;body&gt;
		 * 		&lt;p id="para1"&gt;Some text here&lt;/p&gt;
		 * 		&lt;button onclick="changeColor('blue');"&gt;blue&lt;/button&gt;
		 * 		&lt;button onclick="changeColor('red');"&gt;red&lt;/button&gt;
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;
		 * </listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536417(VS.85).aspx  MSDN: elementFromPoint Method
		 * @see http://developer.mozilla.org/en/DOM/document.elementFromPoint  MDC - Document: elementFromPoint Method
		 * @see http://www.w3.org/TR/cssom-view/#the-documentview-interface  W3C - CSSOM View: elementFromPoint Method
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#documentview  Quirksmode: DocumentView and ElementView methods
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * @modified DOMCore 3
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0_alternative
		 * @productversion Safari 3.1_alternative
		 * @productversion Safari 4.0b_alternative
		 * @productversion Chrome 1.0_alternative
		 * @productversion Chrome 2.0_alternative
		 * @productversion Opera 9.62_incorrect
		 * @productversion Opera 10.0a_alternative
		 */
		public function elementFromPoint(x:Number, y:Number):Element { return null; };
		
		// END cssom.view.DocumentView //
		
		/**
		 * Returns the Element that has an ID attribute with the given value. 
		 * If no such element exists, this returns null. If more than one 
		 * element has an ID attribute with that value, what is returned is undefined.
		 * 
		 * <p><strong>Note:</strong> Attributes with the name "ID" or "id" are not of type ID 
		 * unless so defined.</p>
		 * 
		 * <p><strong>Note:</strong> Simply creating an element and assigning an ID will not make 
		 * the element accessible by getElementById. Instead one needs to insert the element first 
		 * into the document tree with insertBefore or a similar method, probably into a hidden div. 
		 * 
		 * <listing>var element = document.createElement("div");
		 * element.id = 'testqq';
		 * var el = document.getElementById('testqq'); // el will be null!</listing>
		 * 
		 * New users should note that the capitalization of 'Id' must be correct for the code to function 
		 * - 'getElementByID' does not work, however natural it may seem. 
		 * </p>
		 * 
		 * <p><strong>Note (IE):</strong> In IE8 mode, getElementById performs a case-sensitive match on the 
		 * ID attribute only. In IE7 mode and previous modes, this method performs a case-insensitive match 
		 * on both the ID and NAME attributes, which might produce unexpected results.</p>
		 * 
		 * @param	elementId The unique id value for an element.
		 * @return The matching element or null if there is none.
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;getElementById example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * function changeColor(newColor) {
		 * 	elem = document.getElementById("para1");
		 * 	elem.style.color = newColor;
		 * }
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body&gt;
		 * &lt;p id="para1"&gt;Some text here&lt;/p&gt;
		 * &lt;button onclick="changeColor('blue');"&gt;blue&lt;/button&gt;
		 * &lt;button onclick="changeColor('red');"&gt;red&lt;/button&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536437%28VS.85%29.aspx MSDN - getElementById Method
		 * @see http://developer.mozilla.org/en/DOM/document.getElementById MDC - Document.getElemenyById()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-getElBId W3C - Document.getElemenyById()
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 * @modified DOMCore 2
		 */
		public function getElemenyById(elementId:DOMString):Element { return null; };
		
		/**
		 * Returns a NodeList of all the Elements in document order with a 
		 * given tag name and are contained in the document.
		 * 
		 * @param	tagname The name of the tag to match on. The special 
		 * value "~~" matches all tags. For XML, the tagname  parameter is 
		 * case-sensitive, otherwise it depends on the case-sensitivity of 
		 * the markup language in use. 
		 * @return A new NodeList object containing all the matched Elements.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536439%28VS.85%29.aspx MSDN - getElementsByTagName Method
		 * @see http://developer.mozilla.org/en/DOM/document.getElementsByTagName MDC - Document.getElementsByTagName()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-A6C9094 W3C - Document.getElementsByTagName()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function getElementsByTagName(tagname:DOMString):NodeList { return null; };
		
		/**
		 * Returns a NodeList of all the Elements with a given local name and 
		 * namespace URI in document order.
		 * 
		 * @param	namespaceURI The namespace URI of the elements to match on. 
		 * The special value "~~" matches all namespaces.
		 * @param	localName The local name of the elements to match on. The 
		 * special value "~~" matches all local names.
		 * @return A new NodeList object containing all the matched Elements.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.getElementsByTagNameNS MDC - Document.getElementsByTagNameNS()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-getElBTNNS W3C - Document.getElementsByTagNameNS()
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function getElementsByTagNameNS(namespaceURI:DOMString, localName:DOMString):NodeList { return null; };
		
		/**
		 * Imports a node from another document to this document, without altering or removing the source 
		 * node from the original document; this method creates a new copy of the source node. The returned 
		 * node has no parent; (parentNode is null).
		 * 
		 * <p>For all nodes, importing a node creates a node object owned by the importing document, with attribute 
		 * values identical to the source node's nodeName and nodeType, plus the attributes related to 
		 * namespaces (prefix, localName, and namespaceURI). As in the cloneNode operation, the source node is 
		 * not altered. User data associated to the imported node is not carried over. However, if any 
		 * UserDataHandlers has been specified along with the associated data these handlers will be called with 
		 * the appropriate parameters before this method returns.</p>
		 * 
		 * <p>Additional information is copied as appropriate to the nodeType, attempting to mirror the behavior 
		 * expected if a fragment of XML or HTML source was copied from one document to another, recognizing that 
		 * the two documents may have different DTDs in the XML case. The following list describes the specifics
		 * for each type of node.</p>
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Node Type</th><th>Description</th></tr>
		 * 	<tr>
		 * 		<td>ATTRIBUTE_NODE</td>
		 * 		<td>The ownerElement attribute is set to null and the specified flag is set to true on the generated 
		 * Attr. The descendants of the source Attr are recursively imported and the resulting nodes reassembled to 
		 * form the corresponding subtree. Note that the deep parameter has no effect on Attr nodes; they always 
		 * carry their children with them when imported.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>DOCUMENT_FRAGMENT_NODE</td>
		 * 		<td>If the deep option was set to true, the descendants of the source DocumentFragment are recursively imported and the resulting nodes reassembled under the imported DocumentFragment to form the corresponding subtree. Otherwise, this simply generates an empty DocumentFragment.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>DOCUMENT_NODE</td>
		 * 		<td>Document nodes cannot be imported.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>DOCUMENT_TYPE_NODE</td>
		 * 		<td>DocumentType nodes cannot be imported.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>ELEMENT_NODE</td>
		 * 		<td>Specified attribute nodes of the source element are imported, and the generated Attr nodes are attached to the generated Element. Default attributes are not copied, though if the document being imported into defines default attributes for this element name, those are assigned. If the importNode  deep parameter was set to true, the descendants of the source element are recursively imported and the resulting nodes reassembled to form the corresponding subtree.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>ENTITY_NODE</td>
		 * 		<td>Entity nodes can be imported, however in the current release of the DOM the DocumentType is readonly. Ability to add these imported nodes to a DocumentType will be considered for addition to a future release of the DOM. On import, the publicId, systemId, and notationName attributes are copied. If a deep import is requested, the descendants of the the source Entity are recursively imported and the resulting nodes reassembled to form the corresponding subtree.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>ENTITY_REFERENCE_NODE</td>
		 * 		<td>Only the EntityReference itself is copied, even if a deep import is requested, since the source and destination documents might have defined the entity differently. If the document being imported into provides a definition for this entity name, its value is assigned.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>NOTATION_NODE</td>
		 * 		<td>Notation nodes can be imported, however in the current release of the DOM the DocumentType is readonly. Ability to add these imported nodes to a DocumentType will be considered for addition to a future release of the DOM. On import, the publicId and systemId attributes are copied. Note that the deep parameter has no effect on this type of nodes since they cannot have any children.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>PROCESSING_INSTRUCTION_NODE</td>
		 * 		<td>The imported node copies its target and data values from those of the source node. Note that the deep parameter has no effect on this type of nodes since they cannot have any children.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>TEXT_NODE, CDATA_SECTION_NODE, COMMENT_NODE</td>
		 * 		<td>These three types of nodes inheriting from CharacterData copy their data and length attributes from those of the source node. Note that the deep parameter has no effect on these types of nodes since they cannot have any children.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * <p><strong>Note:</strong> The original node is not removed from the original document. The imported node is a clone of the original.</p>
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised if the type of node being imported is not supported.
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if one of the imported names is not an XML name 
		 * according to the XML version in use specified in the Document.xmlVersion attribute. This may happen when 
		 * importing an XML 1.1 element into an XML 1.0 document, for instance.
		 * 
		 * @param	importedNode The node to import.
		 * @param	deep If true, recursively import the subtree under the specified node; if false, import only 
		 * the node itself, as explained above. This has no effect on nodes that cannot have any children, and on 
		 * Attr, and EntityReference nodes.
		 * @return The imported node that belongs to this Document.
		 * 
		 * @example
		 * <listing>
		 * var iframe = document.getElementsByTagName("iframe")[0];
		 * var oldNode = iframe.contentDocument.getElementById("myNode");
		 * var newNode = document.importNode(oldNode,true);
		 * document.getElementById("container").appendChild(newNode);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.importNode MDC - Document.importNode()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Core-Document-importNode W3C - Document.importNode()
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function importNode(importedNode:Node, deep:Boolean):Node { return null; };
		
		/**
		 * This method acts as if the document was going through a save and load 
		 * cycle, putting the document in a "normal" form. As a consequence, this 
		 * method updates the replacement tree of EntityReference nodes and 
		 * normalizes Text nodes, as defined in the method Node.normalize().
		 * Otherwise, the actual result depends on the features being set on the 
		 * Document.domConfig object and governing what operations actually take 
		 * place. Noticeably this method could also make the document namespace 
		 * well-formed according to the algorithm described in Namespace Normalization, 
		 * check the character normalization, remove the CDATASection nodes, etc. See 
		 * DOMConfiguration for details.
		 * 
		 * <listing>
		 * // Keep in the document the information defined
		 * // in the XML Information Set (Java example)
		 * DOMConfiguration docConfig = myDocument.getDomConfig();
		 * docConfig.setParameter("infoset", Boolean.TRUE);
		 * myDocument.normalizeDocument();</listing>
		 * 
		 * <p>Mutation events, when supported, are generated to reflect the changes 
		 * occurring on the document.
		 * If errors occur during the invocation of this method, such as an attempt 
		 * to update a read-only node or a Node.nodeName contains an invalid 
		 * character according to the XML version in use, errors or warnings 
		 * (DOMError.SEVERITY_ERROR or DOMError.SEVERITY_WARNING) will be reported 
		 * using the DOMErrorHandler object associated with the "error-handler" parameter. 
		 * Note this method might also report fatal errors (DOMError.SEVERITY_FATAL_ERROR) 
		 * if an implementation cannot recover from an error.</p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document MDC - Document.normalizeDocument()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Document3-normalizeDocument W3C - Document.normalizeDocument()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function normalizeDocument():void { };
		
		/**
		 * Rename an existing node of type ELEMENT_NODE or ATTRIBUTE_NODE.
		 * When possible this simply changes the name of the given node, 
		 * otherwise this creates a new node with the specified name and 
		 * replaces the existing node with the new node as described below.
		 * If simply changing the name of the given node is not possible, the 
		 * following operations are performed: a new node is created, any 
		 * registered event listener is registered on the new node, any user 
		 * data attached to the old node is removed from that node, the old 
		 * node is removed from its parent if it has one, the children are moved 
		 * to the new node, if the renamed node is an Element its attributes are 
		 * moved to the new node, the new node is inserted at the position the 
		 * old node used to have in its parent's child nodes list if it has one, 
		 * the user data that was attached to the old node is attached to the 
		 * new node.
		 * 
		 * <p>When the node being renamed is an Element only the specified attributes 
		 * are moved, default attributes originated from the DTD are updated 
		 * according to the new element name. In addition, the implementation 
		 * may update default attributes from other schemas. Applications should 
		 * use Document.normalizeDocument() to guarantee these attributes are 
		 * up-to-date.</p>
		 * 
		 * <p>When the node being renamed is an Attr that is attached to an Element, 
		 * the node is first removed from the Element attributes map. Then, once 
		 * renamed, either by modifying the existing node or creating a new one as 
		 * described above, it is put back. In addition,
		 * <ul>
		 * <li>a user data event NODE_RENAMED is fired,</li>
		 * <li>when the implementation supports the feature "MutationNameEvents", 
		 * each mutation operation involved in this method fires the appropriate 
		 * event, and in the end the event {http://www.w3.org/2001/xml-events, 
		 * DOMElementNameChanged} or {http://www.w3.org/2001/xml-events, 
		 * DOMAttributeNameChanged} is fired.</li>
		 * </ul></p>
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: Raised when the type of 
		 * the specified node is neither ELEMENT_NODE nor ATTRIBUTE_NODE, or if the 
		 * implementation does not support the renaming of the document element.
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the new 
		 * qualified name is not an XML name according to the XML version in use 
		 * specified in the Document.xmlVersion attribute.
		 * 
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised when the specified 
		 * node was created from a different document than this document.
		 * 
		 * @throws dom.core.DOMException NAMESPACE_ERR: Raised if the qualifiedName is 
		 * a malformed qualified name, if the qualifiedName has a prefix and the 
		 * namespaceURI is null, or if the qualifiedName has a prefix that is "xml" 
		 * and the namespaceURI is different from "http://www.w3.org/XML/1998/namespace" 
		 * XML Namespaces. Also raised, when the node being renamed is an attribute, 
		 * if the qualifiedName, or its prefix, is "xmlns" and the namespaceURI is 
		 * different from "http://www.w3.org/2000/xmlns/".
		 * 
		 * @param	n The node to rename.
		 * @param	namespaceURI The new namespace URI.
		 * @param	qualifiedName The new qualified name.
		 * @return The renamed node. This is either the specified node or the new 
		 * node that was created to replace the specified node.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.renameNode MDC - Document.renameNode()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Document3-renameNode W3C - Document.renameNode()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function renameNode(n:Node, namespaceURI:DOMString, qualifiedName:DOMString):Node { return null; };
		
		/**
		 * Allows updating the print settings for the page.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc848923%28VS.85%29.aspx MSDN - updateSettings Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0b_unknown
		 */
		public function updateSettings():void { };
		
		/* INTERFACE dom.tr.range.DocumentRange */
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * var range = document.createRange();
		 * range.setStart(startNode, startOffset);
		 * range.setEnd(endNode, endOffset);</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536394%28VS.85%29.aspx  MSDN: createRange Method
		 * @see http://developer.mozilla.org/en/DOM/document.createRange  MDC - Document: createRange Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#Level-2-DocumentRange-idl W3C - DOM Level 2 Range: DocumentRange
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public function createRange():Range { return null; };
		
		/* INTERFACE dom.events.DocumentEvent */
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-DocumentEvent-canDispatch W3C - DOM 3 Events: DocumentEvent.canDispatch()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function canDispatch(namespaceURI:DOMString, type:DOMString):Boolean { return false; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-DocumentEvent-createEvent W3C - DOM 3 Events: DocumentEvent.createEvent()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function createEvent(eventType:DOMString):dom.events.Event { return null; };
		
		/* INTERFACE dom.style.css.DocumentCSS */
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-DocumentCSS-getOverrideStyle W3C - DOM Level 2 Style: DocumentCSS.getOverrideStyle()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function getOverrideStyle(elt:Element, pseudoElt:DOMString):CSSStyleDeclaration { return null; };
		
		/* INTERFACE dom.tr.traversal.DocumentTraversal */
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * var nodeIterator = document.createNodeIterator(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * var nodeList = new Array();
		 * var currentNode;
		 * 
		 * while (currentNode = nodeIterator.nextNode()) {
		 * 	nodeList.push(currentNode);
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Document.createNodeIterator  MDC - Document: createNodeIterator Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-Document  W3C - DOM Level 2 Traversal: createNodeIterator Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function createNodeIterator(root:Node, whatToShow:Number, filter:NodeFilter, entityReferenceExpansion:Boolean):NodeIterator { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * var treeWalker = document.createTreeWalker(
		 * 	document.body,
		 * 	NodeFilter.SHOW_ELEMENT,
		 * 	{ acceptNode: function(node) { return NodeFilter.FILTER_ACCEPT; } },
		 * 	false
		 * 	);
		 * var nodeList = new Array();
		 * while(treeWalker.nextNode()) nodeList.push(treeWalker.currentNode);</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Document.createNodeIterator  MDC - Document: createNodeIterator Method
		 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/traversal.html#Traversal-Document  W3C - DOM Level 2 Traversal: createNodeIterator Method
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function createTreeWalker(root:Node, whatToShow:Number, filter:NodeFilter, entityReferenceExpansion:Boolean):TreeWalker { return null; };
		
		/* INTERFACE selectors.NodeSelector */
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;html xmlns="http://www.w3.org/1999/xhtml"&gt;
		 * 	&lt;head&gt;
		 * 		&lt;title&gt;Selectors API Example&lt;/title&gt;
		 * 	&lt;/head&gt;
		 * 	&lt;body&gt;
		 * 
		 * 		&lt;div id="foo"&gt;
		 * 			&lt;p class="warning"&gt;This is a sample warning&lt;/p&gt;
		 * 			&lt;p class="error"&gt;This is a sample error&lt;/p&gt;
		 * 		&lt;/div&gt;
		 * 		&lt;div id="bar"&gt;
		 * 			&lt;p&gt;...&lt;/p&gt;
		 * 		&lt;/div&gt;
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * x would contain the first element in the document with an ID of either foo or bar (or both). In the sample document above, it would select the div element with the ID of foo because it is first in document order.
		 * <listing>var x = document.querySelector("#foo, #bar");</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc288169%28VS.85%29.aspx MSDN - querySelector Method
		 * @see http://developer.mozilla.org/En/DOM/Document.querySelector MDC - Document.querySelector()
		 * @see http://www.w3.org/TR/selectors-api/#nodeselector W3C - NodeSelector.querySelector()
		 * 
		 * @playerversion Selectors 0
		 * @since DOMCore 3
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0b_unknown
		 */
		public function querySelector(selectors:DOMString):Element { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;html xmlns="http://www.w3.org/1999/xhtml"&gt;
		 * 	&lt;head&gt;
		 * 		&lt;title&gt;Selectors API Example&lt;/title&gt;
		 * 	&lt;/head&gt;
		 * 	&lt;body&gt;
		 * 
		 * 		&lt;div id="foo"&gt;
		 * 			&lt;p class="warning"&gt;This is a sample warning&lt;/p&gt;
		 * 			&lt;p class="error"&gt;This is a sample error&lt;/p&gt;
		 * 		&lt;/div&gt;
		 * 		&lt;div id="bar"&gt;
		 * 			&lt;p&gt;...&lt;/p&gt;
		 * 		&lt;/div&gt;
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * The following example would select all p elements in the document that have a class of either "error" or "warning".
		 * <listing>var alerts = document.querySelectorAll("p.warning, p.error");</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc304115%28VS.85%29.aspx MSDN - querySelectorAll Method
		 * @see http://developer.mozilla.org/En/DOM/Document.querySelectorAll MDC - Document.querySelectorAll()
		 * @see http://www.w3.org/TR/selectors-api/#nodeselector W3C - NodeSelector.querySelectorAll()
		 * @see http://www.quirksmode.org/dom/w3c_core.html#gettingelements  Quirksmode: Getting elements
		 * 
		 * @playerversion Selectors 0
		 * @since DOMCore 3
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b
		 */
		public function querySelectorAll(selectors:DOMString):NodeList { return null; };
		
		/* INTERFACE dom.loadsave.DOMImplementationLS */
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementationLS-createLSParser W3C - DOMImplementationLS.createLSParser()
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function createLSParser(mode:Number, schemaType:DOMString):LSParser { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementationLS-createLSSerializer W3C - DOMImplementationLS.createLSSerializer()
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function createLSSerializer():LSSerializer { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementationLS-createLSInput W3C - DOMImplementationLS.createLSInput()
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function createLSInput():LSInput { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-DOMImplementationLS-createLSOutput W3C - DOMImplementationLS.createLSOutput()
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function createLSOutput():LSOutput { return null; };
		
		/* INTERFACE dom.loadsave.DocumentLS */
		
		/**
		 * @inheritDoc
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
		public function get async():Boolean { return false; };
		public function set async(value:Boolean):void { };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/2002/WD-DOM-Level-3-ASLS-20020409/load-save.html#LS-DocumentLS-abort W3C - DocumentLS.abort()
		 * 
		 * @playerversion DOMLS 3
		 * @playerversion Obsolete 0
		 */
		public function abort():void { };
		
		/**
		 * @inheritDoc
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
		public function load(uri:DOMString):Boolean { return false; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/2002/WD-DOM-Level-3-ASLS-20020409/load-save.html#LS-DocumentLS-loadXML W3C - DocumentLS.loadXML()
		 * 
		 * @playerversion DOMLS 3
		 * @playerversion Obsolete 0
		 */
		public function loadXML(source:DOMString):Boolean { return false; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/2002/WD-DOM-Level-3-ASLS-20020409/load-save.html#LS-DocumentLS-saveXML W3C - DocumentLS.saveXML()
		 * 
		 * @playerversion DOMLS 3
		 * @playerversion Obsolete 0
		 */
		public function saveXML(snode:Node):DOMString { return null; };
		
		/* INTERFACE dom.style.stylesheets.DocumentStyle */
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms531200%28VS.85%29.aspx MSDN: styleSheets Property
		 * @see http://developer.mozilla.org/en/DOM/document.styleSheets  MDC - Document.styleSheets
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheet-DocumentStyle W3C - DOM Level 2 Style: DocumentStyle..styleSheets
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-stylesheets W3C - CSSOM: DocumentStyle.styleSheets
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access  Quirksmode: Accessing style sheets
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		public function get styleSheets():StyleSheetList { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.selectedStyleSheetSet MDC - Document.selectedStyleSheetSet
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-selectedStyleSheetSet W3C - DocumentStyle.selectedStyleSheetSet
		 * 
		 * @playerversion CSSOM 0
		 * @since CSSOM 0
		 */
		public function get selectedStyleSheetSet():DOMString { return null; };
		public function set selectedStyleSheetSet(value:DOMString):void { };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.lastStyleSheetSet MDC - Document.lastStyleSheetSet
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-lastStyleSheetSet W3C - DocumentStyle.lastStyleSheetSet
		 * 
		 * @playerversion CSSOM 0
		 * @since CSSOM 0
		 */
		public function get lastStyleSheetSet():DOMString { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.preferredStyleSheetSet MDC - Document.preferredStyleSheetSet
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-preferredStyleSheetSet W3C - DocumentStyle.preferredStyleSheetSet
		 * 
		 * @playerversion CSSOM 0
		 * @since CSSOM 0
		 */
		public function get preferredStyleSheetSet():DOMString { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see htts://developer.mozilla.org/En/DOM/document.styleSheetSets MDC - Document.styleSheetSets
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-styleSheetSets W3C - DocumentStyle.styleSheetSets
		 * 
		 * @playerversion CSSOM 0
		 * @since CSSOM 0
		 */
		public function get styleSheetSets():DOMStringList { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.enableStyleSheetsForSet MDC - Document.enableStylesheetsForSet()
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-enablestylesheetsforset W3C - DocumentStyle.enableStylesheetsForSet()
		 * 
		 * @playerversion CSSOM 0
		 * @since CSSOM 0
		 */
		public function enableStylesheetsForSet(name:DOMString):void { };
	}
}