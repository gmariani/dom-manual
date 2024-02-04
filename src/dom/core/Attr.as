package dom.core {
	
	import dom.core.Node;
	import dom.core.Element;
	import dom.core.types.DOMString;
	
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
	 * A node has been added as a child of another node or, in case of Attr 
	 * nodes, has been added to an Element. This event is dispatched after 
	 * the insertion has taken place. The target node of this event is the 
	 * node being inserted.
	 *
	 * @eventType DOMNodeInserted
	 */
	[Event(name = "DOMNodeInserted", type = "dom.events.MutationEvent")]
	
	/**
	 * A node is being removed from its parent node or, in case of Attr nodes, 
	 * removed from its ownerElement. This event is dispatched before the 
	 * removal takes place. The target node of this event is the node 
	 * being removed.
	 *
	 * @eventType DOMNodeRemoved
	 */
	[Event(name = "DOMNodeRemoved", type = "dom.events.MutationEvent")]
	
	/**
	 * A node is being removed from a document, either through direct removal 
	 * of the node or removal of a subtree in which it is contained; Attr nodes 
	 * are considered part of an Element's subtree. This event is dispatched 
	 * before the removal takes place. The target node of this event type is 
	 * the node being removed. If the node is being directly removed, the event 
	 * type DOMNodeRemoved occurs before this event type.
	 *
	 * @eventType DOMNodeRemovedFromDocument
	 */
	[Event(name = "DOMNodeRemovedFromDocument", type = "dom.events.MutationEvent")]
	
	/**
	 * A node has been inserted into a document, either through direct insertion 
	 * of the node or insertion of a subtree in which it is contained; Attr nodes 
	 * are considered part of an Element's subtree. This event is dispatched 
	 * after the insertion has taken place. The target node of this event is the 
	 * node being inserted. If the node is being directly inserted, the event type 
	 * DOMNodeInserted occurs before this event type.
	 *
	 * @eventType DOMNodeInsertedIntoDocument
	 */
	[Event(name = "DOMNodeInsertedIntoDocument", type = "dom.events.MutationEvent")]
	
	/**
	 * This type represents a DOM element's attribute as an object. In most DOM methods, you 
	 * will probably directly retrieve the attribute as a string (e.g., getAttribute), but 
	 * certain functions (e.g., getAttributeNode()) or means of iterating give Attr types.
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/dd347043%28VS.85%29.aspx MSDN - Attr Prototype
	 * @see http://developer.mozilla.org/En/DOM/Attr MDC - Attr
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-637646024 W3C - Attr
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 * @modified DOMCore 3
	 */
	public class Attr extends Node {
		
		/**
		 * Sets or retrieves a value indicating whether arbitrary variables can be created within the object.
		 * 
		 * <p><strong>Note:</strong> You can extend the properties on an object by creating arbitrary properties 
		 * with values. You should be careful, however, because you can unintentionally set a property value when 
		 * scripting in a case-sensitive language such as Microsoft JScript. For example, if the property value 
		 * is borderColor and you type the value "bordercolor = 'blue'", you have, in fact, created another property 
		 * on the style object called bordercolor with the value 'blue'. If you query the value of the property, 
		 * the value "blue" is returned. However, the borders for the element do not turn blue.</p>
		 * 
		 * <p><strong>Note:</strong> Setting the  expando property of the  document object to false precludes the 
		 * functionality of all expandos within the document.</p>
		 * 
		 * @default true
		 * 
		 * @example
		 * The following example demonstrates that, by setting the expando property of the document object to false, 
		 * the document ignores the  UNSELECTABLE expando on the  span and allows you to select the text.
		 * <listing>
		 * &lt;html&gt;
		 * 
		 * &lt;head&gt;
		 * &lt;script type="text/javascript"&gt;
		 * 	//Set the expando property to false.
		 * 	document.expando = false;
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body&gt;
		 * 
		 * &lt;div&gt;
		 * &lt;span id="oSpan" unselectable="on"&gt;This text should be selectable.&lt;/span&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;/body&gt;
		 * 
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533747%28VS.85%29.aspx MSDN - expando Property
		 * 
		 * @playerversion Non-Standard Microsoft
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
		public function get expando():Boolean { return false; };
		public function set expando(value:Boolean):void { };
		
		/**
		 * Returns whether this attribute is known to be of type ID (i.e. to 
		 * contain an identifier for its owner element) or not. 
		 * 
		 * <p>When it is and its value is unique, the ownerElement of this 
		 * attribute can be retrieved using the method Document.getElementById.</p>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Attr.isId MDC - Attr.isId
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Attr-isId W3C - Attr.isId
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get isId():Boolean { return false; };
		
		/**
		 * Returns the name of this attribute. If Node.localName is different 
		 * from null, this attribute is a qualified name.
		 * 
		 * <p><strong>Note (IE8):</strong>  Internet Explorer 8 and later. In IE8 mode, dynamically setting the name attribute on an input type=radio button correctly applies that button to the same named group.</p>
		 * 
		 * <p><strong>Note (IE):</strong> When submitting a form, use the name property to bind the value of the control. The name is not the value displayed for the input type=button, input type=reset, and input type=submit input types. The internally stored value is submitted with the form, not the displayed value.</p>
		 * 
		 * <p><strong>Note (IE):</strong> Microsoft JScript allows the name to be changed at run time. This does not cause the name in the programming model to change in the collection of elements, but it does change the name used for submitting elements.</p>
		 * 
		 * <p><strong>Note (IE8):</strong>  Internet Explorer 8 and later can set the NAME attribute at run time on elements dynamically created with the createElement method. To create an element with a NAME attribute in earlier versions of Internet Explorer, include the attribute and its value when using the createElement method.</p>
		 * 
		 * @example
		 * <listing>
		 * var inp = document.createElement('input');
		 * inp.setAttribute('type',  'radio');
		 * inp.setAttribute('name',  'Q'+count);
		 * inp.setAttribute('value', answers[i]);</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534184%28VS.85%29.aspx MSDN - NAME Attribute | name Property
		 * @see http://developer.mozilla.org/En/DOM/Attr.name MDC - Attr.name
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1112119403 W3C - Attr.name
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get name():DOMString { return null; };
		
		/**
		 * The Element node this attribute is attached to or null if this 
		 * attribute is not in use.
		 * 
		 * <p><strong>Note (IE8):</strong> This property is new as of Internet Explorer 8. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/dd347028%28VS.85%29.aspx MSDN - ownerElement Property
		 * @see http://developer.mozilla.org/En/DOM/Attr.ownerElement MDC - Attr.ownerElement
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Attr-ownerElement W3C - Attr.ownerElement
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 */
		public function get ownerElement():Element { return null; };
		
		/**
		 * The type information associated with this attribute.
		 * 
		 * <p>While the type 
		 * information contained in this attribute is guarantee to be correct 
		 * after loading the document or invoking Document.normalizeDocument(), 
		 * schemaTypeInfo may not be reliable if the node was moved. </p>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Attr.schemaTypeInfo MDC - Attr.schemeTypeInfo
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Attr-schemaTypeInfo W3C - Attr.schemeTypeInfo
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get schemeTypeInfo():TypeInfo { return null; };
		
		/**
		 * True if this attribute was explicitly given a value in the instance 
		 * document, false otherwise. 
		 * 
		 * <p>If the application changed the value of 
		 * this attribute node (even if it ends up having the same value as the 
		 * default value) then it is set to true. The implementation may handle 
		 * attributes with default values from other schemas similarly but 
		 * applications should use Document.normalizeDocument() to guarantee 
		 * this information is up-to-date.</p>
		 * 
		 * @example
		 * his example uses the specified property to determine the attributes set for an object. 
		 * The function checks each attribute, and lists all of the attributes of the object and the 
		 * value of each attribute. In addition, each attribute that is set is displayed.
		 * <listing>
		 * &lt;script&gt;
		 * function fnFindSpecified(){
		 * 	var oAttributes=oList.attributes;
		 * 	alert(oAttributes(0).nodeName);
		 * 	for(var i=0;i&lt;oAttributes.length;i++){
		 * 		var oNode=document.createElement("LI");
		 * 		var oNodeValue=document.createTextNode(i + " "
		 * 			+ oAttributes(i).nodeName + " = "
		 * 			+ oAttributes(i).nodeValue);
		 * 		oList.appendChild(oNode);
		 * 		oNode.appendChild(oNodeValue);
		 * 		if(oAttributes(i).nodeValue!=null){
         * 			alert(oAttributes(i).nodeName
         * 			+ " specified: " + oAttributes(i).specified);
		 * 		}
		 * 	}
		 * }
		 * &lt;/script&gt;
		 * 
		 * &lt;ul id=oList onclick="fnFindSpecified()"&gt;
		 * &lt;li&gt;Click to Find Specified Attributes&lt;/li&gt;
		 * &lt;/ul&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534637%28VS.85%29.aspx MSDN - specified Property
		 * @see http://developer.mozilla.org/En/DOM/Attr.specified MDC - Attr.specified
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-862529273 W3C - Attr.specified
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		override public function get specified():Boolean { return false; };
		
		/**
		 * On retrieval, the value of the attribute is returned as a string. 
		 * Character and general entity references are replaced with their 
		 * values.
		 * 
		 * <p>On setting, this creates a Text node with the unparsed contents of 
		 * the string, i.e. any characters that an XML processor would 
		 * recognize as markup are instead treated as literal text.</p>
		 * 
		 * <p><strong>Note (IE8):</strong>  Internet Explorer 8 or later. In IE8 mode, the value property 
		 * is correctly reported as a canonical attribute name. For example, &lt;input type="text" readonly&gt; 
		 * and &lt;input type="text" readonly="readonly"&gt; would both set the input text field to read-only. 
		 * In IE8 mode, the value is evaluated as a cannonical value, "readonly". In earlier document 
		 * compatibility modes, it is evaluated as a Boolean value, true.</p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised when 
		 * the node is readonly.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535129%28VS.85%29.aspx MSDN - value Property
		 * @see http://developer.mozilla.org/En/DOM/Attr.value MDC - Attr.value
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-221662474 W3C - Attr.value
		 * @see dom.core.Element#getAttribute
		 * @see dom.core.Element#setAttribute
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get value():DOMString { return null; };
		public function set value(value:DOMString):void { };
	}
}