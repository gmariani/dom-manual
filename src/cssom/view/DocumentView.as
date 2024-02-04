package cssom.view {
	
	import dom.core.Element;
	
	/**
	 * Has a method that gives position information about an Element node relative to the Document.
	 * 
	 * <p>DocumentView contains many properties and a few methods that were previously not part of any specification. They originated as part of 
	 * MSIE's DHTML object model. They are now all part of the CSSOM Views specification which should be implemented on any browser supporting
	 * DOM 3 Core.</p>
	 * 
	 * <p>All browser compatibility information was obtained via Quirksmode.</p>
	 * 
	 * <p><strong>Note:</strong> This conflicts with an interface in DOM 2 Views. Maybe this specification
	 * combined with HTML 5 (for AbstractView) can obsolete that one as it is completely useless in practice.</p> 
	 * 
	 * @see http://www.w3.org/TR/cssom-view/#the-documentview-interface W3C CSSOM Views Specification: DocumentView
	 * @see http://www.quirksmode.org/dom/w3c_cssom.html  Quirksmode: W3C DOM Compatibility - CSS Object Model View
	 * 
	 * @playerversion CSSOMView 0
	 * @since DOMCore 0
	 * @modified DOMCore 3
	 */
	public interface DocumentView {
		
		/**
		 * Returns the element from the document whose elementFromPoint method is being called which is the 
		 * topmost element which lies under the given point. 
		 * 
		 * <p>The point is specified via coordinates, in CSS pixels, relative to the upper-left-most point 
		 * in the window or frame containing the document.</p>
		 * 
		 * <p><strong>Note:</strong> If the element at the specified point belongs to another document (for example, 
		 * an iframe's subdocument), the element in the DOM of the document the method is called on (in the iframe 
		 * case, the iframe itself) is returned. If the element at the given point is anonymous or XBL generated 
		 * content, such as a textbox's scroll bars, then the first non-anonymous ancestor element (for example, 
		 * the textbox) is returned.</p>
		 * 
		 * <p><strong>Note:</strong> If the specified point is outside the visible bounds of the document or either 
		 * coordinate is negative, the result is null.</p>
		 * 
		 * <p><strong>Note:</strong> The browsers do not entirely agree which mouse coordinates this method needs. 
		 * IE and Firefox 3 need clientX/Y (relative to the viewport), while Opera and Safari need pageX/Y (relative 
		 * to the document).</p>
		 * 
		 * @param	x The X coordinate to check, in CSS pixels relative to the upper-left corner of the document's containing window or frame.
		 * @param	y The Y coordinate to check, in CSS pixels relative to the upper-left corner of the document's containing window or frame.
		 * @return The element at x,y in the viewport
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
		function elementFromPoint(x:Number, y:Number):Element;
	}
}