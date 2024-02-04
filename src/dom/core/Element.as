package dom.core {
	
	import cssom.view.ElementView;
	import selectors.NodeSelector;
	import dom.style.css.CSSStyleDeclaration;
	import elementtraversal.ElementTraversal;
	import gecko.nsIURI;
	import cssom.view.TextRectangle;
	import cssom.view.TextRectangleList;
	import dom.core.types.DOMString;
	import dom.core.NodeList;
	import dom.core.Node;
	import dom.core.Attr;
	import dom.core.TypeInfo;
	
	//--------------------------------------
    //  Events
    //--------------------------------------
	
	/**
	 * A pointing device button is clicked over an element. The definition of a 
	 * click depends on the environment configuration; i.e. it may depend on the 
	 * screen location or the delay between the press and release of the pointing 
	 * device button. In any case, the event target must be the same between the 
	 * mousedown, mouseup, and click. The sequence of these events is: mousedown, 
	 * mouseup, and click. It depends on the environment configuration whether 
	 * the event type click can occur if one or more of the event types mouseover, 
	 * mousemove, and mouseout occur between the press and release of the pointing 
	 * device button. In addition, the event type is dispatched as described in 
	 * Activation requests and behavior.
	 *
	 * @eventType click
	 */
	[Event(name = "click", type = "dom.events.MouseEvent")]
	
	/**
	 * A pointing device button is clicked twice over an element. The definition 
	 * of a double click depends on the environment configuration, except that 
	 * the event target must be the same between mousedown, mouseup, and dblclick. 
	 * This event type is dispatched after the event type click if a click and 
	 * double click occur simultaneously, and after the event type mouseup otherwise.
	 * 
	 * @eventType dblclick
	 */
	[Event(name = "dblclick", type = "dom.events.MouseEvent")]
	
	/**
	 * A pointing device button is pressed over an element.
	 * 
	 * @eventType mousedown
	 */
	[Event(name = "mousedown", type = "dom.events.MouseEvent")]
	
	/**
	 * A pointing device button is released over an element.
	 * 
	 * @eventType mouseup
	 */
	[Event(name = "mouseup", type = "dom.events.MouseEvent")]
	
	/**
	 * A pointing device is moved onto an element.
	 * 
	 * @eventType mouseover
	 */
	[Event(name = "mouseover", type = "dom.events.MouseEvent")]
	
	/**
	 * A pointing device is moved while it is over an element.
	 * 
	 * @eventType mousemove
	 */
	[Event(name = "mousemove", type = "dom.events.MouseEvent")]
	
	/**
	 * A pointing device is moved away from an element.
	 * 
	 * @eventType mouseout
	 */
	[Event(name = "mouseout", type = "dom.events.MouseEvent")]
	
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
	 * Occurs after Attr.value has been modified and after an Attr node has been 
	 * added to or removed from an Element. The target node of this event is 
	 * the Element node where the change occured. It is implementation dependent 
	 * whether this event type occurs when the children of the Attr node are 
	 * changed in ways that do not affect the value of Attr.value.
	 *
	 * @eventType DOMAttrModified
	 */
	[Event(name = "DOMAttrModified", type = "dom.events.MutationEvent")]
	
	/**
	 * Occurs after the namespaceURI and/or the nodeName of an Element node 
	 * have been modified (e.g., the element was renamed using 
	 * Document.renameNode()). The target node of this event is the renamed 
	 * Element node.
	 *
	 * @eventType DOMElementNameChanged
	 */
	[Event(name = "DOMElementNameChanged", type = "dom.events.MutationNameEvent")]
	
	/**
	 * Occurs after the namespaceURI and/or the nodeName of a Attr node have 
	 * been modified (e.g., the attribute was renamed using 
	 * Document.renameNode()). The target node of this event is the Element 
	 * node whose Attr has been renamed.
	 *
	 * @eventType DOMAttributeNameChanged
	 */
	[Event(name = "DOMAttributeNameChanged", type = "dom.events.MutationNameEvent")]
	
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
	 * Loading of a resource has been aborted.
	 *
	 * @eventType abort
	 */
	[Event(name = "abort", type = "dom.events.Event")]
	
	/**
	 * A resource failed to load, or has been loaded but cannot be interpreted 
	 * according to its semantics such as an invalid image, a script execution 
	 * error, or non-well-formed XML.
	 *
	 * @eventType error
	 */
	[Event(name = "error", type = "dom.events.Event")]
	
	/**
	 * A user selects some text. DOM Level 3 Events does not provide contextual 
	 * information to access the selected text. The selection occured before 
	 * the dispatch of this event type.
	 *
	 * @eventType select
	 */
	[Event(name = "select", type = "dom.events.Event")]
	
	/**
	 * A control loses the input focus and its value has been modified since 
	 * gaining focus. This event type is dispatched before the event type blur.
	 *
	 * @eventType change
	 */
	[Event(name = "change", type = "dom.events.Event")]
	
	/**
	 * A form, such as a [HTML 4.01] or [XHTML 1.0] form, is submitted.
	 *
	 * @eventType submit
	 */
	[Event(name = "submit", type = "dom.events.Event")]
	
	/**
	 * A form, such as a [HTML 4.01] or [XHTML 1.0] form, is reset.
	 *
	 * @eventType reset
	 */
	[Event(name = "reset", type = "dom.events.Event")]
	
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
	 * Refer to Activation requests and behavior.
	 *
	 * @eventType DOMActivate
	 */
	[Event(name = "DOMActivate", type = "dom.events.UIEvent")]
	
	/**
	 * An event target receives focus. The focus is given to the element 
	 * before the dispatch of this event type. This event type is 
	 * dispatched after the event type focus.
	 *
	 * @eventType DOMFocusIn
	 */
	[Event(name = "DOMFocusIn", type = "dom.events.UIEvent")]
	
	/**
	 * An event target loses focus. The focus is taken from the element before 
	 * the dispatch of this event type. This event type is dispatched after 
	 * the event type blur.
	 *
	 * @eventType DOMFocusOut
	 */
	[Event(name = "DOMFocusOut", type = "dom.events.UIEvent")]
	
	// START Gecko Specific DOM Events //
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Fired on a Window object when a document's DOM content is finished loading, 
	 * but unlike "load", does not wait until all images are loaded. Used for 
	 * example by GreaseMonkey to sneak in to alter pages before they are displayed.
	 * 
	 * This event, as many others on this page, is dispatched to "trusted" targets only; 
	 * for example, it is not dispatched to the content of the main browser object in 
	 * Firefox, even if it comes from a chrome:/ URI.
	 *
	 * @eventType DOMContentLoaded
	 */
	[Event(name = "DOMContentLoaded", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Same as DOMContentLoaded, but also fired for enclosed frames.
	 *
	 * @eventType DOMFrameContentLoaded
	 */
	[Event(name = "DOMFrameContentLoaded", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Fired when the window is about to be closed by window.close().
	 *
	 * @eventType DOMWindowClose
	 */
	[Event(name = "DOMWindowClose", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific | Firefox 3.5+</strong> 
	 * 
	 * The MozAfterPaint event is fired whenever content is repainted.  It is sent to the 
	 * document and bubbles up to the window level.
	 * 
	 * @see http://developer.mozilla.org/en/Gecko-Specific_DOM_Events
	 *
	 * @eventType MozAfterPaint
	 */
	[Event(name = "MozAfterPaint", type = "gecko.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * The DOMMouseScroll event is sent when the mouse wheel is moved. The target of this 
	 * event is the element that was under the mouse pointer when the mouse wheel was 
	 * scrolled, similar to the click event.
	 *
	 * @eventType DOMMouseScroll
	 */
	[Event(name = "DOMMouseScroll", type = "gecko.events.MouseEvent")]
	
	/**
	 * <strong>Gecko-Specific | Firefox 3.5+</strong> 
	 * 
	 * Regular mouse wheels can only scroll with a per-line resolution. However, there are also 
	 * devices that support scrolling with pixel precision, notably Apple MacBook trackpads.
	 * 
	 * When we started supporting pixel scrolling in bug 350471, we added the MozMousePixelScroll 
	 * event. It basically works exactly like DOMMouseScroll, with the difference that the detail
	 * attribute is in pixels (instead of lines).
	 * 
	 * For backwards compatibility DOMMouseScroll events are sent even if pixel scrolling is used. 
	 * Every DOMMouseScroll event can have several associated MozMousePixelScroll events. If 
	 * preventDefault() is called on the DOMMouseScroll event, the following associated 
	 * MozMousePixelScroll events won't cause any scrolling.
	 * 
	 * When you listen for MozMousePixelScroll events, you shouldn't handle DOMMouseScroll events - 
	 * otherwise you'd end up processing the same scroll gesture twice. In order to make it possible 
	 * to only listen for MozMousePixelScroll events, Gecko will send MozMousePixelScroll events 
	 * even when scrolling with regular mouse wheels. These events will carry a meaningful pixel delta.
	 *
	 * @eventType MozMousePixelScroll
	 */
	[Event(name = "MozMousePixelScroll", type = "gecko.events.MouseEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Undocumented
	 * 
	 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=286013 bug 286013
	 *
	 * @eventType DOMLinkAdded
	 */
	[Event(name = "DOMLinkAdded", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Undocumented
	 * 
	 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=286013 bug 286013
	 *
	 * @eventType DOMLinkRemoved
	 */
	[Event(name = "DOMLinkRemoved", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Undocumented
	 * 
	 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=286013 bug 286013
	 *
	 * @eventType DOMWillOpenModalDialog
	 */
	[Event(name = "DOMWillOpenModalDialog", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Undocumented
	 * 
	 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=286013 bug 286013
	 *
	 * @eventType DOMModalDialogClosed
	 */
	[Event(name = "DOMModalDialogClosed", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Undocumented
	 * 
	 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=286013 bug 286013
	 *
	 * @eventType fullscreen
	 */
	[Event(name = "fullscreen", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Undocumented
	 * 
	 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=286013 bug 286013
	 *
	 * @eventType PopupWindow
	 */
	[Event(name = "PopupWindow", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Undocumented
	 * 
	 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=286013 bug 286013
	 *
	 * @eventType DOMTitleChanged
	 */
	[Event(name = "DOMTitleChanged", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Undocumented
	 * 
	 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=286013 bug 286013
	 *
	 * @eventType PluginNotFound
	 */
	[Event(name = "PluginNotFound", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Undocumented
	 * 
	 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=286013 bug 286013
	 *
	 * @eventType ValueChange
	 */
	[Event(name = "ValueChange", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Undocumented
	 * 
	 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=286013 bug 286013
	 *
	 * @eventType DOMMenuItemActive
	 */
	[Event(name = "DOMMenuItemActive", type = "dom.events.UIEvent")]
	
	/**
	 * <strong>Gecko-Specific</strong> 
	 * 
	 * Undocumented
	 * 
	 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=286013 bug 286013
	 *
	 * @eventType windowZLevel
	 */
	[Event(name = "windowZLevel", type = "dom.events.UIEvent")]
	
	// END Gecko Specific DOM Events //
	
	/**
	 * An event target receives focus. The focus is given to the element 
	 * before the dispatch of this event type.
	 *
	 * @eventType focus
	 */
	[Event(name = "focus", type = "dom.events.UIEvent")]
	
	/**
	 * An event target loses focus. The focus is taken from the element before 
	 * the dispatch of this event type.
	 *
	 * @eventType blur
	 */
	[Event(name = "blur", type = "dom.events.UIEvent")]
	
	/**
	 * One or more characters have been entered. The characters can originate 
	 * from a variety of sources. For example, it could be characters 
	 * resulting from a key being pressed or released on a keyboard device, 
	 * characters resulting from the processing of an input method editor, or 
	 * resulting from a voice command. Where a "paste" operation generates a 
	 * simple sequence of characters, i.e. a text without any structure or 
	 * style information, this event type should be generated as well.
	 *
	 * @eventType textInput
	 */
	[Event(name = "textInput", type = "dom.events.TextEvent")]
	
	/**
	 * A key is pressed down. This event type is device dependent and relies 
	 * on the capabilities of the input devices and how they are mapped in the 
	 * operating system. This event type is generated after the keyboard 
	 * mapping but before the processing of an input method editor. This event 
	 * should logically happen before the event keyup is produced. Whether a 
	 * keydown contributes or not to the generation of a text event is 
	 * implementation dependent.
	 *
	 * @eventType keydown
	 */
	[Event(name = "keydown", type = "dom.events.KeyboardEvent")]
	
	/**
	 * A key is released. This event type is device dependent and relies on the 
	 * capabilities of the input devices and how they are mapped in the operating 
	 * system. This event type is generated after the keyboard mapping but before 
	 * the processing of an input method editor. This event should logically 
	 * happen after the event keydown is produced. Whether a keyup contributes 
	 * or not to the generation of a text event is implementation dependent.
	 *
	 * @eventType keyup
	 */
	[Event(name = "keyup", type = "dom.events.KeyboardEvent")]
	
	/**
	 * The Element interface represents an element in an HTML or XML document. 
	 * 
	 * <p>Elements may have attributes associated with them; since the Element 
	 * interface inherits from Node, the generic Node interface attribute 
	 * attributes may be used to retrieve the set of all attributes for an 
	 * element. There are methods on the Element interface to retrieve either 
	 * an Attr object by name or an attribute value by name. In XML, where an 
	 * attribute value may contain entity references, an Attr object should be 
	 * retrieved to examine the possibly fairly complex sub-tree representing 
	 * the attribute value. On the other hand, in HTML, where all attributes 
	 * have simple string values, methods to directly access an attribute value 
	 * can safely be used as a convenience.</p>
	 * 
	 * <p>Note: In DOM Level 2, the method normalize is inherited from the Node 
	 * interface where it was moved.</p>
	 * 
	 * <p>Includes the <a href="http://www.w3.org/TR/2008/REC-ElementTraversal-20081222/">ElementTraversal Specification</a></p>
	 * 
	 * @internal 
	 * Sources:
	 * http://msdn.microsoft.com/en-us/library/dd347058(VS.85).aspx#
	 * http://developer.mozilla.org/en/DOM/element
	 * http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-745549614
	 * 
	 * ASDoc Help:
	 * http://livedocs.adobe.com/flex/3/html/help.html?content=asdoc_6.html
	 * http://livedocs.adobe.com/flex/3/html/help.html?content=asdoc_3.html
	 * 
	 * http://www.aptana.com/reference/html/api/Element.html
	 */
	public class Element extends Node implements ElementView, ElementTraversal, NodeSelector {
		
		// START ElementView //
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>var rect = obj.getBoundingClientRect();</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536433(VS.85).aspx MSDN: getBoundingClientRect Method
		 * @see http://developer.mozilla.org/en/DOM/element.getBoundingClientRect  MDC - Element: getBoundingClientRect Method
		 * @see http://www.w3.org/TR/cssom-view/#the-getclientrects W3C - CSSOM View: getBoundingClientRect Method
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#documentview  Quirksmode: DocumentView and ElementView methods
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_almost
		 * @productversion Firefox 3.1b_almost
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		public function getClientRects():TextRectangleList { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * var rects = obj.getClientRects();
		 * var numLines = rects.length;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536435(VS.85).aspx  MSDN: getClientRects Method
		 * @see http://developer.mozilla.org/en/DOM/element.getClientRects  MDC - Element: getClientRects Method
		 * @see http://www.w3.org/TR/cssom-view/#the-getclientrects W3C - CSSOM View: getClientRects Method
		 * @see http://ejohn.org/blog/getboundingclientrect-is-awesome/  John Resig
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#documentview  Quirksmode: DocumentView and ElementView methods
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 * @productversion IE 5.5_buggy
		 * @productversion IE 6.0_buggy
		 * @productversion IE 7.0_buggy
		 * @productversion IE 8.0_as_IE7_buggy
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_almost
		 * @productversion Firefox 3.1b_almost
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		public function getBoundingClientRect():TextRectangle { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * This example shows how to determine the position of a td object. Although the td 
		 * object appears to the far right in the document, its position is close to the x-axis and y-axis, 
		 * because its offset parent is a table object rather than the document body. For Internet Explorer 4.0,
		 * this same example returns a position of 0,0 because the offset parent is the table row.
		 * 
		 * <listing>
		 * &lt;table border='1' align='right'&gt;
		 * 	&lt;tr&gt;
		 * 		&lt;td id='oCell'&gt;This is a small table.&lt;/td&gt;
		 * 	&lt;/tr&gt;
		 * &lt;/table&gt;</listing>
		 * 
		 * <listing>
		 * var oElement = document.getElementById("oCell");
		 * 
		 * alert("The TD element is at (" + oElement.offsetLeft + 
		 * "," + oElement.offsetTop + ")\n" + "The offset parent is " 
		 * + oElement.offsetParent.tagName );</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534302(VS.85).aspx  MSDN: offsetParent Property
		 * @see http://developer.mozilla.org/en/DOM/element.offsetParent  MDC - Element: offsetParent Property
		 * @see http://www.w3.org/TR/cssom-view/#offset-attributes  W3C - CSSOM View: offsetParent Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		public function get offsetParent():Element { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * d = document.getElementById("div1");
		 * 
		 * topPos = d.offsetTop;
		 * 
		 * if (topPos > 10) {
		 * 	// object is offset more
		 * 	// than 10 pixels from its parent
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms530302(VS.85).aspx  MSDN: Measuring Element Dimension and Location
		 * @see http://msdn.microsoft.com/en-us/library/ms534303(VS.85).aspx  MSDN: offsetTop Property
		 * @see http://developer.mozilla.org/en/DOM/element.offsetTop  MDC - Element: offsetTop Property
		 * @see http://www.w3.org/TR/cssom-view/#offset-attributes  W3C - CSSOM View: offsetTop Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 * @productversion IE 5.5_incorrect
		 * @productversion IE 6.0_incorrect
		 * @productversion IE 7.0_incorrect
		 * @productversion IE 8.0_as_IE7_incorrect
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		public function get offsetTop():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * var colorTable = document.getElementById("t1");
		 * var tOLeft = colorTable.offsetLeft;
		 * 
		 * if (tOLeft > 5) {
		 * 	// large left offset: do something here
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms530302(VS.85).aspx  MSDN: Measuring Element Dimension and Location
		 * @see http://msdn.microsoft.com/en-us/library/ms534200(VS.85).aspx  MSDN: offsetLeft Property
		 * @see http://developer.mozilla.org/en/DOM/element.offsetLeft  MDC - Element: offsetLeft Property
		 * @see http://www.w3.org/TR/cssom-view/#offset-attributes  W3C - CSSOM View: offsetLeft Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 * @productversion IE 5.5_incorrect
		 * @productversion IE 6.0_incorrect
		 * @productversion IE 7.0_incorrect
		 * @productversion IE 8.0_as_IE7_incorrect
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		public function get offsetLeft():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * This example adjusts the size of a clock's readout to fit the current width and height of the document.
		 * 
		 * <listing>
		 * &lt;div id=oDiv STYLE="overflow:scroll; width:200; height:100"&gt; . . . &lt;/div&gt;
		 * &lt;button onclick="alert(oDiv.clientWidth)"&gt;client width&lt;/button&gt;
		 * &lt;button onclick="alert(oDiv.offsetWidth)"&gt;offset width&lt;/button&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms530302(VS.85).aspx  MSDN: Measuring Element Dimension and Location
		 * @see http://msdn.microsoft.com/en-us/library/ms534304(VS.85).aspx  MSDN: offsetWidth Property
		 * @see http://developer.mozilla.org/en/DOM/element.offsetWidth  MDC - Element: offsetWidth Property
		 * @see http://www.w3.org/TR/cssom-view/#offset-attributes  W3C - CSSOM View: offsetWidth Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		public function get offsetWidth():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * This example adjusts the size of a clock's readout to fit the current width and height of the document body.
		 * 
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;A Simple Clock&lt;/title&gt;
		 * &lt;script type="text/javascript"&gt;
		 * 	function startClock() {
		 * 		window.setInterval("Clock_Tick()", 1000);
		 * 		Clock_Tick();
		 * 	}
		 * 
		 * 	var iRatio = 4;
		 * 	function Clock_Tick() {
		 * 		var dToday = Date();
		 * 		var sTime = dToday.substring(11,19);
		 * 		var iDocHeight = document.body.offsetHeight;
		 * 		var iDocWidth = document.body.offsetWidth;
		 * 
		 * 		if ((iDocHeight*iRatio)&gt;iDocWidth)
		 * 		iDocHeight = iDocWidth / iRatio;
		 * 		document.all.MyTime.innerText = sTime;
		 * 		document.all.MyTime.style.fontSize = iDocHeight;
		 * 	}
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * &lt;body onload="startClock()"&gt;
		 * &lt;p id="MyTime"&gt;&amp;nbsp;&lt;/p&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms530302(VS.85).aspx  MSDN: Measuring Element Dimension and Location
		 * @see http://msdn.microsoft.com/en-us/library/ms534199(VS.85).aspx  MSDN: offsetHeight Property
		 * @see http://developer.mozilla.org/en/DOM/element.offsetHeight  MDC - Element: offsetHeight Property
		 * @see http://www.w3.org/TR/cssom-view/#offset-attributes  W3C - CSSOM View: offsetHeight Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		public function get offsetHeight():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * // Get the number of pixels scrolled
		 * var  intElemScrollTop = element.scrollTop;</listing>
		 * 
		 * @see http://msdn.microsoft.com/workshop/author/dhtml/reference/properties/scrolltop.asp?frame=true  MSDN: scrollTop Property
		 * @see http://developer.mozilla.org/en/DOM/element.scrollTop  MDC - Element: scrollTop Property
		 * @see http://www.w3.org/TR/cssom-view/#scroll-attributes  W3C - CSSOM View: scrollTop Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		public function get scrollTop():Number { return 0; };
		public function set scrollTop(value:Number):void { };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * // Set the number of pixels scrolled
		 * element.scrollLeft = 10;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534617(VS.85).aspx  MSDN: scrollLeft Property
		 * @see http://developer.mozilla.org/en/DOM/element.scrollLeft  MDC - Element: scrollLeft Property
		 * @see http://www.w3.org/TR/cssom-view/#scroll-attributes  W3C - CSSOM View: scrollLeft Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		public function get scrollLeft():Number { return 0; };
		public function set scrollLeft(value:Number):void { };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;div id="aDiv" style="width: 100px; height: 200px; overflow: auto;"&gt;
		 * 	-FooBar-FooBar-FooBar
		 * &lt;/div&gt;
		 * &lt;br/&gt;
		 * &lt;input type="button" value="Show scrollWidth"
		 * onclick="alert(document.getElementById('aDiv').scrollWidth);"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534619(VS.85).aspx  MSDN: scrollWidth Property
		 * @see http://developer.mozilla.org/en/DOM/element.scrollWidth  MDC - Element: scrollWidth Property
		 * @see http://www.w3.org/TR/cssom-view/#scroll-attributes  W3C - CSSOM View: scrollWidth Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 * @productversion IE 5.5_incorrect
		 * @productversion IE 6.0_incorrect
		 * @productversion IE 7.0_incorrect
		 * @productversion IE 8.0_as_IE7_incorrect
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62_incorrect
		 * @productversion Opera 10.0a_incorrect
		 */
		public function get scrollWidth():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * This example uses the scrollHeight property to retrieve the height of the viewable content.
		 * 
		 * <listing>
		 * &lt;script type="text/javascript"&gt;
		 * 	function fnCheckScroll(){
		 * 		var iNewHeight = oDiv.scrollHeight;
		 * 		alert("The value of the scrollHeight property is: " 
		 * 		+ iNewHeight + "px"); 
		 * 	}
		 * &lt;/script&gt;
		 * ...
		 * &lt;div id="oDiv" style="overflow: scroll; height= 100px; width= 250px; text-align: left"&gt;
		 * 	... 
		 * &lt;/div&gt;
		 * &lt;button onclick="fnCheckScroll()"&gt;Check scrollHeight&lt;/button&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534615(VS.85).aspx  MSDN: scrollHeight Property
		 * @see http://developer.mozilla.org/en/DOM/element.scrollHeight  MDC - Element: scrollHeight Property
		 * @see http://www.w3.org/TR/cssom-view/#scroll-attributes  W3C - CSSOM View: scrollHeight Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 * @productversion IE 5.5_incorrect
		 * @productversion IE 6.0_incorrect
		 * @productversion IE 7.0_incorrect
		 * @productversion IE 8.0_as_IE7_incorrect
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62_incorrect
		 * @productversion Opera 10.0a_incorrect
		 */
		public function get scrollHeight():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533565(VS.85).aspx  MSDN: clientTop Property
		 * @see http://developer.mozilla.org/en/DOM/element.clientTop  MDC - Element: clientTop Property
		 * @see http://www.w3.org/TR/cssom-view/#client-attributes  W3C - CSSOM View: clientTop Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 */
		public function get clientTop():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533564(VS.85).aspx  MSDN: clientLeft Property
		 * @see http://developer.mozilla.org/en/DOM/element.clientLeft  MDC - Element: clientLeft Property
		 * @see http://www.w3.org/TR/cssom-view/#client-attributes  W3C - CSSOM View: clientLeft Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 */
		public function get clientLeft():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * This example shows how the clientWidth property and the offsetWidth property measure document width differently. The width of the div 
		 * is set to 200, and this is the value retrieved by the offsetWidth property, not the clientWidth property. 
		 * 
		 * <listing>
		 * &lt;div id=oDiv style="overflow:scroll; width:200; height:100"&gt; . . . &lt;/div&gt;
		 * &lt;button onclick="alert(oDiv.clientWidth)"&gt;client width&lt;/button&gt;
		 * &lt;button onclick="alert(oDiv.offsetWidth)"&gt;offset widthY&lt;/button&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533566(VS.85).aspx  MSDN: clientWidth Property
		 * @see http://developer.mozilla.org/en/DOM/element.clientWidth  MDC - Element: clientWidth Property
		 * @see http://www.w3.org/TR/cssom-view/#client-attributes  W3C - CSSOM View: clientWidth Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 */
		public function get clientWidth():Number { return 0; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * This example shows how the clientHeight property and the offsetHeight property measure document height differently. 
		 * The height of the div is set to 100, and this is the value retrieved by the offsetHeight property, not the clientHeight property. 
		 * 
		 * <listing>
		 * &lt;div id=oDiv style="overflow:scroll; width:200; height:100"&gt; . . . &lt;/div&gt;
		 * &lt;button onclick="alert(oDiv.clientHeight)">client height&lt;/button&gt;
		 * &lt;button onclick="alert(oDiv.offsetHeight)">offset heightY&lt;/button&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533563(VS.85).aspx  MSDN: clientHeight Property
		 * @see http://developer.mozilla.org/en/DOM/element.clientHeight  MDC - Element: clientHeight Property
		 * @see http://www.w3.org/TR/cssom-view/#client-attributes  W3C - CSSOM View: clientHeight Property
		 * @see http://www.quirksmode.org/dom/w3c_cssom.html#elementview  Quirksmode: ElementView properties
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 * @playerversion DOMCore 3
		 * @since DOM 0
		 */
		public function get clientHeight():Number { return 0; };
		
		// END ElementView //
		
		/**
		 * <strong>Non-Standard | FireFox 3+</strong> 
		 * 
		 * Returns the nsIURI  object representing the element's URI.
		 * 
		 * <p>Note: This property exists on all elements (HTML, XUL, SVG, MathML, 
		 * etc.), but only if the script trying to use it has UniversalXPConnect 
		 * privileges.</p>
		 */
		public function get baseURIObject():nsIURI { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Element.childElementCount  MDC - Element: childElementCount Property
		 * @see http://www.w3.org/TR/ElementTraversal/#attribute-childElementCount  W3C - Element Traversel: childElementCount Property
		 * @see http://quirksmode.org/dom/w3c_traversal.html  Quirksmode: W3C DOM Compatibility - Traversal
		 * @see #firstElementChild
		 * @see #lastElementChild
		 * @see #nextElementSibling
		 * @see #previousElementSibling
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0b
		 * @playerversion ElemTrav 0
		 */
		public function get childElementCount():Number { return 0; };
		
		/**
		 * <strong>? | FireFox 3.5+</strong> 
		 * 
		 * Returns a collection of child elements of the given element.
		 * 
		 * <p>The list returned is an ordered collection of element objects that 
		 * are children of the current element. If the element has no children, 
		 * then list returned contains no elements.</p>
		 * 
		 * <p>Note: The items in the collection of elements are objects and not 
		 * strings. To get data from those node objects, you must use their 
		 * properties (e.g. elementNodeReference.children[1].nodeName to get the 
		 * name, etc.).</p>
		 * 
		 * @example
		 * <listing>
		 * // parg is an object reference to a &lt;p> element
		 * if (parg.childElementCount()) {
		 * 	// So, first we check if the object is not empty, if the object has child nodes
		 * 	var children = parg.children;
		 * 	for (var i = 0; i &lt; children.length; i++) {
		 * 	// do something with each child element as children[i]
		 * 	// NOTE: List is live, Adding or removing children will change the list
		 * 	};
		 * };
		 * </listing>
		 */
		public function get children():NodeList { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * In this example, the alert shows "SPAN", which is the name of the 
		 * first child node of the paragraph element.
		 * <listing>
		 * &lt;p id="para-01">
		 * 	&lt;span>First span&lt;/span>
		 * &lt;/p>
		 * 
		 * &lt;script type="text/javascript">
		 * 	var p01 = document.getElementById('para-01');
		 * 	alert(p01.firstElementChild.nodeName);
		 * &lt;/script></listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Element.firstElementChild  MDC - Element: firstElementChild Property
		 * @see http://www.w3.org/TR/ElementTraversal/#attribute-firstElementChild  W3C - Element Traversel: firstElementChild Property
		 * @see http://quirksmode.org/dom/w3c_traversal.html  Quirksmode: W3C DOM Compatibility - Traversal
		 * @see #childElementCount
		 * @see #lastElementChild
		 * @see #nextElementSibling
		 * @see #previousElementSibling
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0b
		 * @playerversion ElemTrav 0
		 */
		public function get firstElementChild():Element { return null; };
		
		/**
		 * <strong>DOM Level 0 | NS\FireFox\IE4+</strong> 
		 * 
		 * Sets or gets all of the markup and content within a given element.
		 * 
		 * <p>Note: As there is no public specification for this property, 
		 * implementations differ widely. For example, when text is entered into 
		 * a text input, IE will change the value attribute of the input's 
		 * innerHTML property but Gecko browsers do not.</p>
		 * 
		 * <p>Note: It should never be used to write parts of a table—W3C DOM methods 
		 * should be used for that—though it can be used to write an entire table 
		 * or the contents of a cell.</p>
		 * 
		 * @example
		 * <listing>
		 * // HTML:
		 * // &lt;div id="d">&lt;p>Content&lt;/p>
		 * // &lt;p>Further Elaborated&lt;/p>
		 * // &lt;/div>
		 * 
		 * d = document.getElementById("d");
		 * dump(d.innerHTML);
		 * 
		 * // the string "&lt;p>Content&lt;/p>&lt;p>Further Elaborated&lt;/p>"
		 * // is dumped to the console window
		 * </listing>
		 */
		public function get innerHTML():DOMString { return null; };
		public function set innerHTML(value:DOMString):void { };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * In this example, the alert shows "B", which is the name of the 
		 * last child node of the paragraph element.
		 * <listing>
		 * &lt;p id="para-01">
		 * 	&lt;span>First span&lt;/span>
		 * 	&lt;b>bold&lt;/b>
		 * &lt;/p>
		 * 
		 * &lt;script type="text/javascript">
		 * 	var p01 = document.getElementById('para-01');
		 * 	alert(p01.lastElementChild.nodeName);
		 * &lt;/script></listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Element.lastElementChild  MDC - Element: lastElementChild Property
		 * @see http://www.w3.org/TR/ElementTraversal/#attribute-lastElementChild  W3C - Element Traversel: lastElementChild Property
		 * @see http://quirksmode.org/dom/w3c_traversal.html  Quirksmode: W3C DOM Compatibility - Traversal
		 * @see #childElementCount
		 * @see #firstElementChild
		 * @see #nextElementSibling
		 * @see #previousElementSibling
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0b
		 * @playerversion ElemTrav 0
		 */
		public function get lastElementChild():Element { return null; };
		
		// Only applies to the following elements: anchor, applet, form, frame, iframe, image, input, map, meta, object, option, param, select and textarea. 
		//public function get name():DOMString { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;div id="div-01">Here is div-01&lt;/div>
		 * &lt;div id="div-02">Here is div-02&lt;/div>
		 * 
		 * &lt;script type="text/javascript">
		 * 	var el = document.getElementById('div-01').nextElementSibling;
		 * 	document.write('&lt;p>Siblings of div-01&lt;/p>&lt;ol>');
		 * 	while (el) {
		 * 		document.write('&lt;li>' + el.nodeName + '&lt;/li>');
		 * 		el = el.nextElementSibling;
		 * 	}
		 * 	document.write('&lt;/ol>');
		 * &lt;/script></listing>
		 * 
		 * <p>This example outputs the following into the page when it loads:</p>
		 * 
		 * <p>Siblings of div-01</p>
		 * <ol>
		 * 	<li>DIV</li>
		 * 	<li>SCRIPT</li>
		 * 	<li>P</li>
		 * 	<li>OL</li>
		 * </ol>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Element.nextElementSibling  MDC - Element: nextElementSibling Property
		 * @see http://www.w3.org/TR/ElementTraversal/#attribute-nextElementSibling  W3C - Element Traversel: nextElementSibling Property
		 * @see http://quirksmode.org/dom/w3c_traversal.html  Quirksmode: W3C DOM Compatibility - Traversal
		 * @see #childElementCount
		 * @see #firstElementChild
		 * @see #lastElementChild
		 * @see #previousElementSibling
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0b
		 * @playerversion ElemTrav 0
		 */
		public function get nextElementSibling():Element { return null; };
		
		/**
		 * @inheritDoc
		 * 
		 * @example
		 * <listing>
		 * &lt;div id="div-01">Here is div-01&lt;/div>
		 * &lt;div id="div-02">Here is div-02&lt;/div>
		 * &lt;li>This is a list item&lt;/li>
		 * &lt;li>This is another list item&lt;/li>
		 * &lt;div id="div-03">Here is div-03&lt;/div>
		 * 
		 * &lt;script type="text/javascript">
		 * 	var el = document.getElementById('div-03').previousElementSibling;
		 * 	document.write('&lt;p>Siblings of div-03&lt;/p>&lt;ol>');
		 * 	while (el) {
		 * 		document.write('&lt;li>' + el.nodeName + '&lt;/li>');
		 * 		el = el.previousElementSibling;
		 * 	}
		 * 	document.write('&lt;/ol>');
		 * &lt;/script></listing>
		 * 
		 * <p>This example outputs the following into the page when it loads:</p>
		 * 
		 * <p>Siblings of div-03</p>
		 * <ol>
		 * 	<li>LI</li>
		 * 	<li>LI</li>
		 * 	<li>DIV</li>
		 * 	<li>DIV</li>
		 * </ol>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Element.previousElementSibling  MDC - Element: previousElementSibling Property
		 * @see http://www.w3.org/TR/ElementTraversal/#attribute-previousElementSibling  W3C - Element Traversel: previousElementSibling Property
		 * @see http://quirksmode.org/dom/w3c_traversal.html  Quirksmode: W3C DOM Compatibility - Traversal
		 * @see #childElementCount
		 * @see #firstElementChild
		 * @see #lastElementChild
		 * @see #nextElementSibling
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0b
		 * @playerversion ElemTrav 0
		 */
		public function get previousElementSibling():Element { return null; };
		
		/**
		 * <strong>DOM Level 3 | None</strong> 
		 * 
		 * The type information associated with this element. 
		 */
		public function get schemeTypeInfo():TypeInfo { return null; };
		
		/**
		 * The name of the element. If Node.localName is different from null, 
		 * this attribute is a qualified name.
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 * @productversion IE 5.0+
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 * @productversion Safari 1.3+
		 */
		public function get tagName():DOMString { return null; };
		
		/**
		 * Attaches a behavior to the element.
		 * 
		 * <p>This method, and the following remarks, apply only to attached 
		 * behaviors, which are the original Dynamic HTML (DHTML) behaviors 
		 * introduced in Microsoft Internet Explorer 5. Element behaviors are 
		 * a feature in Internet Explorer 5.5 and cannot be added to or 
		 * removed from an element.</p>
		 * 
		 * <p>This method enables you to attach a behavior without using Cascading 
		 * Style Sheets (CSS).</p>
		 * 
		 * <p>Unless the specified behavior in the addBehavior call is one of the 
		 * default behaviors built into Internet Explorer, the addBehavior call 
		 * causes Internet Explorer to download the behavior asynchronously, 
		 * before the behavior is attached to the element.</p>
		 * 
		 * <p>Due to the asynchronous nature of the addBehavior method, its return 
		 * value cannot be relied on to determine whether the behavior was 
		 * successfully applied to the element. Waiting for the onreadystatechange 
		 * event to fire and verifying that the readyState property of the element 
		 * is set to complete ensure that the behavior is completely attached to 
		 * the element, and that all the behavior's members are available for scripting. 
		 * Otherwise, attempting to use any behavior-defined member before the 
		 * behavior is attached to the element results in a scripting error indicating 
		 * that the object does not support that particular member.</p>
		 * 
		 * <p>Note : A behavior attached to an element using the addBehavior method, or by 
		 * applying the proposed CSS behavior attribute inline, is not automatically 
		 * detached from the element when the element is removed from the document hierarchy. 
		 * However, a behavior attached using a style rule defined in the document is 
		 * detached automatically as the element is removed from the document tree.</p>
		 * 
		 * @param	url Location of the behavior, in URL format.
		 * @return Returns an identifier that can be used later to detach the behavior from the element.
		 * 
		 * @example
		 * <listing>
		 * &lt;SCRIPT LANGUAGE="JScript">
		 * var collBehaviorID = new Array();
		 * var collLI = new Array ();
		 * var countLI = 0;
		 * 
		 * function attachBehavior() {
		 * 	collLI = document.all.tags("LI");
		 * 	countLI = collLI.length;
		 * 	for (i=0; i &lt; countLI; i++) {
		 * 		var iID = collLI[i].addBehavior("hilite.htc");
		 * 
		 * 		if (iID) collBehaviorID[i] = iID;
		 * 	}
		 * }
		 * &lt;/SCRIPT>
		 * 
		 * //Click &lt;A HREF="javascript:attachBehavior()">here&lt;/A>
		 * //to add a highlighting effect as you hover over each item below.
		 * </listing>
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE +5.5
		 */
		public function addBehavior(url:DOMString):Number { return 0; };
		
		/**
		 * Makes the element either a child or parent of another element.
		 * 
		 * @param	element An object that becomes the child or parent of the current element.
		 * @param	where Specifies one of the following values. 
		 * outside : Specified element becomes a parent of the current element.
		 * inside : Specified element becomes a child of the current element, but contains all the child elements of the current element.
		 * @return Returns a reference to the applied element.
		 * @example
		 * <listing>
		 * &lt;SCRIPT>
		 * function fnApply() {
		 * 	var oNewNode = document.createElement("I");
		 * 	oList.applyElement(oNewNode);
		 * }
		 * &lt;/SCRIPT>
		 * 
		 * &lt;UL ID = oList>
		 * &lt;LI>List item 1
		 * &lt;LI>List item 2
		 * &lt;LI>List item 3
		 * &lt;LI>List item 4
		 * &lt;/UL>
		 * &lt;INPUT TYPE="button" VALUE="Apply Element" onclick="fnApply()">
		 * </listing>
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 1.0+
		 */
		public function applyElement(element:Object, where:DOMString = "outside"):Object { return null; };
		
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
		 * Removes all attributes and values from the object.
		 * 
		 * <p>The clearAttributes method clears only persistent HTML attributes. 
		 * The ID attribute, styles, and script-only properties are not affected.</p>
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 5.0+
		 */
		public function clearAttributes():void { };
		
		/**
		 * Returns the component located at the specified coordinates via certain events.
		 * 
		 * <p>IE Note: The componentFromPoint method, available as of Microsoft Internet Explorer 5, 
		 * is applicable to any object that can be given scroll bars through Cascading Style Sheets (CSS).</p>
		 * 
		 * <p>The componentFromPoint method might not return the same object consistently when it 
		 * is used with the onmouseover event. Because a user's mouse speed and entry point 
		 * can vary, different components of an element can fire the onmouseover event. For 
		 * example, when a user moves the cursor over a textArea object with scroll bars, the 
		 * event might fire when the mouse enters the component border, the scroll bars, or 
		 * the client region. After the event fires, the expected element might not be returned, 
		 * unless the scroll bars were the point of entry for the mouse. In this case, the 
		 * onmousemove event can be used to provide more consistent results.</p>
		 * 
		 * <p>For the object's sizing handles to appear, designMode must be On, and the object 
		 * must be selected.</p>
		 * 
		 * @param	x The client window coordinate of x
		 * @param	y The client window coordinate of y
		 * @return Returns one of the following possible values.
		 * <ul>
		 * <li>empty string : Component is inside the client area of the object.</li>
		 * <li>outside : Component is outside the bounds of the object.</li>
		 * <li>scrollbarDown : Down scroll arrow is at the specified location.</li>
		 * <li>scrollbarHThumb : Horizontal scroll thumb or box is at the specified location.</li>
		 * <li>scrollbarLeft : Left scroll arrow is at the specified location.</li>
		 * <li>scrollbarPageDown : Page-down scroll bar shaft is at the specified location.</li>
		 * <li>scrollbarPageLeft : Page-left scroll bar shaft is at the specified location.</li>
		 * <li>scrollbarPageRight : Page-right scroll bar shaft is at the specified location.</li>
		 * <li>scrollbarPageUp : Page-up scroll bar shaft is at the specified location.</li>
		 * <li>scrollbarRight : Right scroll arrow is at the specified location.</li>
		 * <li>scrollbarUp : Up scroll arrow is at the specified location.</li>
		 * <li>scrollbarVThumb : Vertical scroll thumb or box is at the specified location.</li>
		 * <li>handleBottom : Bottom sizing handle is at the specified location.</li>
		 * <li>handleBottomLeft : Lower-left sizing handle is at the specified location.</li>
		 * <li>handleBottomRight : Lower-right sizing handle is at the specified location.</li>
		 * <li>handleLeft : Left sizing handle is at the specified location.</li>
		 * <li>handleRight : Right sizing handle is at the specified location.</li>
		 * <li>handleTop : Top sizing handle is at the specified location.</li>
		 * <li>handleTopLeft : Upper-left sizing handle is at the specified location.</li>
		 * <li>handleTopRight : Upper-right sizing handle is at the specified location.</li>
		 * </ul>
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 5.0+
		 */
		public function componentFromPoint(x:Number, y:Number):DOMString { return null; };
		
		/**
		 * Checks whether the given element is contained within the object. 
		 * @param	element Element object that specifies the element to check.
		 * @return
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 1.0+
		 */
		public function contains(element:Object):Boolean { return false; };
		
		/**
		 * Creates a controlRange collection of nontext elements.
		 * 
		 * <p>IE Note: Creates a selection range object for control-based selection 
		 * rather than text-based selection.</p>
		 * 
		 * <p>If a controlRange already exists, createControlRange overwrites 
		 * the existing element; otherwise, it returns a pointer to the element created.</p>
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 1.0+
		 */
		public function createControlRange():NodeList { return null; };
		
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
		
		/**
		 * Simulates a click on a scroll-bar component.
		 * 
		 * <p>Cascading Style Sheets (CSS) allow you to scroll on all objects through 
		 * the overflow property.</p>
		 * 
		 * <p>When the content of an element changes and causes scroll bars to display, 
		 * the doScroll method might not work correctly immediately following the 
		 * content update. When this happens, you can use the setTimeout method to 
		 * enable the browser to recognize the dynamic changes that affect scrolling.</p>
		 * 
		 * @param	scrollAction Specifies how the object scrolls, using one of the following values.
		 * <ul>
		 * <li>scrollbarDown : Default. Down scroll arrow is at the specified location.</li>
		 * <li>scrollbarHThumb : Horizontal scroll thumb or box is at the specified location.</li>
		 * <li>scrollbarLeft : Left scroll arrow is at the specified location.</li>
		 * <li>scrollbarPageDown : Page-down scroll bar shaft is at the specified location.</li>
		 * <li>scrollbarPageLeft : Page-left scroll bar shaft is at the specified location.</li>
		 * <li>scrollbarPageRight : Page-right scroll bar shaft is at the specified location.</li>
		 * <li>scrollbarPageUp : Page-up scroll bar shaft is at the specified location.</li>
		 * <li>scrollbarRight : Right scroll arrow is at the specified location.</li>
		 * <li>scrollbarUp : Up scroll arrow is at the specified location.</li>
		 * <li>scrollbarVThumb : Vertical scroll thumb or box is at the specified location.</li>
		 * <li>down : Composite reference to scrollbarDown.</li>
		 * <li>left : Composite reference to scrollbarLeft.</li>
		 * <li>pageDown : Composite reference to scrollbarPageDown.</li>
		 * <li>pageLeft : Composite reference to scrollbarPageLeft.</li>
		 * <li>pageRight : Composite reference to scrollbarPageRight.</li>
		 * <li>pageUp : Composite reference to scrollbarPageUp.</li>
		 * <li>right : Composite reference to scrollbarRight.</li>
		 * <li>up : Composite reference to scrollbarUp.</li>
		 * </ul>
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 5.0+
		 */
		public function doScroll(scrollAction:DOMString = "scrollbarDown"):void { };
		
		/**
		 * Initiates a drag event.
		 * 
		 * <p>You can use this method to fire the ondragstart event. If the event is 
		 * not cancelled, a drag operation is started. The method returns true when 
		 * the mouse is released. If the ondragstart event is cancelled, the method 
		 * returns false immediately</p>
		 * 
		 * @return Drag operation success
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 1.0+
		 */
		public function dragDrop():Boolean { return false; };
		
		/**
		 * Fires a specified event on the object.
		 * 
		 * <p>If the event being fired cannot be cancelled, fireEvent always returns true.</p>
		 * 
		 * <p>Regardless of their values specified in the event object, the values of the 
		 * four event properties—cancelBubble, returnValue, srcElement, and type—are 
		 * automatically initialized to the values shown in the following table.</p> 
		 * 
		 * <ul>
		 * <li>cancelBubble : false</li>
		 * <li>returnValue : true</li>
		 * <li>srcElement : element on which the event is fired</li>
		 * <li>type : name of the event that is fired</li>
		 * </ul>
		 * 
		 * @param	type String that specifies the name of the event to fire.
		 * @param	event Object that specifies the event object from which to obtain event object properties.
		 * @return Event fired successfully
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536423%28VS.85%29.aspx MSDN - fireEvent Method
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
		public function fireEvent(type:DOMString, event:Object = null):Boolean { return false; };
		
		/**
		 * Returns the adjacent text string. 
		 * 
		 * @param	where Specifies where the text is located by using one of the following values.
		 * <ul>
		 * <li>beforeBegin : Text is returned immediately before the element.</li>
		 * <li>afterBegin : Text is returned after the start of the element but before all other content in the element.</li>
		 * <li>beforeEnd : Text is returned immediately before the end of the element but after all other content in the element.</li>
		 * <li>afterEnd : Text is returned immediately after the end of the element.</li>
		 * </ul>
		 * @return Returns the first adjacent text string. 
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 1.0+
		 */
		public function getAdjacentText(where:DOMString):DOMString { return null; };
		
		/**
		 * Returns the value of the named attribute on the specified element.
		 * 
		 * <p>If the named attribute does not exist, the value returned will 
		 * either be null or "" (the empty string).</p>
		 * 
		 * <p><strong>Note:</strong> Essentially all web browsers (Firefox, Internet Explorer, recent 
		 * versions of Opera, Safari, Konqueror, and iCab, as a non-exhaustive list) 
		 * return null when the specified attribute does not exist on the specified 
		 * element. The DOM specification says that the correct return value in 
		 * this case is actually the empty string, and some DOM implementations 
		 * implement this behavior. The implementation of getAttribute in XUL (Gecko) 
		 * actually follows the specification and returns an empty string. 
		 * Consequently, you should use hasAttribute to check for an attribute's 
		 * existence prior to calling getAttribute() if it is possible that the 
		 * requested attribute does not exist on the specified element.</p>
		 * 
		 * <p>The attributeName parameter is usually case sensitive, but it is case-insensitive 
		 * when used upon HTML elements.</p>
		 * 
		 * @param	name
		 * @return The value or null/""
		 * 
		 * @example
		 * <listing>
		 * var div1 = document.getElementById("div1");
		 * var align = div1.getAttribute("align");
		 * alert(align); // shows the value of align for the element with id="div1"</listing>
		 * 
		 * @playerversion DOMCore 1
		 * @since DOM 1 Core
		 * @productversion IE 5.0+
		 * @productversion Firefox 1.0+
		 * @productversion Opera 7.0+
		 * @productversion Safari 1.0+
		 */
		public function getAttribute(name:DOMString):Object { return null; };
		
		/**
		 * Returns the string value of the attribute with the specified namespace and name. 
		 * 
		 * <p>If the named attribute does not exist, the value returned will either be null 
		 * or "" (the empty string).</p>
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if the implementation 
		 * does not support the feature "XML" and the language exposed through the Document 
		 * does not support XML Namespaces (such as [HTML 4.01]). 
		 * 
		 * @param	nameSpace The namespace of the specified attribute. 
		 * @param	name The name of the specified attribute. 
		 * @return The value or null/""
		 * 
		 * @example
		 * <listing>
		 * var div1 = document.getElementById("div1");
		 * var a = div1.getAttributeNS("www.mozilla.org/ns/specialspace/", "special-align");
		 * alert(a); // shows the value of align for that div</listing>
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 */
		public function getAttributeNS(nameSpace:DOMString, name:DOMString):DOMString { return null; };
		
		/**
		 * Returns the Attr node for the attribute with the given name. 
		 * 
		 * <p><strong>Note:</strong> (IE8+) In IE8 mode, getAttributeNode correctly 
		 * populates the value property of the returned attribute object regardless of 
		 * whether the specified property is set to true or false. For more information 
		 * on IE8 mode, see Defining Document Compatibility.</p>
		 * 
		 * <p><strong>Note:</strong> (IE8+) In IE8 mode, the value 
		 * property is correctly reported as a canonical attribute name. For example, 
		 * &lt;input type="text" readonly&gt; and &lt;input type="text" readonly="readonly"&gt; would 
		 * both set the input text field to read-only. In IE8 mode, the value is evaluated 
		 * as a cannonical value, "readonly". In IE7 and earlier modes, it is evaluated 
		 * as a Boolean value, true.</p>
		 * 
		 * @see http://www.w3.org/TR/REC-DOM-Level-1/level-one-core.html#method-getAttributeNode DOM Level 1:getAttributeNode
		 * @see http://www.w3.org/TR/DOM-Level-2-Core/core.html#ID-217A91B8 DOM Level 2:getAttributeNode
		 * 
		 * @param	name Specifies the name property of the requested attribute object.
		 * @return Returns a reference to an attribute object.
		 * 
		 * @playerversion DOMCore 2
		 * @since DOM 1 Core
		 * @productversion IE 6.0+
		 * @productversion Firefox 1.0+
		 * @productversion Opera 7.0+
		 * @productversion Safari 1.0+
		 */
		public function getAttributeNode(name:DOMString):Attr { return null; };
		
		/**
		 * Returns the Attr node for the attribute with the given namespace and name. 
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if the 
		 * implementation does not support the feature "XML" and the language 
		 * exposed through the Document does not support XML Namespaces. 
		 * 
		 * @param	nameSpace Specifying the namespace of the attribute. 
		 * @param	name Specifying the name of the attribute. 
		 * @return The node for specified attribute
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 */
		public function getAttributeNodeNS(nameSpace:DOMString, name:DOMString):Attr { return null; };
		
		/**
		 * Returns a set of elements with the given class name. 
		 * 
		 * <p>When called on 
		 * the document object, the complete document is searched, including 
		 * the root node. You may also call getElementsByClassName on any element; 
		 * it will return only elements under the specified root element with the 
		 * given class name. </p>
		 * 
		 * @param	name Specifies the name of a class.
		 * @return Returns a set of elements with the given class name.
		 * 
		 * @example
		 * <listing>
		 * //Get all elements that have a class of 'test' 
		 * document.getElementsByClassName('test');
		 * //Get all elements that have a class of 'red' and 'test' 
		 * document.getElementsByClassName('red test');</listing>
		 * 
		 * @playerversion HTML 5
		 * @since HTML 5
		 * @productversion Firefox 3.0+
		 */
		public function getElementsByClassName(name:DOMString):NodeList { return null; };
		
		/**
		 * Retrieves a collection of objects based on the specified element name.
		 * 
		 * @param	name Specifies the name of an element.
		 * @return Returns a collection of objects with the specified element name.
		 * @example
		 * <listing>
		 * // check the alignment on a number of cells in a table. 
		 * var table = document.getElementById("forecast-table"); 
		 * var cells = table.getElementsByTagName("td"); 
		 * for (var i = 0; i &lt; cells.length; i++) { 
		 * 		status = cells[i].getAttribute("status"); 
		 * 		if ( status == "open") { 
		 * 			// grab the data 
		 * 		}
		 * }</listing>
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 * @productversion IE 5.0+
		 * @productversion Firefox 1.0+
		 * @productversion Opera 7.0+
		 * @productversion Safari 1.0+
		 */
		public function getElementsByTagName(name:DOMString):NodeList { return null; };
		
		/**
		 * Returns a list of elements with the given tag name belonging to the given namespace. 
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if the 
		 * implementation does not support the feature "XML" and the language 
		 * exposed through the Document does not support XML Namespaces. 
		 * 
		 * @param	nameSpace The namespace URI of elements to look for (see element.namespaceURI). For example, if you need to look for XHTML elements, use the XHTML namespace URI, http://www.w3.org/1999/xhtml. 
		 * @param	localName Either the local name of elements to look for or the special value "*", which matches all elements
		 * @return
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 */
		public function getElementsByTagNameNS(nameSpace:DOMString, localName:DOMString):NodeList { return null; };
		
		/**
		 * Retrieves the expression for the given property. 
		 * 
		 * @param propertyName Specifies the name of the property from which to retrieve the expression.
		 * @return Returns a variant value representing the expression of the property.
		 * @example
		 * <listing>
		 * &lt;body>
		 * &lt;span id="trueBlueSpan" style="background-color:lightblue; width:100px">
		 * The width of this blue span is set inline at 100 pixels.
		 * &lt;/span>
		 * &lt;span id="oldYellowSpan" style="background-color:lightyellow; width:200px">
		 * The width of this yelllow span is set inline at 200 pixels.
		 * &lt;/span>
		 * &lt;br>
		 * &lt;span id="AlGreenSpan" style="background-color:lightgreen; width:expression(trueBlueSpan.style.pixelWidth + oldYellowSpan.style.pixelWidth)">
		 * Click the button below to see the expression used to set the width of this span.
		 * &lt;/span>
		 * &lt;br>
		 * &lt;button onclick=alert(AlGreenSpan.style.getExpression("width"));>See Expression&lt;/button>
		 * &lt;/body></listing>
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 5.0+
		 */
		public function getExpression(propertyName:DOMString):* { return null; };
		
		/**
		 * <strong>DOM Level 2 | NS\FireFox</strong> 
		 * 
		 * Determines whether an attribute with the specified name exists.
		 * 
		 * @param	name Name of the attribute. 
		 * @return If the attribute exists.
		 * @example
		 * <listing>
		 * // check that the attribute exists before setting a value
		 * var d = document.getElementById("div1"); 
		 * if d.hasAttribute("align") { 
		 * 		d.setAttribute("align", "center"); 
		 * }</listing>
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 * @productversion Firefox 1.0+
		 */
		public function hasAttribute(name:DOMString):Boolean { return false; };
		
		/**
		 * Returns a boolean value indicating whether the current element has the specified attribute. 
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if the 
		 * implementation does not support the feature "XML" and the language 
		 * exposed through the Document does not support XML Namespaces (such 
		 * as [HTML 4.01]). 
		 * 
		 * @param	nameSpace Specifying the namespace of the attribute. 
		 * @param	name Name of the attribute. 
		 * @return
		 * @example
		 * <listing>
		 * // check that the attribute exists 
		 * // before you set a value 
		 * var d = document.getElementById("div1"); 
		 * if (d.hasAttributeNS("http://www.mozilla.org/ns/specialspace/", "special-align")) {
		 * 	d.setAttribute("align", "center");
		 * }</listing>
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 * @productversion Safari 1.3+
		 */
		public function hasAttributeNS(nameSpace:DOMString, name:DOMString):Boolean { return false; };
		
		/**
		 * Inserts an element at the specified location.
		 * 
		 * <p>You cannot insert text while the document is loading. Wait 
		 * for the onload event before attempting to call this method.</p>
		 * 
		 * <p>If you try to insert an object that already exists on the page, 
		 * the existing object is moved to the point that you specified in 
		 * the insertAdjacentElement method; no new object is created.</p>
		 * 
		 * @param	where Specifies where to insert the HTML element, using one of the following values.
		 * <ul>
		 * <li>beforeBegin : Inserts element immediately before the object.</li>
		 * <li>afterBegin : Inserts element after the start of the object, but before all other content in the object.</li>
		 * <li>beforeEnd : Inserts element immediately before the end of the object, but after all other content in the object.</li>
		 * <li>afterEnd : Inserts element immediately after the end of the object.</li>
		 * </ul>
		 * @param	element Object that specifies the element to be inserted adjacent to the object that invoked the insertAdjacentElement method.
		 * @return Returns an element object.
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 1.0+
		 */
		public function insertAdjacentElement(where:DOMString, element:Element):Element { return null; };
		
		/**
		 * Inserts the given HTML text into the element at the location.
		 * 
		 * <p>If the text contains HTML tags, the method parses and formats 
		 * the text as it is inserted.</p>
		 * 
		 * <p>You cannot insert text while the document is loading. Wait for 
		 * the onload event to fire before attempting to call this method.</p>
		 * 
		 * <p>When using the insertAdjacentHTML method to insert script, you 
		 * must include the DEFER attribute in the script element. </p>
		 * 
		 * @param	where Specifies where to insert the HTML element, using one of the following values.
		 * <ul>
		 * <li>beforeBegin : Inserts text immediately before the object.</li>
		 * <li>afterBegin : Inserts text after the start of the object, but before all other content in the object.</li>
		 * <li>beforeEnd : Inserts text immediately before the end of the object, but after all other content in the object.</li>
		 * <li>afterEnd : Inserts text immediately after the end of the object.</li>
		 * </ul>
		 * @param	text Specifies the HTML text to insert. The string can 
		 * be a combination of text and HTML tags. This must be well-formed, 
		 * valid HTML or this method will fail.
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 4.0+
		 */
		public function insertAdjacentHTML(where:DOMString, text:DOMString):void { };
		
		/**
		 * Inserts the given text into the element at the specified location.
		 * 
		 * <p>The text inserted into the element is plain text. You cannot insert text 
		 * while the document loads. Wait for the onload event to fire before 
		 * attempting to call this method.</p>
		 * 
		 * @param	where Specifies where to insert the text, using one of the following values.
		 * <ul>
		 * <li>beforeBegin : Inserts text immediately before the object.</li>
		 * <li>afterBegin : Inserts text after the start of the object, but before all other content in the object.</li>
		 * <li>beforeEnd : Inserts text immediately before the end of the object, but after all other content in the object.</li>
		 * <li>afterEnd : Inserts text immediately after the end of the object.</li>
		 * </ul>
		 * @param	text Specifies the text to insert.
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 1.0+
		 */
		public function insertAdjacentText(where:DOMString, text:DOMString):void { };
		
		/**
		 * Copies all read/write attributes to the specified element.
		 * 
		 * <p>The mergeAttributes method copies persistent HTML attributes, 
		 * events, and styles.</p>
		 * 
		 * <p>IE Note: In Internet Explorer 5 and earlier, attributes that are read-only, 
		 * such as ID, are not merged.</p>
		 * 
		 * <p>IE Note: As of Internet Explorer 5.5, by choosing not to preserve the identity 
		 * of the destination object, you can merge all attributes of an object, 
		 * including ID and NAME.</p>
		 * 
		 * @param	source Pointer to an Object that specifies the attributes copied
		 * to the object that invokes mergeAttributes.
		 * @param	preserve Available as of Microsoft Internet Explorer 5.5. Specifies 
		 * whether to preserve the identity of the object to which attributes are 
		 * being merged or not.
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 5.0+
		 */
		public function mergeAttributes(source:Element, preserve:Boolean = true):void { };
		
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
		 * @since DOM 3 Core
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
		 * @since DOM 3 Core
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
		
		/**
		 * Removes mouse capture from the object in the current document.
		 * 
		 * <p>For releaseCapture to have an effect, you must set mouse capture through 
		 * the setCapture method.</p>
		 * 
		 * <p>You can invoke the releaseCapture method on the document object. The 
		 * releaseCapture method makes it unnecessary to determine which element 
		 * has capture to programmatically release it. Other actions that release 
		 * document capture include displaying a modal dialog box and switching 
		 * focus to another application or browser window.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;BODY onload="oOwnCapture.setCapture();" onclick="document.releaseCapture();">
		 * &lt;DIV ID=oOwnCapture onmousemove="oWriteLocation.value = event.clientX + event.clientY"; onlosecapture="alert(event.srcElement.id + ' has lost mouse capture.')">
		 * &lt;TEXTAREA ID=oWriteLocation COLS=2>&lt;/TEXTAREA>
		 * &lt;/DIV>
		 * &lt;HR>
		 * &lt;DIV ID=oNoCapture>
		 * &lt;P>Click the document to invoke the releaseCapture method.&lt;/P>
		 * &lt;/DIV>
		 * &lt;/BODY></listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536689%28VS.85%29.aspx MSDN - releaseCapture Method
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
		 * @productversion Safari 4.0_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0b_unknown
		 */
		public function releaseCapture():void { };
		
		/**
		 * Removes an attribute from the specified element. 
		 * 
		 * <p>Note : You should use removeAttribute instead of setting 
		 * the attribute value to null using setAttribute. </p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
		 * 
		 * @param	name The name of the attribute to be removed from element. 
		 * @example
		 * <listing>
		 * // &lt;div id="div1" align="left" width="200px">
		 * document.getElementById("div1").removeAttribute("align"); 
		 * // now: &lt;div id="div1" width="200px"></listing>
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * @productversion IE 4.0+
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 * @productversion Safari 1.0+
		 */
		public function removeAttribute(name:DOMString):void { };
		
		/**
		 * Removes the specified attribute from an element.
		 * 
		 * <p>FF Note : In Firefox 3 and later, this method resets DOM values to their defaults. </p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if the 
		 * implementation does not support the feature "XML" and the language 
		 * exposed through the Document does not support XML Namespaces (such 
		 * as [HTML 4.01]). 
		 * 
		 * @param	nameSpace Contains the namespace of the attribute. 
		 * @param	name The attribute to be removed from the current node.
		 * @example
		 * <listing>
		 * // &lt;div id="div1" xmlns:special="http://www.mozilla.org/ns/specialspace" special:specialAlign="utterleft" width="200px" /> 
		 * d = document.getElementById("div1"); 
		 * d.removeAttributeNS("http://www.mozilla.org/ns/specialspace", "specialAlign"); 
		 * // now: &lt;div id="div1" width="200px" /></listing>
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 */
		public function removeAttributeNS(nameSpace:DOMString, name:DOMString):void { };
		
		/**
		 * Removes an attribute object from the object.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised if oldAttr is not 
		 * an attribute of the element.
		 * 
		 * @param	name The Attr node that needs to be removed.
		 * @return Returns a reference to the removed attribute object.
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * @productversion IE 6.0+
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 * @productversion Safari 1.0+
		 */
		public function removeAttributeNode(name:Attr):Attr { return null; };
		
		/**
		 * Detaches a behavior from the element. 
		 * 
		 * <p>This method applies only to attached behaviors, which are the original 
		 * Dynamic HTML (DHTML) behaviors introduced in Microsoft Internet Explorer 5. 
		 * Element behaviors are a feature in Internet Explorer 5.5 and cannot be 
		 * added or removed from an element.</p>
		 * 
		 * @param id Specifies the identifier that is returned from a previous addBehavior call.
		 * @return If it was successfully removed.
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 5.0+
		 */
		public function removeBehavior(id:Number):Boolean { return false; };
		
		/**
		 * Removes the expression from the specified property. 
		 * 
		 * <p>After the expression is removed from the specified property, the value 
		 * of the property equals the last computed value of the expression. To 
		 * remove expressions set by the setExpression method, use removeExpression. </p>
		 * 
		 * @param	propertyName Specifies the name of the property from which to remove an expression.
		 * @return	If the expression was successfully removed.
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 5.0+
		 */
		public function removeExpression(propertyName:DOMString):Boolean { return false; };
		
		/**
		 * Removes the object from the document hierarchy.
		 * 
		 * <p>This property is accessible at run time. If elements are removed at 
		 * run time, before the closing tag is parsed, areas of the document 
		 * might not render.</p>
		 * 
		 * @param	removeChildren If the childNodes collection of the object is removed
		 * @return	Returns a reference to the object that is removed.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536708%28VS.85%29.aspx MSDN - removeNode Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function removeNode(removeChildren:Boolean = false):Node { return null; };
		
		/**
		 * Replaces the text adjacent to the element.
		 * 
		 * @param	where Specifies where to locate the replacement text, using one of the following values. 
		 * <ul>
		 * <li>beforeBegin : Inserts text immediately before the object.</li>
		 * <li>afterBegin : Inserts text after the start of the object, but before all other content in the object.</li>
		 * <li>beforeEnd : Inserts text immediately before the end of the object, but after all other content in the object.</li>
		 * <li>afterEnd : Inserts text immediately after the end of the object.</li>
		 * </ul>
		 * @param	replaceText Specifies the replacement text.
		 * @return A pointer to a String returning the old text.
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 1.0+
		 */
		public function replaceAdjacentText(where:DOMString, replaceText:DOMString):DOMString { return null; };
		
		/**
		 * Replaces the object with another element.
		 * 
		 * <p>When a node is replaced, all values that are associated with the 
		 * replaced object are removed. For example, if a b object is replaced 
		 * with an i object, any attributes and text between the opening and 
		 * closing tags are also replaced. To preserve these values, copy them 
		 * to the new element before the original object is replaced.</p>
		 * 
		 * <p>This method is accessible at run time. If elements are removed at run 
		 * time before the closing tag is parsed, areas of the document might 
		 * not render.</p>
		 * 
		 * @param	newNode Specifies the new element to replace the object.
		 * @return Returns a reference to the object that is replaced.
		 * @example
		 * <listing>
		 * &lt;SCRIPT>
		 * function fnReplace() {
		 * var sPreserve = oList.innerHTML;
		 * var oNewNode = document.createElement("OL");
		 * oList.replaceNode(oNewNode);
		 * oNewNode.innerHTML = sPreserve;
		 * }
		 * &lt;/SCRIPT>
		 * 
		 * &lt;UL ID = oList>
		 * &lt;LI>List Item 1
		 * &lt;LI>List Item 2
		 * &lt;LI>List Item 3
		 * &lt;LI>List Item 4
		 * &lt;/UL>
		 * &lt;INPUT TYPE = button VALUE = "Replace List" onclick = "fnReplace()"></listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536719%28VS.85%29.aspx MSDN - replaceNode Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function replaceNode(newNode:Node):Node { return null; };
		
		/**
		 * Causes the object to scroll into view, aligning it either at the top 
		 * or bottom of the window. 
		 * 
		 * <p>The scrollIntoView method is useful for immediately showing the user
		 * the result of some action without requiring the user to manually 
		 * scroll through the document to find the result.</p>
		 * 
		 * <p>Depending on the size of the given object and the current window, this 
		 * method might not be able to put the item at the very top or very bottom, 
		 * but will position the object as close to the requested position as possible.</p>
		 * 
		 * @param	alignToTop Whether to scroll the object so that top of the object is visible at the top of the window.
		 * @example
		 * <listing>
		 * &lt;html>
		 * &lt;head>
		 * &lt;title>ScrollIntoView() example&lt;/title>
		 * 
		 * &lt;script type="text/javascript">
		 * function showIt(elID) {
		 * var el = document.getElementById(elID);
		 * el.scrollIntoView(true);
		 * }
		 * &lt;/script>
		 * 
		 * &lt;/head>
		 * &lt;body>
		 * 	&lt;div style="height: 5em; width: 30em; overflow: scroll; border: 1px solid blue;">
		 * 		&lt;div style="height: 100px">&lt;/div>
		 * 		&lt;p id="pToShow">The para to show&lt;/p>
		 * 		&lt;div style="height: 100px">&lt;/div>
		 * 	&lt;/div>
		 * 	&lt;input type="button" value="Show para" onclick="showIt('pToShow');">
		 * &lt;/body></listing>
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0b
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		public function scrollIntoView(alignToTop:Boolean = true):void { };
		
		/**
		 * Sets the object as active without setting focus to the object.
		 * 
		 * <p>The setActive method does not cause the document to scroll to the 
		 * active object in the current page or in another frame or window. </p>
		 * 
		 * @example
		 * <listing>
		 * &lt;script>
		 * function fnBottomActive() {
		 * 		//Set the object with ID=btnLarger active in frame with ID=oFrame1.
		 * 		window.parent.oFrame1.secondButton.setActive();
		 * }
		 * &lt;/script></listing>
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 5.5+
		 */
		public function setActive():void { };
		
		/**
		 * Sets the value of the specified attribute.
		 * 
		 * <p>IE Note: Internet Explorer 8 and later. IE8 mode enables several enhancements 
		 * to the setAttribute, getAttribute, and removeAttribute methods that 
		 * are not available when pages are displayed in earlier document modes.</p>
		 * 
		 * <p>The name parameter requires the name of the desired content 
		 * attribute and not the Document Object Model (DOM) attribute. For example,
		 * in IE8 mode, this method no longer requires name to be "className" 
		 * when setting, getting, or removing a CLASS attribute. Earlier versions of 
		 * Internet Explorer and Internet Explorer 8 in compatibility mode still 
		 * require name to specify the corresponding DOM property name.</p>
		 * 
		 * <p>The name parameter is not case sensitive. As a result, the 
		 * caseSensitive parameter is no longer supported and should not be used.</p>
		 * 
		 * <p>The methods support event handlers. For example, the following code example 
		 * defines an event handler to call a function called SomeFunction when the 
		 * body of the page is loaded.</p>
		 * 
		 * <p>document.body.setAttribute('onload', 'SomeFunction()');</p>
		 * 
		 * <p>If the specified attribute is not already present, the setAttribute method 
		 * adds the attribute to the object and sets the value.</p>
		 * 
		 * <p>If your pages are displayed in IE5 mode or IE7 mode, be careful when spelling 
		 * attribute names. If you set iCaseSensitive to 1 and the name parameter does 
		 * not have the same uppercase and lowercase letters as the attribute, a new 
		 * attribute is created for the object. If two or more attributes have the 
		 * same name, differing only in case, and iCaseSensitive is set to 0, this method 
		 * assigns values only to the first attribute created with this name. All other 
		 * attributes of the same name are ignored.</p>
		 * 
		 * <p>New for Internet Explorer 8 Internet Explorer 8 and later. When pages are 
		 * displayed in IE8 mode, the vValue parameter only supports string values. Non-string
		 * values are not automatically converted to string values. For best results, 
		 * formally convert values to strings before using them as parameter values. For 
		 * example, do not attempt to pass an object directly to the vValue parameter; call 
		 * the object's toString method instead.</p>
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the 
		 * specified name is not an XML name according to the XML version in 
		 * use specified in the Document.xmlVersion attribute.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @param	name Specifies the name of the attribute.
		 * @param	value Specifies the string, number, or Boolean to assign to the attribute. 
		 * @param	caseSensitive (IE Only) Specifies whether to use a case-sensitive 
		 * search to locate the attribute. Can be one of the following values: <br/>
		 * 1 : The case of name  is respected. <br/>
		 * 0 : Match name regardless of case.
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * @productversion IE 5.0+
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 * @productversion Safari 1.0+
		 */
		public function setAttribute(name:DOMString, value:*, caseSensitive:Number):void { };
		
		/**
		 * Adds a new attribute or changes the value of an attribute with the 
		 * given namespace and name. 
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: Raised if the 
		 * specified qualified name is not an XML name according to the XML 
		 * version in use specified in the Document.xmlVersion attribute.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @throws dom.core.DOMException NAMESPACE_ERR: Raised if the qualifiedName 
		 * is malformed per the Namespaces in XML specification, if the 
		 * qualifiedName has a prefix and the namespaceURI is null, if the 
		 * qualifiedName has a prefix that is "xml" and the namespaceURI is different 
		 * from "http://www.w3.org/XML/1998/namespace", if the qualifiedName or 
		 * its prefix is "xmlns" and the namespaceURI is different from 
		 * "http://www.w3.org/2000/xmlns/", or if the namespaceURI is 
		 * "http://www.w3.org/2000/xmlns/" and neither the qualifiedName nor its prefix 
		 * is "xmlns".
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if the 
		 * implementation does not support the feature "XML" and the language 
		 * exposed through the Document does not support XML Namespaces (such 
		 * as [HTML 4.01]). 
		 * 
		 * @param	nameSpace Specifying the namespace of the attribute. 
		 * @param	name The attribute to be set. 
		 * @param	value The desired string value of the new attribute. 
		 * @example
		 * <listing>
		 * var d = document.getElementById("d1");
		 * d.setAttributeNS("http://www.mozilla.org/ns/specialspace", "align", "center");</listing>
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 */
		public function setAttributeNS(nameSpace:DOMString, name:DOMString, value:*):void { };
		
		/**
		 * Sets an attribute object node as part of the object.
		 * 
		 * <p>If the attribute named already exists on the element, that attribute
		 * is replaced with the new one and the replaced one is returned.</p>
		 * 
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if newAttr 
		 * was created from a different document than the one that created 
		 * the element.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @throws dom.core.DOMException INUSE_ATTRIBUTE_ERR: Raised if newAttr 
		 * is already an attribute of another Element object. The DOM user must 
		 * explicitly clone Attr nodes to re-use them in other elements.
		 * 
		 * @param	attrNode Attribute object to be assigned.
		 * @return Returns a reference to the removed attribute object.
		 * @example
		 * <listing>
		 * // &lt;div id="one" align="left">one&lt;/div> 
		 * // &lt;div id="two">two&lt;/div> 
		 * var d1 = document.getElementById("one"); 
		 * var d2 = document.getElementById("two"); 
		 * var a = d1.getAttributeNode("align"); 
		 * d2.setAttributeNode(a.cloneNode(true)); 
		 * alert(d2.attributes[1].value) 
		 * // returns: `left'</listing>
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 * @productversion IE 4.0+
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 * @productversion Safari 1.0+
		 */
		public function setAttributeNode(attrNode:Attr):Attr { return null; };
		
		/**
		 * Adds a new attribute node with the specified namespace and name.
		 * 
		 * <p>If the specified attribute already exists on the element, then that
		 * attribute is replaced with the new one and the replaced one is returned.</p>
		 * 
		 * <p>Note: If you try to set without cloning the node, Mozilla gives an 
		 * NS_ERROR_DOM_INUSE_ATTRIBUTE_ERR "Attribute already in use" error, as the 
		 * DOM requires cloning for Attr to be reused (unlike other Nodes which can 
		 * be moved).</p>
		 * 
		 * @throws dom.core.DOMException WRONG_DOCUMENT_ERR: Raised if newAttr 
		 * was created from a different document than the one that created 
		 * the element.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @throws dom.core.DOMException INUSE_ATTRIBUTE_ERR: Raised if newAttr 
		 * is already an attribute of another Element object. The DOM user must 
		 * explicitly clone Attr nodes to re-use them in other elements.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: May be raised if the 
		 * implementation does not support the feature "XML" and the language 
		 * exposed through the Document does not support XML Namespaces (such 
		 * as [HTML 4.01]). 
		 * 
		 * @param	attrNode Attribute object to be assigned.
		 * @example
		 * <listing>
		 * // &lt;div id="one" xmlns:myNS="http://www.mozilla.org/ns/specialspace" myNS:special-align="utterleft">one&lt;/div> 
		 * // &lt;div id="two">two&lt;/div> 
		 * 
		 * var myns = "http://www.mozilla.org/ns/specialspace"; 
		 * var d1 = document.getElementById("one"); 
		 * var d2 = document.getElementById("two"); 
		 * var a = d1.getAttributeNodeNS(myns, "special-align"); 
		 * d2.setAttributeNodeNS(a.cloneNode(true));
		 * alert(d2.attributes[1].value) // returns: `utterleft'</listing>
		 * 
		 * @playerversion DOMCore 2
		 * @since DOMCore 2
		 * @productversion Firefox 1.0+
		 * @productversion Opera 8.0+
		 */
		public function setAttributeNodeNS(attrNode:Attr):void { };
		
		/**
		 * Sets the mouse capture to the object that belongs to the current document.
		 * 
		 * <p>After mouse capture is set to an object, all mouse events for the document 
		 * are routed to that object. Supported mouse events include onmousedown, 
		 * onmouseup, onmousemove, onclick, ondblclick, onmouseover, and onmouseout. 
		 * The srcElement property of the window event object always returns the object 
		 * that is positioned under the mouse, instead of the object that has mouse capture.</p>
		 * 
		 * <p>Mouse clicks automatically trigger the onlosecapture event. To retain mouse 
		 * capture, call setCapture inside the onclick event handler. Mouse capture is 
		 * also lost if the browser window loses focus for any reason (including alerts or 
		 * pop-up windows).</p>
		 * 
		 * <p>When the containerCapture parameter is set to true, a container object, such as 
		 * a div, captures mouse events for all objects in it. By passing the value false, 
		 * objects in that container can fire events, and cancel event bubbling.</p>
		 * 
		 * <p>Drag-and-drop operations, such as the ondragstart event, and text selection 
		 * through the user interface are disabled when mouse capture is set 
		 * programmatically. The following key events are unaffected by mouse capture and 
		 * fire as usual: onkeydown, onkeyup, and onkeypress. </p>
		 * 
		 * @param	containerCapture (IE 5.5+) Whether events originating in a container are captured by the container.
		 * @example
		 * <listing>
		 * &lt;BODY onload="oOwnCapture.setCapture()" onclick="document.releaseCapture()">
		 * &lt;DIV ID=oOwnCapture STYLE="background-color:#ccc;padding:6pt"
		 * onmousemove="oWriteLocation.value = event.x + ':' + event.y";
		 * onlosecapture="alert(event.srcElement.id + ' lost mouse capture.')">
		 * &lt;P>Mouse capture has been set to this gray division (DIV) 
		 * at load time using the setCapture method. The text area will 
		 * track the mousemove event through the &lt;B>x&lt;/B> 
		 * and &lt;B>y&lt;/B> properties of the event object.&lt;BR>
		 * &lt;P>Event bubbling works as usual on objects within a 
		 * container that has mouse capture. Demonstrate this concept by 
		 * clicking the button below or changing the active window from 
		 * this one and then back. After oOwnCapture loses mouse capture, 
		 * the text area continues tracking the mousemove events only 
		 * while the cursor is over objects it contains.&lt;/P>
		 * &lt;BR>&lt;BR>
		 * &lt;TEXTAREA ID=oWriteLocation COLS=9> &lt;/TEXTAREA>
		 * &lt;/DIV>
		 * &lt;HR>
		 * &lt;DIV ID=oNoCapture>
		 * &lt;P>This white division is here to illustrate that mousemove 
		 * events over objects it contains are captured on the gray 
		 * division, oOwnCapture.
		 * &lt;INPUT VALUE="Move mouse over this object.">
		 * &lt;BUTTON>Click Anywhere to End Mouse Capture&lt;/BUTTON>
		 * &lt;/DIV>
		 * &lt;/BODY></listing>
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 5.0+
		 */
		public function setCapture(containerCapture:Boolean = true):void { };
		
		/**
		 * Sets an expression for the specified object. 
		 * 
		 * <p>Use the setExpression method to add expressions to supported Cascading 
		 * Style Sheets (CSS) attributes and read/write DHTML Properties. To remove 
		 * expressions set by setExpression, use the removeExpression method.</p>
		 * 
		 * @param	propertyName Specifies the name of the property to which 
		 * sExpression  is added.
		 * @param	expression Specifies any valid script(JScript, JavaScript, 
		 * VBSCript) statement without quotations or semicolons. This string 
		 * can include references to other properties on the current page. Array
		 * references are not allowed on object properties included in this script.
		 * @param	language Specifies one of the following values:
		 * <ul>
		 * <li>JScript : Default. Language is JScript.</li>
		 * <li>VBScript : Language is VBScript.</li>
		 * <li>JavaScript : Language is JavaScript.</li>
		 * </ul>
		 * 
		 * @playerversion Non-Standard 0
		 * @since Non-Standard 0
		 * @productversion IE 5.0+
		 */
		public function setExpression(propertyName:DOMString, expression:DOMString, language:DOMString):void { };
		
		/**
		 * <p>If the parameter isId is true, this method declares the specified 
		 * attribute to be a user-determined ID attribute. This affects the value 
		 * of Attr.isId and the behavior of Document.getElementById, but does not 
		 * change any schema that may be in use, in particular this does not 
		 * affect the Attr.schemaTypeInfo of the specified Attr node. Use the value 
		 * false for the parameter isId to undeclare an attribute for being a 
		 * user-determined ID attribute.
		 * To specify an attribute by local name and namespace URI, use the setIdAttributeNS
		 * method.</p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised if the specified 
		 * node is not an attribute of this element.
		 * 
		 * @param	name The name of the attribute.
		 * @param	isId Whether the attribute is a of type ID.
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 3 Core
		 */
		public function setIdAttribute(name:DOMString, isId:Boolean):void { };
		
		/**
		 * <p>If the parameter isId is true, this method declares the specified 
		 * attribute to be a user-determined ID attribute. This affects the value 
		 * of Attr.isId and the behavior of Document.getElementById, but does not 
		 * change any schema that may be in use, in particular this does not 
		 * affect the Attr.schemaTypeInfo of the specified Attr node. Use the value 
		 * false for the parameter isId to undeclare an attribute for being a 
		 * user-determined ID attribute.</p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised if the specified 
		 * node is not an attribute of this element.
		 * 
		 * @param	nameSpaceURI The namespace URI of the attribute.
		 * @param	name The name of the attribute.
		 * @param	isId Whether the attribute is a of type ID.
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 3 Core
		 */
		public function setIdAttributeNS(nameSpaceURI:DOMString, name:DOMString, isId:Boolean):void { };
		
		/**
		 * <p>If the parameter isId is true, this method declares the specified attribute 
		 * to be a user-determined ID attribute. This affects the value of Attr.isId 
		 * and the behavior of Document.getElementById, but does not change any schema 
		 * that may be in use, in particular this does not affect the 
		 * Attr.schemaTypeInfo of the specified Attr node. Use the value false for the 
		 * parameter isId to undeclare an attribute for being a user-determined ID attribute. </p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised if the specified 
		 * node is not an attribute of this element.
		 * 
		 * @param	idAttr The attribute node.
		 * @param	isId Whether the attribute is a of type ID.
		 * 
		 * @playerversion DOMCore 3
		 * @since DOM 3 Core
		 */
		public function setIdAttributeNode(idAttr:Attr, isId:Boolean):void { };
		
		/**
		 * Exchanges the location of two objects in the document hierarchy.
		 * 
		 * <p>This method is accessible at run time. If elements are removed at 
		 * run time, before the closing tag is parsed, areas of the document 
		 * might not render.</p>
		 * 
		 * @param	node Specifies the existing element.
		 * @return Returns a reference to the object that invoked the method.
		 * @example
		 * <listing>
		 * &lt;script&gt;
		 * 		function fnSwap() {
		 * 			oList.children(0).swapNode(oList.children(1));
		 * 		}
		 * &lt;/script&gt;
		 * 
		 * &lt;ul ID = oList&gt;
		 * 		&lt;li&gt;List Item 1&lt;/li&gt;
		 * 		&lt;li&gt;List Item 2&lt;/li&gt;
		 * 		&lt;li&gt;List Item 3&lt;/li&gt;
		 * 		&lt;li&gt;List Item 4&lt;/li&gt;
		 * &lt;/ul&gt;
		 * &lt;input type=button value="Swap List" onclick="fnSwap()"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536774%28VS.85%29.aspx MSDN - swapNode Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function swapNode(node:Node):Node { return null; };
	}
}