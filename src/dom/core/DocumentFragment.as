package dom.core {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	import selectors.NodeSelector;
	
	//--------------------------------------
    //  Events
    //--------------------------------------
	
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
	 * A DocumentFragment is a minimal document object that has no parent. 
	 * 
	 * <p>It is used as a light-weight version of document to store well-formed 
	 * or potentially non-well-formed fragments of XML.</p>
	 * 
	 * <p>Various other methods can take a document fragment as an argument (e.g., 
	 * any Node interface methods such as appendChild and insertBefore), in 
	 * which case the children of the fragment are appended or inserted, not 
	 * the fragment itself.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms759155%28VS.85%29.aspx MSDN - IXMLDOMDocumentFragment
	 * @see http://developer.mozilla.org/En/DOM/DocumentFragment MDC - DocumentFragment
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-B63ED1A3 W3C - DocumentFragment
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 */
	public class DocumentFragment extends Node implements NodeSelector {
		
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
		 * @see http://www.w3.org/TR/selectors-api/#nodeselector W3C Selectors API
		 * 
		 * @playerversion Selectors 0
		 * @since DOMCore 3
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
		 * @see http://www.w3.org/TR/selectors-api/#nodeselector W3C Selectors API
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
		 * @productversion Firefox 3.5b4
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b
		 */
		public function querySelectorAll(selectors:DOMString):NodeList { return null; };
	}
}