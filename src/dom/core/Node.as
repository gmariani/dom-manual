package dom.core {
	
	import dom.events.Event;
	import dom.events.EventListener;
	import dom.events.EventTarget;
	import dom.core.NamedNodeMap;
	import dom.core.NodeList;
	import dom.core.Document;
	import dom.core.types.DOMString;
	import dom.core.types.DOMObject;
	import dom.core.types.DOMUserData;
	import gecko.nsIPrincipal;
	
	/**
	 * A Node is an interface from which a number of DOM types inherit, and 
	 * allows these various types to be treated (or tested) similarly. The 
	 * following all inherit this interface and its methods and properties 
	 * (though they may return null in particular cases where not relevant 
	 * (or throw an exception when adding children to a node type for which 
	 * no children can exist)): Document, Element, Attr, CharacterData (which 
	 * Text, Comment, and CDATASection inherit), ProcessingInstruction, 
	 * DocumentFragment, DocumentType, Notation, Entity, EntityReference
	 * 
	 * @see http://developer.mozilla.org/En/DOM/Node MDC - Node
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1950641247 W3C - Node
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 * @modified DOMCore 3
	 */
	public class Node implements EventTarget {
		// NodeType
		// Note: Numeric codes up to 200 are reserved to W3C for possible future use.
		
		/**
		 * The node is an Element.
		 * 
		 * <p>The node represents an element. An element node can have the following child node types: Element, 
		 * Text, Comment, ProcessingInstruction, CDATASection, and EntityReference. An element node can be the 
		 * child of the Document, DocumentFragment, EntityReference, and Element nodes. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-ELEMENT_NODE W3C - Node.ELEMENT_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const ELEMENT_NODE:Number = 1;
		
		/**
		 * The node is an Attr.
		 * 
		 * <p>The node represents an attribute of an element. An attribute node can have the following child node 
		 * types: Text and EntityReference. An attribute does not appear as the child node of any other node type; 
		 * note that it is not considered a child node of an element. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-ATTRIBUTE_NODE W3C - Node.ATTRIBUTE_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const ATTRIBUTE_NODE:Number = 2;
		
		/**
		 * The node is a Text node.
		 * 
		 * <p>The node represents the text content of a tag. A text node cannot have any child nodes. A text node can appear as 
		 * the child node of the Attribute, DocumentFragment, Element, and EntityReference nodes. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-TEXT_NODE W3C - Node.TEXT_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const TEXT_NODE:Number = 3;
		
		/**
		 * The node is a CDATASection.
		 * 
		 * <p>The node represents a CDATA section in the XML source. CDATA sections are used to escape blocks of text that 
		 * would otherwise be recognized as markup. A CDATA section node cannot have any child nodes. A CDATA section node 
		 * can appear as the child of the DocumentFragment, EntityReference, and Element nodes.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-CDATA_SECTION_NODE W3C - Node.CDATA_SECTION_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const CDATA_SECTION_NODE:Number = 4;
		
		/**
		 * The node is an EntityReference.
		 * 
		 * <p>The node represents a reference to an entity in the XML document. This applies to all entities, including 
		 * character entity references. An entity reference node can have the following child node types: Element, 
		 * ProcessingInstruction, Comment, Text, CDATASection, and EntityReference. An entity reference node can appear 
		 * as the child of the Attribute, DocumentFragment, Element, and EntityReference nodes.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-ENTITY_REFERENCE_NODE W3C - Node.ENTITY_REFERENCE_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const ENTITY_REFERENCE_NODE:Number = 5;
		
		/**
		 * The node is an Entity.
		 * 
		 * <p>The node represents an expanded entity. An entity node can have child nodes that represent the expanded entity
		 * (for example, Text and EntityReference nodes). An entity node can appear as the child of the DocumentType node. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-ENTITY_NODE W3C - Node.ENTITY_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const ENTITY_NODE:Number = 6;
		
		/**
		 * The node is a ProcessingInstruction.
		 * 
		 * <p>The node represents a processing instruction from the XML document. A processing instruction node cannot have any
		 * child nodes. A processing instruction node can appear as the child of the Document, DocumentFragment, Element, and EntityReference nodes. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-PROCESSING_INSTRUCTION_NODE W3C - Node.PROCESSING_INSTRUCTION_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const PROCESSING_INSTRUCTION_NODE:Number = 7;
		
		/**
		 * The node is a Comment.
		 * 
		 * <p>The node represents a comment in the XML document. A comment node cannot have any child nodes. A comment node can 
		 * appear as the child of Document, DocumentFragment, Element, and EntityReference nodes. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-COMMENT_NODE W3C - Node.COMMENT_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const COMMENT_NODE:Number = 8;
		
		/**
		 * The node is a Document.
		 * 
		 * <p>The node represents a document object, which, as the root of the document tree, 
		 * provides access to the entire XML document. It is created using the progID 
		 * "Msxml2.DOMDocument", or through a data island using &lt;XML&gt; or &lt;SCRIPT LANGUAGE=XML&gt;. A document node can 
		 * have the following child node types: Element (maximum of one), ProcessingInstruction, 
		 * Comment, and DocumentType. A document node cannot appear as the child of any node types.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-DOCUMENT_NODE W3C - Node.DOCUMENT_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const DOCUMENT_NODE:Number = 9;
		
		/**
		 * The node is a DocumentType.
		 * 
		 * <p>The node represents the document type declaration, indicated by the &lt;!DOCTYPE &gt; tag. A document type 
		 * node can have the following child node types: Notation and Entity. A document type node can appear as the child 
		 * of the Document node. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-DOCUMENT_TYPE_NODE W3C - Node.DOCUMENT_TYPE_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const DOCUMENT_TYPE_NODE:Number = 10;
		
		/**
		 * The node is a DocumentFragment.
		 * 
		 * <p>The node represents a document fragment. A document fragment node associates a node or subtree with a document 
		 * without actually being contained within the document. A document fragment node can have the following child node 
		 * types: Element, ProcessingInstruction, Comment, Text, CDATASection, and EntityReference. A DocumentFragment node 
		 * cannot appear as the child of any node types. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-DOCUMENT_FRAGMENT_NODE W3C - Node.DOCUMENT_FRAGMENT_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const DOCUMENT_FRAGMENT_NODE:Number = 11;
		
		/**
		 * The node is a Notation.
		 * 
		 * <p>A node represents a notation in the document type declaration. A notation node cannot have any child nodes. A notation 
		 * node can appear as the child of the DocumentType node. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-NOTATION_NODE W3C - Node.NOTATION_NODE
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public static const NOTATION_NODE:Number = 12;
		
		// DocumentPosition
		
		/**
		 * The two nodes are disconnected. Order between disconnected nodes is always implementation-specific.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-DOCUMENT_POSITION_DISCONNECTED W3C - Node.DOCUMENT_POSITION_DISCONNECTED
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const DOCUMENT_POSITION_DISCONNECTED:Number = 1;
		
		/**
		 * The second node precedes the reference node.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-DOCUMENT_POSITION_PRECEDING W3C - Node.DOCUMENT_POSITION_PRECEDING
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const DOCUMENT_POSITION_PRECEDING:Number = 2;
		
		/**
		 * The node follows the reference node.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-DOCUMENT_POSITION_FOLLOWING W3C - Node.DOCUMENT_POSITION_FOLLOWING
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const DOCUMENT_POSITION_FOLLOWING:Number = 4;
		
		/**
		 * The node contains the reference node. A node which contains is always preceding, too.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-DOCUMENT_POSITION_CONTAINS W3C - Node.DOCUMENT_POSITION_CONTAINS
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const DOCUMENT_POSITION_CONTAINS:Number = 8;
		
		/**
		 * The node is contained by the reference node. A node which is contained is always following, too.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-DOCUMENT_POSITION_CONTAINED_BY W3C - Node.DOCUMENT_POSITION_CONTAINED_BY
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const DOCUMENT_POSITION_CONTAINED_BY:Number = 16;
		
		/**
		 * The determination of preceding versus following is implementation-specific.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node#Constants MDC - Node Constants
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node-DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC W3C - Node.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:Number = 32;
		
		/**
		 * Returns an unordered collection of Attr nodes. 
		 * If the element has no specified attributes, then the returned object 
		 * has a length of 0 (zero).
		 * 
		 * <p><strong>Note:</strong> Trying to modify an Attribute Node that originated 
		 * from an inline event assignment (e.g. onclick=) is something developers should 
		 * avoid. If you want to use it, be aware that assigning values through the 
		 * element.attributeName syntax will assign the JavaScript value for the element. 
		 * When read through the same syntax, it will return the latest JavaScript value 
		 * for the element attribute, or if it hasn't been assigned yet, the function 
		 * generated by parsing the element's inline event assignment.</p>
		 * 
		 * <p><strong>Note:</strong> Style isn't a "true" HTML attribute node, but a 
		 * CCSStyleDeclaration. You can however use the above .attributes syntaxes and 
		 * DOM functions to control its value, as well as the element.style.cssText 
		 * syntax that returns all CSS attributes, or element.style.CSSattributeName (eg 
		 * element.style.position) to control a single CSS attribute. In FireFox, all 
		 * the above correctly update the CCSStyleDeclaration object, the element's 
		 * attribute nodes and the .attributes collection. Consider quirksmode for 
		 * compatibility issues in other browsers (see link below)</p>
		 * 
		 * @example
		 * Numerical indexing is useful for going through all of an element's attributes. The following 
		 * example runs through the attribute nodes for the element in the document with id "p1", and 
		 * prints each attribute's value.
		 * <listing>
		 * &lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
		 * "http://www.w3.org/TR/html4/strict.dtd"&gt;
		 * 
		 * &lt;html&gt;
		 * 
		 * 	&lt;head&gt;
		 * 		&lt;title&gt;Attributes example&lt;/title&gt;
		 * 		&lt;script type="text/javascript"&gt;
		 * 
		 * 			function showFirstAttr() {
		 * 				var firstPara = document.getElementById("p1");
		 * 				var outputText = document.getElementById("result");
		 * 
		 * 				// First, let's verify that the paragraph has some attributes    
		 * 				if (firstPara.hasAttributes()) {
		 * 					var attrs = firstPara.attributes;
		 * 					var text = ""; 
		 * 					for(var i=attrs.length-1; i&gt;=0; i--) {
		 * 						text += attrs[i].name + "-&gt;" + attrs[i].value;
		 * 					}
		 * 					outputText.value = text;
		 * 				} else {
		 * 					outputText.value = "No attributes to show"
		 * 				};
		 * 			}
		 * 		&lt;/script&gt;
		 * 	&lt;/head&gt;
		 * 
		 * 	&lt;body&gt;
		 * 		&lt;p id="p1" style="color: green;"&gt;Sample Paragraph&lt;/p&gt;
		 * 
		 * 		&lt;form action=""&gt;
		 * 			&lt;p&gt;&lt;input type="button" value="Show first attribute name and value"
		 * 				onclick="showFirstAttr();"&gt;
		 * 			&lt;input id="result" type="text" value=""&gt;&lt;/p&gt;
		 * 		&lt;/form&gt;
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa922712.aspx MSDN - attributes Property 
		 * @see http://developer.mozilla.org/En/DOM/Node.attributes MDC - Node.attributes
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-84CF096 W3C - Node.attributes
		 * @see http://www.quirksmode.org/dom/w3c_core.html#attributes Quirksmode - Attributes
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get attributes():NamedNodeMap { return null; };
		
		/**
		 * Returns the base name for the name qualified with the namespace.
		 * 
		 * <p>It returns the right-hand side of a namespace qualified name. 
		 * For example, it returns yyy for the element &lt;xxx:yyy&gt;. It always 
		 * returns a non-empty string.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa924236.aspx MSDN - baseName Property 
		 * @see #localName
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get baseName():DOMString { return null; };
		
		/**
		 * The absolute base URI of this node or null if the implementation 
		 * wasn't able to obtain an absolute URI. This value is computed as 
		 * described in Base URIs. However, when the Document supports the 
		 * feature "HTML" [DOM Level 2 HTML], the base URI is computed using 
		 * first the value of the href attribute of the HTML BASE element if 
		 * any, and the value of the documentURI  attribute from the Document 
		 * interface otherwise.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.baseURI MDC - Node.baseURI
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node3-baseURI W3C - Node.baseURI
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get baseURI():DOMString { return null; };
		
		/**
		 * Returns an ordered collection of node objects that are children of 
		 * the current element. If the element has no children, then the returned 
		 * NodeList contains no node. 
		 * 
		 * <p><strong>Note:</strong> The items in the collection of nodes are objects 
		 * and not strings. To get data from those node objects, you must use their 
		 * properties (e.g. elementNodeReference.childNodes[1].nodeName to get the name, etc.). </p>
		 * 
		 * <p><strong>Note:</strong> The document object itself has 2 children: the 
		 * Doctype declaration and the root element, typically referred to as documentElement. 
		 * (In (X)HTML documents this is the HTML element.) </p>
		 * 
		 * @example
		 * <listing>
		 * // parg is an object reference to a &lt;p&gt; element
		 * if (parg.hasChildNodes()) {
		 * 	// So, first we check if the object is not empty, if the object has child nodes
		 * 	var children = parg.childNodes;
		 * 	for (var i = 0; i &lt; children.length; i++) {
		 * 		// do something with each child as children[i]
		 * 		// NOTE: List is live, Adding or removing children will change the list
		 * 	};
		 * };</listing>
		 * 
		 * <listing>
		 * // This is one way to remove all children from a node
		 * // box is an object refrence to an element with children
		 * while (box.firstChild) {
		 * 	//The list is LIVE so it will re-index each call
		 * 	box.removeChild(box.firstChild);
		 * };</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa923287.aspx MSDN - childNodes Property
		 * @see http://developer.mozilla.org/En/DOM/Node.childNodes MDC - Node.childNodes
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1451460987 W3C - Node.childNodes
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get childNodes():NodeList { return null; };
		
		/**
		 * Specifies the data type for this node.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Value</th><th>Description</th></tr>
		 * 	<tr>
		 * 		<td>NODE_ATTRIBUTE</td>
		 * 		<td>Contains the string representation of the data type specifier included in the schema, or Null if no data type is specified.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_CDATA_SECTION, NODE_COMMENT, NODE_DOCUMENT, NODE_DOCUMENT_FRAGMENT, NODE_DOCUMENT_TYPE, NODE_ENTITY, NODE_NOTATION, NODE_PROCESSING_INSTRUCTION, NODE_TEXT</td>
		 * 		<td>Contains the constant string value "string." These node types do not have data types, so the dataType property cannot be set for these node types. Attempts to set this property are ignored. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_ELEMENT</td>
		 * 		<td>Contains the string representation of the data type specifier included on the instance of the element or in the schema, or Null if no data type is specified.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_ENTITY_REFERENCE</td>
		 * 		<td>Contains the string representation of the data type specifier for the referenced entity. This is limited to entities with a single data type on the root level element of the subtree corresponding to the entity. Contains Null if no data type is specified. It is not possible to set the data type of an entity reference. The data type must be set directly on the referenced element. Attempts to set the value of the dataType property are ignored. </td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa924038.aspx MSDN - dataType Property 
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get dataType():* { return null; };
		public function set dataType(value:*):void { };
		
		/**
		 * Returns the definition of the node in the document type definition (DTD) or schema.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Value</th><th>Description</th></tr>
		 * 	<tr>
		 * 		<td>NODE_ENTITY_REFERENCE</td>
		 * 		<td>Returns the node for the entity referenced; that is, the ENTITY element that was defined for a given ENTITYREF. Given the ENTITYREF &amp;x;, for example, the definition property returns the node in the DOCTYPE node's entity collection that defines the corresponding ENTITY: &lt;!ENTITY x "y"&gt;. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_ENTITY</td>
		 * 		<td>For unparsed entities, returns the NOTATION definition from the DOCTYPE node's notation collection. For example, given the ENTITY &lt;!ENTITY networth SYSTEM "networth.xls" NDATA XLS&gt;, the definition property returns the node corresponding to the notation &lt;!NOTATION XLS PUBLIC "http://example.microsoft.com/office/excel"&gt;. For parsed entities, returns Null. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_ATTRIBUTE</td>
		 * 		<td>Returns the XML-Data Schema AttributeType for a given ATTRIBUTE node. For example, the definition property for the attribute myAttribute="123" returns the node corresponding to the element &lt;AttributeType name= "myAttribute"&gt; in the schema. Returns Null when a DTD is used or when no schema is present. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_ELEMENT</td>
		 * 		<td>Returns the XML-Data Schema ElementType for a given ELEMENT node. For example, given the element &lt;myelement&gt;, the definition property returns the node &lt;ElementType name="myelement"&gt; in the specified external schema. Returns Null when a DTD is used or when no schema is present. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_CDATA_SECTION, NODE_COMMENT, NODE_DOCUMENT, NODE_DOCUMENT_FRAGMENT, NODE_DOCUMENT_TYPE, NODE_NOTATION, NODE_PROCESSING_INSTRUCTION, NODE_TEXT</td>
		 * 		<td>Returns Null.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa925478.aspx MSDN - definition Property 
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get definition():Node { return null; };
		
		/**
		 * Returns the node's first child in the tree, or null if the node is 
		 * childless. If the node is a Document, it returns the first node in 
		 * the list of its direct children.
		 * 
		 * <p><strong>Note:</strong> When applied to a document node, the returned node is not 
		 * necessarily the root element of the document; it can also be a 
		 * processing instruction, for example. If you need the root element, 
		 * use document.documentElement.</p>
		 * 
		 * @example
		 * This example demonstrates the use of firstChild and how whitespace nodes might interfere with using this property.
		 * <listing>
		 * &lt;p id="para-01"&gt;
		 * 	&lt;span&gt;First span&lt;/span&gt;
		 * &lt;/p&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 	var p01 = document.getElementById('para-01');
		 * 	alert(p01.firstChild.nodeName);
		 * &lt;/script&gt;</listing>
		 * 
		 * <p>In the above, the alert will show '#text' because a text node is inserted to maintain 
		 * the whitespace between the end of the opening &lt;p&gt; and &lt;span&gt; tags. Any whitespace will 
		 * cause the #text node to be inserted, from a single space to any number of spaces, returns, 
		 * tabs, and so on.</p>
		 * 
		 * <p>Another #text node is inserted between the closing &lt;/span&gt; and &lt;/p&gt; tags.</p>
		 * 
		 * <p>If this whitespace is removed from the source, the #text nodes are not inserted and 
		 * the span element becomes the paragraph's first child.</p>
		 * 
		 * <listing>
		 * &lt;p id="para-01"&gt;&lt;span&gt;First span&lt;/span&gt;&lt;/p&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 	var p01 = document.getElementById('para-01');
		 * 	alert(p01.firstChild.nodeName)
		 * &lt;/script&gt;</listing>
		 * 
		 * <p>Now the alert will show 'SPAN'.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926506.aspx MSDN - firstChild Property 
		 * @see http://developer.mozilla.org/En/DOM/Node.firstChild MDC - Node.firstChild
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-169727388 W3C - Node.firstChild
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get firstChild():Node { return null; };
		
		/**
		 * Returns the last child of a node. Returns null if there are no child elements. 
		 * 
		 * @example
		 * <listing>
		 * var tr = document.getElementById("row1");
		 * corner_td = tr.lastChild;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa923308.aspx MSDN - lastChild Property 
		 * @see http://developer.mozilla.org/En/DOM/Node.lastChild MDC - Node.lastChild
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-61AD09FB W3C - Node.lastChild
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get lastChild():Node { return null; };
		
		/**
		 * Returns the local part of the qualified name of this node. 
		 * 
		 * <p><strong>Note:</strong> The local name of a node is that part of the node's 
		 * qualified name that comes after the colon. Qualified names are typically used 
		 * in XML as part of the namespace(s) of the particular XML documents. For 
		 * example, in the qualified name ecomm:partners, partners is the local name 
		 * and ecomm is the prefix: 
		 * 
		 * <listing>
		 * &lt;ecomm:business id="soda_shop" type="brick_n_mortar"&gt;
		 * &lt;ecomm:partners&gt;
		 * &lt;ecomm:partner id="1001"&gt;Tony's Syrup Warehouse&lt;/ecomm:partner&gt;
		 * &lt;/ecomm:partners&gt;
		 * &lt;/ecomm:business&gt;</listing></p>
		 * 
		 * <p>For nodes of any type other than ELEMENT_NODE and ATTRIBUTE_NODE and nodes 
		 * created with a DOM Level 1 method, such as document.createElement, localName 
		 * is always null.</p>
		 * 
		 * @example
		 * (Must be served with XML content type, such as text/xml or application/xhtml+xml.) 
		 * <listing>
		 * &lt;html xmlns="http://www.w3.org/1999/xhtml"
		 * 	xmlns:svg="http://www.w3.org/2000/svg"&gt;
		 * &lt;head&gt;
		 * 	&lt;script type="application/javascript"&gt;&lt;![CDATA[
		 * 	function test() {
		 * 		var text = document.getElementById('text');
		 * 		var circle = document.getElementById('circle');
		 * 
		 * 		text.value = "&lt;svg:circle&gt; has:\n" +
		 * 			"localName = '" + circle.localName + "'\n" +
		 * 			"namespaceURI = '" + circle.namespaceURI + "'";
		 * 		}
		 * 	]]&gt;&lt;/script&gt;
		 * &lt;/head&gt;
		 * &lt;body onload="test()"&gt;
		 * 
		 * 	&lt;svg:svg version="1.1"
		 * 		width="100px" height="100px"
		 * 		viewBox="0 0 100 100"&gt;
		 * 		&lt;svg:circle cx="50" cy="50" r="30" style="fill:#aaa" id="circle"/&gt;
		 * 	&lt;/svg:svg&gt;
		 * 	&lt;textarea id="text" rows="4" cols="55"/&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.localName MDC - Node.localName
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-NodeNSLocalN W3C - Node.localName
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function get localName():DOMString { return null; };
		
		/**
		 * The namespace URI of the node, or null if it is unspecified (read-only). 
		 * When the node is a document, it returns the XML namespace for the 
		 * current document.
		 * 
		 * <p><strong>Note:</strong> This is not a computed value that is the result of a namespace lookup 
		 * based on an examination of the namespace declarations in scope. It is 
		 * merely the namespace URI given at creation time.</p>
		 * 
		 * <p><strong>Note:</strong> For nodes of any nodeType other than ELEMENT_NODE and ATTRIBUTE_NODE, 
		 * and nodes created with a DOM Level 1 method, such as document.createElement, 
		 * the value of namespaceURI is always null.</p>
		 * 
		 * <p><strong>Note:</strong> You can create an element with the specified namespaceURI using the DOM 
		 * Level 2 method document.createElementNS.</p>
		 * 
		 * <p><strong>Note:</strong> Per the Namespaces in XML specification, an attribute does not inherit 
		 * its namespace from the element it is attached to. If an attribute is not 
		 * explicitly given a namespace, it has no namespace.</p>
		 * 
		 * <p><strong>Note:</strong> The DOM does not handle or enforce namespace validation per se. It is up 
		 * to the DOM application to do any validation necessary. Note too that the 
		 * namespace prefix, once it is associated with a particular node, cannot 
		 * be changed.</p>
		 * 
		 * @example
		 * In this snippet, a node is being examined for its localName and its namespaceURI. If the namespaceURI 
		 * returns the XUL namespace and the localName returns "browser", then the node is understood to be a 
		 * XUL <code>&lt;browser/&gt;</code>.
		 * <listing>
		 * if (node.localName == "browser" &amp;&amp; 
		 * 	node.namespaceURI == "http://www.mozilla.org/keymaster/gatekeeper/there.is.only.xul") {
		 * 	// this is a XUL browser 
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa923270.aspx MSDN - namespaceURI Property (IXMLDOMNode) 
		 * @see http://developer.mozilla.org/En/DOM/Node.namespaceURI MDC - Node.namespaceURI
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-NodeNSname W3C - Node.namespaceURI
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function get namespaceURI():DOMString { return null; };
		
		/**
		 * Returns the node immediately following the specified one in its 
		 * parent's childNodes list, or null if the specified node is the 
		 * last node in that list. 
		 * 
		 * <p><strong>Note (Mozilla):</strong> Gecko-based browsers insert text nodes into a document to represent 
		 * whitespace in the source markup. Therefore a node obtained for example via 
		 * firstChild or previousSibling may refer to a whitespace text node, rather 
		 * than the actual element the author intended to get. </p>
		 * 
		 * @example
		 * <listing>
		 * &lt;div id="div-01"&gt;Here is div-01&lt;/div&gt;
		 * &lt;div id="div-02"&gt;Here is div-02&lt;/div&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 	var el = document.getElementById('div-01').nextSibling;
		 * 	document.write('&lt;p&gt;Siblings of div-01&lt;/p&gt;&lt;ol&gt;');
		 * 	while (el) {
		 * 		document.write('&lt;li&gt;' + el.nodeName + '&lt;/li&gt;');
		 * 		el = el.nextSibling;
		 * 	}
		 * 	document.write('&lt;/ol&gt;');
		 * &lt;/script&gt;
		 * </listing>
		 * 
		 * <listing>
		 * /~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		 * 	The following is written to the page as it loads:
		 * 
		 * 		Siblings of div-01
		 * 
		 * 		1. #text
		 * 		2. DIV
		 * 		3. #text
		 * 		4. SCRIPT
		 * 		5. P
		 * 		6. OL
		 * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/
		 * </listing>
		 * 
		 * In the above example, it can be seen that #text nodes are inserted in the DOM where whitespace 
		 * occurs in the markup between tags (i.e. after the closing tag of an element and before the 
		 * opening tag of the next). No whitespace is created between the elements inserted by the 
		 * document.write statement.
		 * 
		 * <p>The possible inclusion of text nodes in the DOM must be allowed for when traversing the DOM 
		 * using nextSibling. See the resources in the Notes section.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa922802.aspx MSDN - nextSibling Property 
		 * @see http://developer.mozilla.org/En/DOM/Node.nextSibling MDC - Node.nextSibling
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-6AC54C2F W3C - Node.nextSibling
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get nextSibling():Node { return null; };
		
		/**
		 * Returns the name of the current node as a string. 
		 * 
		 * <p><strong>Note:</strong> Here are the returned values for different types of nodes:
		 * <table class="innertable">
		 * 	<tr><th>Interface</th><th>nodeName</th></tr>
		 * 	<tr>
		 * 		<td>Attr</td><td>same as Attr.name</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>CDATASection</td><td>"#cdata-section"</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Comment</td><td>"#comment"</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Document</td><td>"#document"</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>DocumentFragment</td><td>"#document-fragment"</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>DocumentType</td><td>same as DocumentType.name</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>Element</td><td>same as Element.tagName</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>Entity</td><td>entity name</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>EntityReference</td><td>name of entity reference</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>Notation</td><td>notation name</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>ProcessingInstruction</td><td>same as ProcessingInstruction.target</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>text</td><td>"#text"</td>
		 * 	</tr>
		 * </table>
		 * </p>
		 * 
		 * @example
		 * Given the following markup: 
		 * <listing>
		 * &lt;div id="d1"&gt;hello world&lt;/div&gt;
		 * &lt;input type="text" id="t"/&gt;</listing>
		 * 
		 * <p>and the following script: </p>
		 * 
		 * <listing>
		 * var div1 = document.getElementById("d1");
		 * var text_field = document.getElementById("t"); 
		 * text_field.value = div1.nodeName;</listing>
		 * 
		 * <p>In XHTML (or any other XML format), text_field's value would read "div". However, in HTML, 
		 * text_field's value would read "DIV". </p>
		 * 
		 * <p>Note that tagName property could have been used instead, since nodeName has the same value 
		 * as tagName for an element. Bear in mind, however, that nodeName will return #text for text 
		 * nodes while tagName will return undefined. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa924892.aspx MSDN - nodeName Property 
		 * @see http://developer.mozilla.org/En/DOM/Node.nodeName MDC - Node.nodeName
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-F68D095 W3C - Node.nodeName
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get nodeName():DOMString { return null; };
		
		/**
		 * Returns the nsIPrincipal  object representing current security 
		 * context of the node.
		 * 
		 * <p><strong>Note:</strong> This property exists on all nodes (HTML, XUL, SVG, MathML, 
		 * etc.), but only if the script trying to use it has UniversalXPConnect privileges.</p>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.nodePrincipal MDC - Node.nodePrincipal
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get nodePrincipal():nsIPrincipal { return null; };
		
		/**
		 * Returns an integer code representing the type of the node. 
		 * 
		 * @example
		 * This example checks if the first node inside the document element is a comment node, 
		 * and if it is not, displays a message.
		 * <listing>
		 * var node = document.documentElement.firstChild;
		 * if(node.nodeType != Node.COMMENT_NODE)
		 * alert("You should comment your code well!");</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926537.aspx MSDN - nodeType Property 
		 * @see http://developer.mozilla.org/En/DOM/Node.nodeType MDC - Node.nodeType
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-111237558 W3C - Node.nodeType
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get nodeType():Number { return 0; };
		
		/**
		 * Contains the node value expressed in its defined data type.
		 * 
		 * <p><strong>Note:</strong> This value depends on the value of the  nodeType property of the IXMLDOMNode.</p>
		 * 
		 * <p><strong>Note:</strong> The data type for this node is defined in its  dataType Property. 
		 * This property also depends on the value of the node type, in the  nodeType property. </p>
		 * 
		 * <p><strong>Note:</strong> Although you can explicitly set the nodeTypedValue property with a 
		 * particular data type in the VARIANT, the set operation does not change the data type. The value 
		 * in the VARIANT is coerced to the data type specified in the dataType property, and the set 
		 * operation returns an error if the type coercion is not possible. </p>
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Value</th><th>Description</th></tr>
		 * 	<tr>
		 * 		<td>NODE_ATTRIBUTE</td>
		 * 		<td>Returns the value in the data representation of the type specified in the schema for the attribute. (Data types are specified using the dt:dt attribute, and because attributes cannot be applied to attributes, the attribute's data type can be specified only in the schema.) If no type was specified, returns a string identical to the  nodeValue property. If the new value is not of the type specified in the schema or cannot be coerced to the type specified in the schema, then an error occurs. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_CDATA_SECTION, NODE_COMMENT, NODE_DOCUMENT, NODE_DOCUMENT_FRAGMENT, NODE_DOCUMENT_TYPE, NODE_ENTITY, NODE_NOTATION, NODE_PROCESSING_INSTRUCTION</td>
		 * 		<td>Returns a string that is equal to the nodeValue property. These node types do not have data types. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_ELEMENT</td>
		 * 		<td>eturns the value in the data representation of the type specified on the element instance (using the dt:dt attribute) or specified in the schema. If no type was specified on the instance or in the schema, returns a string identical to the  nodeValue property. If the element has an attribute data type, returns null.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_ENTITY_REFERENCE</td>
		 * 		<td>Returns the value in the data representation of the type specified for the referenced entity. This is limited to entities with a single data type on the root level element of the subtree corresponding to the entity. If no data type was specified, returns a string identical to the  nodeValue property. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_TEXT</td>
		 * 		<td>Returns the value in the data representation of the type of the containing element. If the containing element was not typed, returns a string identical to the  nodeValue property. </td>
		 * 	</tr>
		 * </table>
		 * 
		 * <p><strong>Data Type Mapping</strong></p>
		 * 
		 * <table class="innertable">
		 * 	<tr><th>VARIANT returned</th><th>Corresponding element data type</th></tr>
		 * 	<tr>
		 * 		<td>VT_BSTR</td>
		 * 		<td>string</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_BSTR</td>
		 * 		<td>number</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_I4</td>
		 * 		<td>Int</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_CY</td>
		 * 		<td>Fixed.14.4</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_BOOL</td>
		 * 		<td>Boolean</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_DATE</td>
		 * 		<td>dateTime</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_DATE</td>
		 * 		<td>dateTime.tz</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_DATE</td>
		 * 		<td>Date</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_DATE</td>
		 * 		<td>Time</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_DATE</td>
		 * 		<td>Time.tz</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_I1</td>
		 * 		<td>i1 byte</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_I2</td>
		 * 		<td>i2</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_I4</td>
		 * 		<td>i4, int</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_UI1</td>
		 * 		<td>ui1</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_UI2</td>
		 * 		<td>ui2</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_UI4</td>
		 * 		<td>ui4</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_FLOAT</td>
		 * 		<td>r4</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_DOUBLE</td>
		 * 		<td>r8, float</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_BSTR</td>
		 * 		<td>uuid</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_ARRAY</td>
		 * 		<td>bin.hex</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>VT_ARRAY</td>
		 * 		<td>bin.base64</td>
		 * 	</tr>
		 * 	
		 * </table>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa923262.aspx MSDN - nodeTypedValue Property 
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get nodeTypedValue():* { return null; };
		public function set nodeTypedValue(value:*):void { };
		
		/**
		 * Returns the node type in string form.
		 * 
		 * @example
		 * This value depends on the value of the nodeType property.
		 * <listing>NODE_ATTRIBUTE == "attribute"</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa924285.aspx MSDN - nodeTypeString Property 
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get nodeTypeString():DOMString { return null; };
		
		/**
		 * Returns or sets the value of the current node.
		 * 
		 * <p><strong>Note:</strong> For the document itself, nodeValue returns null. For text, comment, 
		 * and CDATA nodes, nodeValue returns the content of the node. For 
		 * attribute nodes, the value of the attribute is returned.</p>
		 * 
		 * <p><strong>Note:</strong> The following table shows the return values for different elements:
		 * <table class="innertable">
		 * 	<tr><th>Interface</th><th>nodeValue</th></tr>
		 * 	<tr>
		 * 		<td>Attr</td><td>value of attribute</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>CDATASection</td><td>content of the CDATA Section</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Comment</td><td>content of the comment</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Document</td><td>null</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>DocumentFragment</td><td>null</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>DocumentType</td><td>null</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>Element</td><td>null</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>Entity</td><td>null</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>EntityReference</td><td>null</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>Notation</td><td>null</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>ProcessingInstruction</td><td>entire content excluding the target</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>text</td><td>content of the text node</td>
		 * 	</tr>
		 * </table>
		 * </p>
		 * 
		 * <p><strong>Note:</strong> When nodeValue is defined to be null, setting it has no effect.</p> 
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised 
		 * when the node is readonly.
		 * 
		 * @throws dom.core.DOMException DOMSTRING_SIZE_ERR: Raised when it 
		 * would return more characters than fit in a DOMString variable 
		 * on the implementation platform.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa924151.aspx MSDN - nodeValue Property 
		 * @see http://developer.mozilla.org/En/DOM/Node.nodeValue MDC - Node.nodeValue
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-F68D080 W3C - Node.nodeValue
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get nodeValue():DOMString { return null; };
		public function set nodeValue(value:DOMString):void { };
		
		/**
		 * The Document object associated with this node. This is also the 
		 * Document object used to create new nodes. 
		 * 
		 * <p><strong>Note:</strong> When this node is a 
		 * Document or a DocumentType which is not used with any Document 
		 * yet, this is null.</p>
		 * 
		 * @example
		 * <listing>
		 * // given a node "p", get the top-level HTML child 
		 * // of the document object
		 * d = p.ownerDocument; 
		 * html = d.documentElement;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa922810.aspx MSDN - ownerDocument Property 
		 * @see http://developer.mozilla.org/En/DOM/Node.ownerDocument MDC - Node.ownerDocument
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#node-ownerDoc W3C - Node.ownerDocument
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * @modified DOMCore 2
		 */
		public function get ownerDocument():Document { return null; };
		
		/**
		 * Returns the parent of the specified node in the DOM tree. 
		 * 
		 * <p><strong>Note:</strong> parentNode returns null for the following node types: Attr, Document, DocumentFragment, Entity, and Notation. </p>
		 * 
		 * <p><strong>Note:</strong> It also returns null if the node has just been created and is not yet attached to the tree. </p>
		 * 
		 * @example
		 * <listing>
		 * if (node.parentNode) {
		 * 	// remove a node from the tree, unless it's not in the tree already
		 * 	node.parentNode.removeChild(node);
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa923284.aspx MSDN - parentNode Property 
		 * @see http://developer.mozilla.org/En/DOM/Node.parentNode MDC - Node.parentNode
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1060184317 W3C - Node.parentNode
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get parentNode():Node { return null; };
		
		/**
		 * Indicates the parsed status of the node and child nodes.
		 * 
		 * <p><strong>Note:</strong> During asynchronous access, not all of the document tree may be available. 
		 * Before performing some operations, such as Extensible Stylesheet Language Transformations (XSLT) or 
		 * pattern-matching operations, it is useful to know whether the entire tree below this node is available 
		 * for processing. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926456.aspx MSDN - parsed Property 
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get parsed():Boolean { return false; };
		
		/**
		 * Returns the namespace prefix of the specified node, or null if no 
		 * prefix is specified. 
		 * 
		 * <p><strong>Note:</strong> This will only work when a namespace-aware parser 
		 * is used, i.e. when a document is served with an XML mime-type. This will not 
		 * work for HTML documents. </p>
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the 
		 * specified prefix contains an illegal character according to the XML 
		 * version in use specified in the Document.xmlVersion attribute.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @throws dom.core.DOMException NAMESPACE_ERR: Raised if the specified 
		 * prefix is malformed per the Namespaces in XML specification, if the 
		 * namespaceURI of this node is null, if the specified prefix is "xml" 
		 * and the namespaceURI of this node is different from 
		 * "http://www.w3.org/XML/1998/namespace", if this node is an attribute 
		 * and the specified prefix is "xmlns" and the namespaceURI of this node 
		 * is different from "http://www.w3.org/2000/xmlns/", or if this node is 
		 * an attribute and the qualifiedName of this node is "xmlns" 
		 * [XML Namespaces].
		 * 
		 * @example
		 * The following alerts "x". 
		 * <listing>&lt;x:div onclick="alert(this.prefix)"/&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa922812.aspx MSDN - prefix Property 
		 * @see http://developer.mozilla.org/En/DOM/Node.prefix MDC - Node.prefix
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-NodeNSPrefix W3C - Node.prefix
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function get prefix():DOMString { return null; };
		public function set prefix(value:DOMString):void { };
		
		/**
		 * Returns the node immediately preceding the specified one in its 
		 * parent's childNodes list, null if the specified node is the first 
		 * in that list. 
		 * 
		 * <p><strong>Note (Mozilla):</strong> Gecko-based browsers insert text nodes into a document to represent 
		 * whitespace in the source markup. Therefore a node obtained for 
		 * example via firstChild or previousSibling may refer to a whitespace 
		 * text node, rather than the actual element the author intended to get.</p>
		 * 
		 * <p><strong>Note:</strong> To navigate the opposite way through the child nodes list use element.nextSibling. </p>
		 * 
		 * @example
		 * <listing>
		 * // &lt;a&gt;&lt;b1 id="b1"/&gt;&lt;b2 id="b2"/&gt;&lt;/a&gt;
		 * alert(document.getElementById("b1").previousSibling); // null
		 * alert(document.getElementById("b2").previousSibling.id); // "b1"</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa923340.aspx MSDN - previousSibling Property 
		 * @see http://developer.mozilla.org/En/DOM/Node.previousSibling MDC - Node.previousSibling
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-640FB3C8 W3C - Node.previousSibling
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get previousSibling():Node { return null; };
		
		/**
		 * Indicates whether the node (usually an attribute) is explicitly specified or derived 
		 * from a default value in the document type definition (DTD) or schema.
		 * 
		 * <p>Only returns true for attribute nodes if the attribute was specified directly on the element. 
		 * Returns false for default attributes and all other node types.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa924210.aspx MSDN - specified Property 
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get specified():Boolean { return false; };
		
		/**
		 * Represents the text content of the node or the concatenated text representing the node and its descendants.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Value</th><th>Description</th></tr>
		 * 	<tr>
		 * 		<td>NODE_ATTRIBUTE, NODE_DOCUMENT, NODE_ENTITY</td>
		 * 		<td>Returns a string representing the value of the node. This is the concatenated text of all subnodes with entities expanded. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_CDATA_SECTION, NODE_COMMENT, NODE_PROCESSING_INSTRUCTION, NODE_TEXT</td>
		 * 		<td>Returns the text contained in the node, which is the same as the  nodeValue property.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_DOCUMENT_TYPE, NODE_NOTATION</td>
		 * 		<td>Returns the empty string (""). These node types do not have associated text. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_DOCUMENT_FRAGMENT</td>
		 * 		<td>Returns the text comprised of the concatenation of all descendant nodes.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_ELEMENT</td>
		 * 		<td>Contains a string that represents the element content. Note that this will also include the text content from all child elements, concatenated in document order. For example, consider the following XML: 
		 * 			<listing>&lt;count&gt;
  &lt;item&gt;one&lt;/item&gt;
  &lt;item&gt;two&lt;/item&gt;
  &lt;item&gt;three&lt;/item&gt;

  &lt;item&gt;four&lt;/item&gt;
&lt;/count&gt;
		 * 			</listing>
		 * 			The text property for the &lt;count&gt; element contains the value "one two three four".
		 * 		</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>NODE_ENTITY_REFERENCE</td>
		 * 		<td>Returns the string representation of the entity reference.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * <p><strong>Note:</strong> When concatenated, the text represents the contents of text or CDATA nodes. All 
		 * concatenated text nodes are normalized according to xml:space attributes and the value of the preserveWhiteSpace 
		 * switch. Concatenated CDATA text is not normalized. (Child nodes that contain NODE_COMMENT and 
		 * NODE_PROCESSING_INSTRUCTION nodes are not concatenated.) </p>
		 * 
		 * <p><strong>Note:</strong> Retrieves and sets the string representing the text contents of this node or the 
		 * concatenated text representing this node and its descendants.</p>
		 * 
		 * <p><strong>Note:</strong> For more precise control over text manipulation in an XML document, use the lower-level 
		 * nodeValue property, which returns the raw text associated with a NODE_TEXT node.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;root att="   123   a   &lt;   "&gt;
		 * 	&lt;a&gt;   a   a   &lt;/a&gt;
		 * 	&lt;!--   comment   b   --&gt;
		 * 	&lt;?pi   pi   c   ?&gt;
		 * 
		 * 	&lt;![CDATA[   cdata   d   ]]&gt;
		 * 	e   f
		 * &lt;/root&gt;</listing>
		 * 
		 * <p>The text property for the root element returns the following concatenated text.</p>
		 * 
		 * <listing>"a a   cdata   d    e f"</listing>
		 * 
		 * <p>Note that the white space within the CDATA node is preserved.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa924259.aspx MSDN - text Property 
		 * @see #textContent
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get text():DOMString { return null; };
		public function set text(value:DOMString):void { };
		
		/**
		 * Gets or sets the text content of a node and its descendants.
		 * 
		 * <p><strong>Note:</strong> textContent returns null if the element is a document, a document 
		 * type, or a notation. To grab all of the text and CDATA data for the 
		 * whole document, one could usedocument.documentElement.textContent.</p>
		 * 
		 * <p><strong>Note:</strong> If the node is a CDATA section, a comment, a processing instruction, 
		 * or a text node, textContent returns the text inside this node (the nodeValue).</p>
		 * 
		 * <p><strong>Note:</strong> For other node types, textContent returns the concatenation of the 
		 * textContent attribute value of every child node, excluding comments 
		 * and processing instruction nodes. This is an empty string if the node 
		 * has no children.</p>
		 * 
		 * <p><strong>Note:</strong> Setting this property on a node removes all of its children and replaces 
		 * them with a single text node with the given value.</p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised 
		 * when the node is readonly.
		 * 
		 * @throws dom.core.DOMException DOMSTRING_SIZE_ERR: Raised when it 
		 * would return more characters than fit in a DOMString variable on 
		 * the implementation platform.
		 * 
		 * @example
		 * <listing>
		 * // Given the following HTML fragment:
		 * //   &lt;div id="divA"&gt;This is &lt;span&gt;some&lt;/span&gt; text&lt;/div&gt;
		 * 
		 * // Get the text content:
		 * var text = document.getElementById("divA").textContent;
		 * // |text| is set to "This is some text".
		 * 
		 * // Set the text content:
		 * document.getElementById("divA").textContent = "This is some text";
		 * // The HTML for divA is now:
		 * //   &lt;div id="divA"&gt;This is some text&lt;/div&gt;</listing>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node3-textContent W3C - Node.textContent
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get textContent():DOMString { return null; };
		public function set textContent(value:DOMString):void { };
		
		/**
		 * Contains the XML representation of the node and all its descendants.
		 * 
		 * <p><strong>Note:</strong> The xml property always returns a Unicode string. That is, the xml property 
		 * for DOMDocument converts the document from its original encoding to Unicode. As a result, the original 
		 * encoding attribute is removed. For example, &lt;?xml version="1.0" encoding="UTF-8"?&gt; appears in the xml 
		 * property as follows.</p>
		 * 
		 * <listing>&lt;?xml version="1.0"?&gt;</listing>
		 * 
		 * <p>If the original encoding was not removed by the xml property, the following line returns an error indicating the parser cannot switch from Unicode to UTF-8 encoding.</p>
		 * 
		 * <listing>xmlDoc.loadxml(xmlDoc.xml);</listing>
		 * 
		 * <p>If you use the save Method, the original encoding is preserved. For example, if you load a document in Microsoft® Windows® 1252 encoding, it will be saved in that format. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa923294.aspx MSDN - xml Property 
		 * @see dom.core.Document#save()
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get xml():DOMString { return null; };
		
		/**
		 * Adds a node to the end of the list of children of a specified parent node. 
		 * If the node already exists it is removed from current parent node, then added to new parent node.
		 * 
		 * <p><strong>Note:</strong> If child is a reference to an existing node in the document, 
		 * appendChild moves it from its current position to the new position (i.e. there is no 
		 * requirement to remove the node from its parent node before appending it to some other node).</p>
		 * 
		 * <p><strong>Note:</strong> This also means that a node can't be in two points of the document 
		 * simultaneously. So if the node already has a parent, it is first removed, then appended at 
		 * the new position.</p>
		 * 
		 * <p><strong>Note:</strong> You can use cloneNode to make a copy of the node before appending
		 * it under the new parent. (Note that the copies made with cloneNode will not be automatically 
		 * kept in sync.)</p>
		 * 
		 * <p><strong>Note:</strong> This method is not allowed to move nodes between different documents. 
		 * If you want to append node from a different document (for example to display results from AJAX 
		 * request) you must first use importNode.</p>
		 * 
		 * <p><strong>Note (IE6):</strong> In Microsoft Internet Explorer 6, This method now applies to 
		 * the attribute object. </p>
		 * 
		 * <p><strong>Note:</strong> When inserting a node tree under another node that has a different 
		 * owner document, the  ownerDocument property for each inserted node is changed to match the owner 
		 * document of its new parent.</p>
		 * 
		 * <p><strong>Note:</strong> When moving a node tree to another document, the content of all entity 
		 * reference nodes contained therein is updated to conform to the new document. If the new document 
		 * does not declare an entity that was moved into it, the entity reference will have no children, and 
		 * the old content is removed. Existing references to nodes under the entity reference are still valid, 
		 * but the node whose parent previously was the entity reference now has a null parent. </p>
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if this 
		 * node is of a type that does not allow children of the type of the 
		 * newChild node, or if the node to append is one of this node's 
		 * ancestors or this node itself, or if this node is of type Document 
		 * and the DOM application attempts to append a second DocumentType or 
		 * Element node.
		 * 
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if newChild 
		 * was created from a different document than the one that created 
		 * this node.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly or if the previous parent of the node being 
		 * inserted is readonly.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: if the newChild node 
		 * is a child of the Document node, this exception might be raised if 
		 * the DOM implementation doesn't support the removal of the 
		 * DocumentType child or Element child.
		 * 
		 * @param	element Object that specifies the element to append.
		 * @return Returns a reference to the element that is appended to the object.
		 * 
		 * @example
		 * <listing>
		 * // Create a new paragraph element, and append it to the end of the document body
		 * var p = document.createElement("p");
		 * document.body.appendChild(p);</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa925543.aspx MSDN - appendChild Method 
		 * @see http://developer.mozilla.org/En/DOM/Node.appendChild MDC - Node.appendChild()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-184E7107 W3C - Node.appendChild()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * @modified DOMCore 3
		 */
		public function appendChild(element:Node):Node { return null; };
		
		/**
		 * Returns a duplicate of the current node. 
		 * 
		 * <p><strong>Note:</strong> Cloning a node copies all of its attributes and their values. </p>
		 * 
		 * <p><strong>Note:</strong> The duplicate node returned by cloneNode is not part of the 
		 * document until it is added to another node that is part of the document using appendChild 
		 * or a similar method. It also has no parent until it is appended to another node. </p>
		 * 
		 * <p><strong>Note:</strong> If cloneChildren is set to false, none of the child nodes 
		 * are cloned. Any text that the node contains is not cloned either, as it is contained in 
		 * one or more child Text nodes. </p>
		 * 
		 * <p><strong>Note:</strong> When you refer to the ID of a cloned element, a collection is returned.</p>
		 * 
		 * <p><strong>Note:</strong> To clone a node for appending to a different document, use importNode instead. </p>
		 * 
		 * <p><strong>Note (IE):</strong> If the node is the DOMDocument node, it is safer to clone the document 
		 * using the save method, as follows. doc.save(doc2); </p>
		 * 
		 * @param	cloneChildren FALSE, cloned objects do not include childNodes. TRUE, cloned objects include childNodes.
		 * @return Returns a reference to the newly created node.
		 * 
		 * @example
		 * <listing>
		 * p = document.getElementById("para1"); 
		 * p_prime = p.cloneNode(true);</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa923265.aspx MSDN - cloneNode Method 
		 * @see http://developer.mozilla.org/En/DOM/Node.cloneNode MDC - Node.cloneNode()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-3A0ED0A4 W3C - Node.cloneNode()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function cloneNode(cloneChildren:Boolean):Node { return null; };
		
		/**
		 * Compares the position of the current node against another node in any other document.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: when the compared 
		 * nodes are from different DOM implementations that do not coordinate 
		 * to return consistent implementation-specific results.
		 * 
		 * @param	other The node that's being compared against.
		 * @return The return value is computed as the relationship that otherNode has
		 * 
		 * @example
		 * <listing>
		 * var head = document.getElementsByTagName('head').item(0);
		 * var result = head.compareDocumentPosition(document.body);
		 * // result = Node.DOCUMENT_POSITION_FOLLOWING</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.compareDocumentPosition MDC - Node.compareDocumentPosition()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node3-compareDocumentPosition W3C - Node.compareDocumentPosition()
		 * @see #DOCUMENT_POSITION_DISCONNECTED
		 * @see #DOCUMENT_POSITION_PRECEDING
		 * @see #DOCUMENT_POSITION_FOLLOWING
		 * @see #DOCUMENT_POSITION_CONTAINS
		 * @see #DOCUMENT_POSITION_CONTAINED_BY
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function compareDocumentPosition(other:Node):Number { return 0; };
		
		/**
		 * This method returns a specialized object which implements the 
		 * specialized APIs of the specified feature and version, as specified 
		 * in DOM Features. The specialized object may also be obtained by using 
		 * binding-specific casting methods but is not necessarily expected to, 
		 * as discussed in Mixed DOM Implementations. This method also allow 
		 * the implementation to provide specialized objects which do not support 
		 * the Node interface. 
		 * 
		 * @param	feature The name of the feature requested. Note that any plus 
		 * sign "+" prepended to the name of the feature will be ignored since it 
		 * is not significant in the context of this method. 
		 * @param	version This is the version number of the feature to test. 
		 * @return Returns an object which implements the specialized APIs of the 
		 * specified feature and version, if any, or null if there is no object 
		 * which implements interfaces associated with that feature. If the 
		 * DOMObject returned by this method implements the Node interface, it must 
		 * delegate to the primary core Node and not return results inconsistent 
		 * with the primary core Node  such as attributes, childNodes, etc. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.getFeature MDC - Node.getFeature()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node3-getFeature W3C - Node.getFeature()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function getFeature(feature:DOMString, version:DOMString):DOMObject { return null; };
		
		/**
		 * Retrieves the object associated to a key on a this node. The object must 
		 * first have been set to this node by calling setUserData with the same key.
		 * 
		 * @param	key The key the object is associated to.
		 * @return Returns the DOMUserData associated to the given key on this node, 
		 * or null if there was none.
		 * 
		 * @example
		 * <listing>
		 * var d = document.setUserData('key', 15, null);
		 * alert(document.getUserData('key')); // 15</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.getUserData MDC - Node.getUserData()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node3-getUserData W3C - Node.getUserData()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function getUserData(key:DOMString):DOMUserData { return null; };
		
		/**
		 * Returns a boolean value of true or false, indicating if the current element 
		 * has any attributes or not. 
		 * 
		 * @return If the current element has any attributes or not. 
		 * 
		 * @example
		 * <listing>
		 * t1 = document.getElementById("table-data"); 
		 * if (t1.hasAttributes()) { 
		 * 	// do something with t1.attributes
		 * }</listing>
		 * 
		 * <listing> var result=document.getElementsByTagName("div")[0].hasAttributes();</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.hasAttributes MDC - Node.hasAttributes()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-NodeHasAttrs W3C - Node.hasAttributes()
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function hasAttributes():Boolean { return false; };
		
		/**
		 * Returns a value that indicates whether the object has children. 
		 * 
		 * <p><strong>Note:</strong> If the object contains HTML Elements or TextNodes, they can be 
		 * accessed from the childNodes collection.</p>
		 * 
		 * <p><strong>Note:</strong> element.hasChildNodes, without the parenthesises, will return the 
		 * hasChildNodes Function, and not a Boolean.</p>
		 * 
		 * <p><strong>Note (IE6):</strong> In Microsoft Internet Explorer 6, This method now applies to the 
		 * attribute object. </p>
		 * 
		 * @return
		 * 
		 * @example
		 * Remove the first child node inside the element with the id "foo" if foo has child nodes.
		 * <listing>
		 * var foo = document.getElementById("foo");
		 * if (foo.hasChildNodes()) { 
		 * 	foo.removeChild(foo.childNodes[0]);
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa924162.aspx MSDN - hasChildNodes Method
		 * @see http://developer.mozilla.org/En/DOM/Node.hasChildNodes MDC - Node.hasChildNodes()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-810594187 W3C - Node.hasChildNodes()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function hasChildNodes():Boolean { return false; };
		
		/**
		 * Inserts the specified node before a reference element as a child of 
		 * the current node. 
		 * 
		 * <p><strong>Note:</strong> Do not specify the childNode  parameter when inserting the 
		 * first child node. If children already exist and you do not specify 
		 * the childNode  parameter, the oNewNode  becomes the last child of 
		 * the parent object.</p>
		 * 
		 * <p><strong>Note (IE6):</strong> In Microsoft Internet Explorer 6, This method now applies to the 
		 * attribute object.</p>
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if this 
		 * node is of a type that does not allow children of the type of the 
		 * newChild node, or if the node to insert is one of this node's 
		 * ancestors or this node itself, or if this node is of type Document 
		 * and the DOM application attempts to insert a second DocumentType 
		 * or Element node.
		 * 
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if newChild 
		 * was created from a different document than the one that created 
		 * this node.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly or if the parent of the node being inserted 
		 * is readonly.
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised if refChild is 
		 * not a child of this node.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: if this node is of 
		 * type Document, this exception might be raised if the DOM 
		 * implementation doesn't support the insertion of a DocumentType or 
		 * Element node.
		 * 
		 * @param	newNode The node to insert. 
		 * @param	childNode The node before which newNode is inserted. 
		 * @return Returns a reference to the element that is inserted into the document.
		 * 
		 * @example
		 * <listing>
		 *  &lt;html&gt;
		 * 
		 * &lt;head&gt;
		 * 	&lt;title&gt;Gecko DOM insertBefore test&lt;/title&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body&gt;
		 * 
		 * &lt;div&gt;
		 * 	&lt;span id="childSpan"&gt;foo bar&lt;/span&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 	// create an empty element node
		 * 	// without an ID, any attributes, or any content
		 * 	var sp1 = document.createElement("span");
		 * 
		 * 	// give it an id attribute called 'newSpan'
		 * 	sp1.setAttribute("id", "newSpan");
		 * 
		 * 	// create some content for the newly created element.
		 * 	var sp1_content = document.createTextNode("This is a new span element. ");
		 * 
		 * 	// apply that content to the new element
		 * 	sp1.appendChild(sp1_content);
		 * 
		 * 	var sp2 = document.getElementById("childSpan");
		 * 	var parentDiv = sp2.parentNode;
		 * 
		 * 	// insert the new element into the DOM before sp2
		 * 	parentDiv.insertBefore(sp1, sp2);
		 * &lt;/script&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * <p>There is no insertAfter method, however it can be emulated using a combination of insertBefore and nextSibling. </p>
		 * 
		 * <p>From the above example, sp1 could be inserted after sp2 using: </p>
		 * 
		 * <listing>parentDiv.insertBefore(sp1, sp2.nextSibling);</listing>
		 * 
		 * <p>If sp2 does not have a next sibling it must be the last child—sp2.nextSibling will return 
		 * null so sp1 will be inserted at the end of the child nodes list (i.e. immediately after sp2). </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa922819.aspx MSDN - insertBefore Method 
		 * @see http://developer.mozilla.org/En/DOM/Node.insertBefore MDC - Node.insertBefore()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-952280727 W3C - Node.insertBefore()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * @modified DOMCore 3
		 */
		public function insertBefore(newNode:Node, childNode:Node):Node { return null; };
		
		/**
		 * Returns true if the namespace is the default namespace on the given 
		 * node or false if not.
		 * 
		 * @param	namespaceURI The namespace against which the element will be checked.
		 * @return If the namespace is the default namespace on the given 
		 * node or false if not.
		 * 
		 * @example
		 * <listing>
		 * var XULNS = "http://www.mozilla.org/keymaster/gatekeeper/there.is.only.xul";
		 * var el = document.getElementsByTagNameNS(XULNS, 'textbox')[0];
		 * alert(el.isDefaultNamespace(XULNS)); // true</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.isDefaultNamespace MDC - Node.isDefaultNamespace()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node3-isDefaultNamespace W3C - Node.isDefaultNamespace()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function isDefaultNamespace(namespaceURI:DOMString):Boolean { return false; };
		
		/**
		 * Tests whether two nodes are equal.
		 * 
		 * <p>This method tests for equality of nodes, not sameness (i.e., whether
		 * the two nodes are references to the same object) which can be tested 
		 * with Node.isSameNode(). All nodes that are the same will also be 
		 * equal, though the reverse may not be true. Two nodes are equal if and 
		 * only if the following conditions are satisfied:
		 * <ul>
		 * <li>The two nodes are of the same type.</li>
		 * <li>The following string attributes are equal: nodeName, localName, 
		 * namespaceURI, prefix, nodeValue. This is: they are both null, or they 
		 * have the same length and are character for character identical.</li>
		 * <li>The attributes NamedNodeMaps are equal. This is: they are both null, 
		 * or they have the same length and for each node that exists in one map 
		 * there is a node that exists in the other map and is equal, although not 
		 * necessarily at the same index.</li>
		 * <li>The childNodes NodeLists are equal. This is: they are both null, or 
		 * they have the same length and contain equal nodes at the same index. 
		 * Note that normalization can affect equality; to avoid this, nodes should 
		 * be normalized before being compared.</li>
		 * </ul>
		 * </p>
		 * 
		 * <p>For two DocumentType nodes to be equal, the following conditions must 
		 * also be satisfied:
		 * <ul>
		 * <li>The following string attributes are equal: publicId, systemId, internalSubset.</li>
		 * <li>The entities NamedNodeMaps are equal.</li>
		 * <li>The notations NamedNodeMaps are equal.</li>
		 * </ul>
		 * </p>
		 * 
		 * <p>On the other hand, the following do not affect equality: the ownerDocument, 
		 * baseURI, and parentNode attributes, the specified attribute for Attr nodes, 
		 * the schemaTypeInfo attribute for Attr and Element nodes, the 
		 * Text.isElementContentWhitespace attribute for Text nodes, as well as any 
		 * user data or event listeners registered on the nodes.</p>
		 * 
		 * <p>Note: As a general rule, anything not mentioned in the description above 
		 * is not significant in consideration of equality checking. Note that future 
		 * versions of this specification may take into account more attributes and 
		 * implementations conform to this specification are expected to be 
		 * updated accordingly. </p>
		 * 
		 * @param	arg The node to compare equality with.
		 * @return Returns true if the nodes are equal, false  otherwise.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.isEqualNode MDC - Node.isEqualNode()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node3-isEqualNode W3C - Node.isEqualNode()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function isEqualNode(arg:Node):Boolean { return false; };
		
		/**
		 * Returns whether this node is the same node as the given one.
		 * This method provides a way to determine whether two Node references 
		 * returned by the implementation reference the same object. When two 
		 * Node references are references to the same object, even if through a 
		 * proxy, the references may be used completely interchangeably, such 
		 * that all attributes have the same values and calling the same DOM method 
		 * on either reference always has exactly the same effect.
		 * 
		 * @param	other The node to test against.
		 * @return Returns true if the nodes are the same, false otherwise.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.isSameNode MDC - Node.isSameNode()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node3-isSameNode W3C - Node.isSameNode()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function isSameNode(other:Node):Boolean { return false; };
		
		/**
		 * Tests whether the DOM implementation implements a specific feature 
		 * and that feature is supported by this node. 
		 * 
		 * <p><strong>Note:</strong> To check if any version of the DOM specification is supported, 
		 * you can pass in null as the version instead of a string. </p>
		 * 
		 * @param	The name of the feature to test. This is the same name 
		 * which can be passed to the method hasFeature on DOMImplementation. 
		 * Possible values defined within the core DOM specification are listed 
		 * on the DOM Level 2 Conformance Section.  The name of the feature to 
		 * test. This is the same name which can be passed to the method 
		 * hasFeature on DOMImplementation. Possible values defined within 
		 * the core DOM specification are listed on the DOM Level 2 Conformance Section. 
		 * @param version This is the version number of the feature to test. In DOM 
		 * Level 2, version 1, this is the string 2.0. If the version is not specified, 
		 * supporting any version of the feature will cause the method to return true. 
		 * @return
		 * 
		 * @example
		 * <listing>
		 * // Get an element and check to see if its supports the DOM2 HTML Module
		 * &lt;div id="doc"&gt;
		 * &lt;/div&gt;
		 * var main = document.getElementById('doc');
		 * var output = main.isSupported('HTML', '2.0');</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.isSupported MDC - Node.isSupported()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Level-2-Core-Node-supports W3C - Node.isSupported()
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function isSupported(feature:DOMString, version:DOMString):Boolean { return false; };
		
		/**
		 * Returns the prefix for a given namespaceURI if present, and null if not. 
		 * When multiple prefixes are possible, the result is implementation-dependent.
		 * 
		 * <p><strong>Note (Mozilla):</strong> Due to bug 312019, this method does not work with 
		 * dynamically assigned namespaces (i.e., those set with Node.prefix).</p>
		 * 
		 * @param	namespaceURI The namespace URI to look for.
		 * @return Returns an associated namespace prefix if found or null  if none is 
		 * found. If more than one prefix are associated to the namespace prefix, the 
		 * returned namespace prefix is implementation dependent.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.lookupPrefix MDC - Node.lookupPrefix()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node3-lookupNamespacePrefix W3C - Node.lookupPrefix()
		 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=312019 bug 312019
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function lookupPrefix(namespaceURI:DOMString):DOMString { return null; };
		
		/**
		 * Takes a prefix and returns the namespaceURI associated with it on the 
		 * given node if found (and null if not). Supplying null for the prefix 
		 * will return the default namespace.
		 * 
		 * <p><strong>Note (Mozilla):</strong> Due to bug 312019, this method does not work with 
		 * dynamically assigned namespaces (i.e., those set with Node.prefix).</p>
		 * 
		 * @param	prefix The prefix to look for. If this parameter is null, 
		 * the method will return the default namespace URI if any.
		 * @return Returns the associated namespace URI or null if none is found.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.lookupNamespaceURI MDC - Node.lookupNamespaceURI()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node3-lookupNamespaceURI W3C - Node.lookupNamespaceURI()
		 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=312019 bug 312019
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function lookupNamespaceURI(prefix:DOMString):DOMString { return null; };
		
		/**
		 * Puts the specified node and all of its subtree into a "normalized" 
		 * form. In a normalized subtree, no text nodes in the subtree are 
		 * empty and there are no adjacent text nodes. 
		 * 
		 * <p><strong>Note (IE):</strong> By calling object.normalize before the subelements of an 
		 * object are manipulated, you ensure that the document object model 
		 * has a consistent structure. The normal form is useful for operations 
		 * that require a consistent document tree structure, and it ensures 
		 * that the document object model view is identical when saved and reloaded.</p>
		 * 
		 * <p><strong>Note (IE):</strong> Adjacent CDATA sections will not be merged by the normalize 
		 * method, allowing for an inconsistent object model when CDATA 
		 * sections are present.</p>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.normalize MDC - Node.normalize()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-normalize W3C - Node.normalize()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * @modified DOMCore 3
		 */
		public function normalize():void { };
		
		/**
		 * Removes a child node from the object.
		 * 
		 * <p>The node to be removed must be an immediate child of the parent object.</p>
		 * 
		 * <p>If child is actually not a child of the element node, the method throws an exception. </p>
		 * 
		 * <p><strong>Note:</strong> The removed child node still exists in memory, but is no longer part of the DOM. 
		 * You may reuse the removed node later in your code, via the oldChild object reference.</p>
		 * 
		 * <p><strong>Note (IE6):</strong> In Microsoft Internet Explorer 6, This method now applies to the attribute object. </p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if
		 * this node is readonly.
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised if oldChild is not 
		 * a child of this node.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: if this node is of 
		 * type Document, this exception might be raised if the DOM implementation 
		 * doesn't support the removal of the DocumentType child or the Element child.
		 * 
		 * @param	node Specifies the element to be removed from the document.
		 * @return Returns a reference to the object that is removed.
		 * 
		 * @example
		 * <listing>
		 * // &lt;div id="top" align="center"&gt;
		 * //   &lt;div id="nested"&gt;&lt;/div&gt; 
		 * // &lt;/div&gt;
		 * 
		 * var d = document.getElementById("top"); 
		 * var d_nested = document.getElementById("nested"); 
		 * var throwawayNode = d.removeChild(d_nested);</listing>
		 * 
		 * <listing>
		 * // remove all children from element
		 * var element = document.getElementById("top");
		 * while (element.firstChild) {
		 * 	element.removeChild(element.firstChild);
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa923301.aspx MSDN - removeChild Method
		 * @see http://developer.mozilla.org/En/DOM/Node.removeChild MDC - Node.removeChild()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1734834066 W3C - Node.removeChild()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * @modified DOMCore 3
		 */
		public function removeChild(node:Node):Node { return null; };
		
		/**
		 * Replaces an existing child element with a new child element.
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: Raised if this 
		 * node is of a type that does not allow children of the type of the 
		 * newChild node, or if the node to put in is one of this node's 
		 * ancestors or this node itself, or if this node is of type Document 
		 * and the result of the replacement operation would add a second 
		 * DocumentType or Element on the Document node.
		 * 
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if newChild 
		 * was created from a different document than the one that created 
		 * this node.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node or the parent of the new node is readonly.
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised if oldChild is 
		 * not a child of this node.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: if this node is of 
		 * type Document, this exception might be raised if the DOM implementation 
		 * doesn't support the replacement of the DocumentType child or Element child.
		 * 
		 * @param	newNode The new node to replace oldChild. If it already exists in the DOM, it is first removed. 
		 * @param	childNode Specifies the existing element to be replaced.
		 * @return Returns a reference to the object that is replaced.
		 * 
		 * @example
		 * <listing>
		 * // &lt;div&gt;
		 * //  &lt;span id="childSpan"&gt;foo bar&lt;/span&gt;
		 * // &lt;/div&gt;
		 * 
		 * // create an empty element node
		 * // without an ID, any attributes, or any content
		 * var sp1 = document.createElement("span");
		 * 
		 * // give it an id attribute called 'newSpan'
		 * sp1.setAttribute("id", "newSpan");
		 * 
		 * // create some content for the new element.
		 * var sp1_content = document.createTextNode("new replacement span element.");
		 * 
		 * // apply that content to the new element
		 * sp1.appendChild(sp1_content);
		 * 
		 * // build a reference to the existing node to be replaced
		 * var sp2 = document.getElementById("childSpan");
		 * var parentDiv = sp2.parentNode;
		 * 
		 * // replace existing node sp2 with the new span element sp1
		 * parentDiv.replaceChild(sp1, sp2);</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa925527.aspx MSDN - replaceChild Method 
		 * @see http://developer.mozilla.org/En/DOM/Node.replaceChild MDC - Node.replaceChild()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-785887307 W3C - Node.replaceChild()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * @modified DOMCore 3
		 */
		public function replaceChild(newNode:Node, childNode:Node):Node { return null; };
		
		/**
		 * Applies the specified pattern-matching operation to this node's context and returns the list of matching nodes as IXMLDOMNodeList.
		 * 
		 * <p><strong>Note (IE):</strong> This method is only valid if the XML Query Language (XQL) feature has been included in the operating 
		 * system (OS). If a call to this method is made and XQL is not supported, an error message will be returned. </p>
		 * 
		 * <p><strong>Note (IE):</strong> The  selectSingleNode method is similar to the selectNodes method, but returns only the first matching 
		 * node rather than the list of all matching nodes.</p>
		 * 
		 * @param	queryString A XSLPattern or XPath query that is to be applied to the context defined by this node. The value of the 
		 * SelectionLanguage internal property (flag) determines whether an XSLPattern or XPath query is used. By default, the queryString is 
		 * an XSLPattern query. The SelectionLanguage internal property (flag) can be set with the setProperty Method.
		 * @return Returns a collection of nodes selected by an XSL Pattern or XPath query. If no nodes are selected, an empty collection is returned.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa926403.aspx MSDN - selectNodes Method 
		 * @see #selectSingleNode()
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function selectNodes(queryString:DOMString):NodeList { return null; };
		
		/**
		 * Applies the specified pattern-matching operation to this node's context and returns the first matching node.
		 * 
		 * <p><strong>Note (IE):</strong> This method is only valid if the XML Query Language (XQL) feature has been included in 
		 * the OS. If a call to this method is made and XQL is not supported, an error message will be returned. </p>
		 * 
		 * <p><strong>Note (IE):</strong> The selectSingleNode method is similar to the  selectNodes Method, but returns only 
		 * the first matching node rather than the list of all matching nodes.</p>
		 * 
		 * @param	queryString A Extensible Stylesheet Language (XSL) or XPath query that is to be applied to the context defined by 
		 * this node. The value of the SelectionLanguage internal property (flag) determines whether an XSL or XPath query is used. 
		 * By default, the expression is an XSL pattern query. The SelectionLanguage internal property (flag) can be set with the 
		 * setProperty method.
		 * @return Returns the first node that matches the XSL or XPath query. If no nodes match the query, it returns Null.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa924233.aspx MSDN - selectSingleNode Method 
		 * @see #selectNodes()
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function selectSingleNode(queryString:DOMString):Node { return null; };
		
		/**
		 * Associate an object to a key on this node. The object can later be 
		 * retrieved from this node by calling getUserData with the same key.
		 * 
		 * <p>Allows a user to attach data to an element, without needing to modify the DOM. Note 
		 * that such data will not be preserved when imported via importNode, as with cloneNode() 
		 * and renameNode() operations (though adoptNode does preserve the information), and equality 
		 * tests in isEqualNode() do not consider user data in making the assessment.</p>
		 * 
		 * <p>This method offers the convenience of associating data with specific nodes without needing 
		 * to alter the structure of a document and in a standard fashion, but it also means that extra 
		 * steps may need to be taken if one wishes to serialize the information or include the 
		 * information upon clone, import, or rename operations.</p>
		 * 
		 * @param	key The key to associate the object to.
		 * @param	data The object to associate to the given key, or null to remove any existing association to that key.
		 * @param	handler The handler to associate to that key, or null.
		 * @return Returns the DOMUserData previously associated to the given key on this node, or null if there was none.
		 * 
		 * @example
		 * <listing>
		 * var d = document.implementation.createDocument('', 'test', null); 
		 * d.documentElement.setUserData('key', 15, {handle:function (o, k, d, s, ds) {alert(o+'::'+k+'::'+d+'::'+s+'::'+ds)}}); // 2::key::15::[object Element]::[object Element]
		 * alert(d.documentElement.getUserData('key')); // 15
		 * var e = document.importNode(d.documentElement, true); // causes handler to be called
		 * alert(e.getUserData('key')); // null since user data is not copied</listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Node.setUserData MDC - Node.setUserData()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Node3-setUserData W3C - Node.setUserData()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function setUserData(key:DOMString, data:DOMUserData, handler:UserDataHandler):DOMUserData { return null; };
		
		/**
		 * Processes this node and its children using the supplied Extensible Stylesheet Language Transformations
		 * (XSLT) style sheet and returns the resulting transformation.
		 * 
		 * <p><strong>Note (IE):</strong> This method is only valid if the XSLT feature has been included in the operating system 
		 * (OS). If a call to this method is made and XSLT is not supported, an error message will be returned. </p>
		 * 
		 * <p><strong>Note (IE):</strong> The stylesheet parameter must be either a  DOMDocument node, in which case the document 
		 * is assumed to be an Extensible Stylesheet Language (XSL) style sheet, or a Document Object Model (DOM) node in the 
		 * XSL style sheet, in which case this node is treated as a stand-alone style sheet fragment.</p>
		 * 
		 * <p><strong>Note (IE):</strong> The source node defines a context in which the style sheet operates, but navigation outside 
		 * this scope is allowed. For example, a style sheet can use the id function to access other parts of the document. </p>
		 * 
		 * <p><strong>Note (IE):</strong> This method supports both stand-alone and embedded style sheets and also provides the 
		 * ability to run a localized style sheet fragment against a particular source node.</p>
		 * 
		 * @param	styleSheet Valid XML document or DOM node that consists of XSLT elements that direct the transformation of this node.
		 * @return Returns a string that contains the product of the transformation of this XML document based on the XSLT style sheet.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa924913.aspx MSDN - transformNode Method 
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function transformNode(styleSheet:Node):DOMString { return null; };
		
		/**
		 * Processes this node and its children using the supplied Extensible Stylesheet Language Transformations (XSLT) style sheet 
		 * and returns the resulting transformation.
		 * 
		 * <p><strong>Note (IE):</strong> This method is only valid if the XSLT feature has been included in the operating system (OS). If 
		 * a call to this method is made and XSLT is not supported, an error message will be returned. </p>
		 * 
		 * <p><strong>Note (IE):</strong> The stylesheet parameter must be either a  DOMDocument node, in which case the document is assumed 
		 * to be an XSLT style sheet, or a Document Object Model (DOM) node in the XSLT style sheet, in which case this node is treated 
		 * as a stand-alone style sheet fragment.</p>
		 * 
		 * <p><strong>Note (IE):</strong> The source node defines a context in which the style sheet operates, but navigation outside this 
		 * scope is allowed. For example, a style sheet can use the id function to access other parts of the document. </p>
		 * 
		 * <p><strong>Note (IE):</strong> This method supports both stand-alone and embedded style sheets and also provides the ability to 
		 * run a localized style sheet fragment against a particular source node.</p>
		 * 
		 * <p><strong>Note (IE):</strong> The transformNodeToObject method always generates a Unicode byte-order mark, which means it cannot 
		 * be used in conjunction with other Active Server Pages (ASP) Response.Write or Response.BinaryWrite calls.</p>
		 * 
		 * @param	styleSheet Valid XML document or DOM node that consists of XSLT elements that direct the transformation of this node.
		 * @param	outputObject On return, contains the product of the transformation of this XML document based on the XSLT style sheet. 
		 * If the variant represents the  DOMDocument object, the document is built according to its properties and its child nodes are 
		 * replaced during this transformation process. The XML transformation can also be sent to a stream.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa924282.aspx MSDN - transformNodeToObject Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function transformNodeToObject(styleSheet:Node, outputObject:*):void { };
		
		/* INTERFACE dom.events.EventTarget */
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * function statusreport() {
		 * 		alert("document has loaded");
		 * }
		 * 
		 * if (window.addEventListener) {
		 * 		window.addEventListener("load", statusreport, false); //invoke function
		 * }
		 * window.onload = statusreport(); //function invoked again, since no event handler conflicts</listing>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventTarget-addEventListener W3C - DOM 3 Events: EventTarget.addEventListener()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function addEventListener(type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void { };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventTarget-addEventListener W3C - DOM 3 Events: EventTarget.addEventListener()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function addEventListenerNS(namespaceURI:DOMString, type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void { };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;div id="test" onclick="alert('hi')">Sample DIV.&lt;/div>
		 * &lt;script type="text/javascript">
		 * //Generate an artificial click event on "test". Fires alert("hi")
		 * var clickevent = document.createEvent("MouseEvents");
		 * clickevent.initEvent("click", true, true);
		 * document.getElementById("test").dispatchEvent(myevent);
		 * &lt;/script></listing>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventTarget-dispatchEvent W3C - DOM 3 Events: EventTarget.dispatchEvent()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 * @modified DOMEvents 3
		 */
		public function dispatchEvent(evt:dom.events.Event):Boolean	{ return false; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventTarget-removeEventListener W3C - DOM 3 Events: EventTarget.removeEventListener()
		 * 
		 * @playerversion DOMEvents 2
		 * @since DOMEvents 2
		 */
		public function removeEventListener(type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void { };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-EventTargetGroup-removeEventListenerNS W3C - DOM 3 Events: EventTarget.removeEventListenerNS()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function removeEventListenerNS(namespaceURI:DOMString, type:DOMString, listener:dom.events.EventListener, useCapture:Boolean):void {	};
	}
}