package dom.xpath {
	
	import dom.core.Element;
	import dom.core.Node;
	
	/**
	 * The XPathNamespace interface is returned by XPathResult interfaces to represent the XPath namespace node type 
	 * that DOM lacks. There is no public constructor for this node type. Attempts to place it into a hierarchy or a 
	 * NamedNodeMap result in a DOMException with the code HIERARCHY_REQUEST_ERR. This node is read only, so methods 
	 * or setting of attributes that would mutate the node result in a DOMException with the code NO_MODIFICATION_ALLOWED_ERR.
	 * 
	 * <p>The core specification describes attributes of the Node interface that are different for different node 
	 * types but does not describe XPATH_NAMESPACE_NODE, so here is a description of those attributes for this node 
	 * type. All attributes of Node not described in this section have a null or false value.</p>
	 * 
	 * <p>ownerDocument matches the ownerDocument of the ownerElement even if the element is later adopted.</p>
	 * 
	 * <p>nodeName is always the string "#namespace".</p>
	 * 
	 * <p>prefix is the prefix of the namespace represented by the node.</p>
	 * 
	 * <p>localName is the same as prefix.</p>
	 * 
	 * <p>nodeType is equal to XPATH_NAMESPACE_NODE.</p>
	 * 
	 * <p>namespaceURI is the namespace URI of the namespace represented by the node.</p>
	 * 
	 * <p>nodeValue is the same as namespaceURI.</p>
	 * 
	 * <p>adoptNode, cloneNode, and importNode fail on this node type by raising a DOMException with the code NOT_SUPPORTED_ERR.</p>
	 * 
	 * <p><strong>Note:</strong> In future versions of the XPath specification, the definition of a namespace node may be changed 
	 * incomatibly, in which case incompatible changes to field values may be required to implement versions beyond XPath 1.0.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathNamespace W3C - XPathNamespace
	 * 
	 * @playerversion DOMXPath 3
	 * @since DOMXPath 3
	 */
	public class XPathNamespace extends Node {
		
		// XPathNodeType
		/**
		 * An integer indicating which type of node this is.
		 * 
		 * <p><strong>Note:</strong> There is currently only one type of node which is specific to XPath. The numbers 
		 * in this list must not collide with the values assigned to core node types.</p>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPATH_NAMESPACE_NODE W3C - XPathNamespace.XPATH_NAMESPACE_NODE
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public static const XPATH_NAMESPACE_NODE:Number = 13;
		
		/**
		 * The Element on which the namespace was in scope when it was requested. This does not change 
		 * on a returned namespace node even if the document changes such that the namespace goes out of 
		 * scope on that element and this node is no longer found there by XPath.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathNamespace-ownerElement W3C - XPathNamespace.ownerElement()
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function get ownerElement():Element { return null; };
	}
}