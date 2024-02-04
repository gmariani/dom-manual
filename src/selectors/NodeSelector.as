package selectors {
	
	import dom.core.Element;
	import dom.core.NodeList;
	import dom.core.types.DOMString;
	
	/**
	 * Objects implementing any of the Document, DocumentFragment or Element interfaces, as defined in DOM Level 3 Core, must also implement the NodeSelector interface.
	 * 
	 * @see http://www.w3.org/TR/selectors-api/#nodeselector W3C Selectors API
	 * 
	 * @playerversion Selectors 0
	 * @since DOMCore 3
	 */
	public interface NodeSelector {
		
		/**
		 * Returns the first element that is a descendent of the element on which it is invoked that matches the specified group of selectors.
		 * 
		 * @throws dom.core.DOMException NAMESPACE_ERR: May be raised if the group of selectors include namespace prefixes that need to be resolved.
		 * 
		 * @param	selectors One or more selectors
		 * @return The first matching Element node within the node’s subtree. If there is no such node, returns null. 
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
		function querySelector(selectors:DOMString):Element;
		
		/**
		 * Returns a list of all elements descended from the element on which it is invoked that match the specified group of selectors.
		 * 
		 * @throws dom.core.DOMException NAMESPACE_ERR: May be raised if the group of selectors include namespace prefixes that need to be resolved.
		 * 
		 * @param	selectors One or more selectors
		 * @return A NodeList containing all of the matching Element nodes within the node’s subtree, in document order. If there are no such nodes, returns an empty NodeList.
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
		function querySelectorAll(selectors:DOMString):NodeList;
	}
}