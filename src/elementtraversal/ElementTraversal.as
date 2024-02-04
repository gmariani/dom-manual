package elementtraversal {
	
	import dom.core.Element;
	
	/**
	 * Allows script navigation of the elements of a DOM tree, excluding all other nodes in the DOM, such 
	 * as text nodes. It also provides an attribute to expose the number of child elements of an element. 
	 * It is intended to provide a more convenient alternative to existing DOM navigation interfaces, with 
	 * a low implementation footprint.
	 * 
	 * <p>All browser compatibility information was obtained via Quirksmode.</p>
	 * 
	 * @see http://developer.mozilla.org/En/DOM/Element  MDC - Element
	 * @see http://www.w3.org/TR/ElementTraversal/#interface-elementTraversal W3C Element Traversal Specification
	 * @see http://quirksmode.org/dom/w3c_traversal.html  Quirksmode: W3C DOM Compatibility - Traversal
	 * 
	 * @playerversion ElemTrav 0
	 */
	public interface ElementTraversal {
		/**
		 * Returns the current number of element nodes that are children of this 
		 * element. 0 if this element has no child nodes that are of nodeType 1.
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
		function get childElementCount():Number;
		
		/**
		 * Returns the first child element node of this element. null if this 
		 * element has no child elements.
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
		function get firstElementChild():Element;
		
		/**
		 * Returns the last child element node of this element. null if this 
		 * element has no child elements.
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
		function get lastElementChild():Element;
		
		/**
		 * Returns the next sibling element node of this element. null if this 
		 * element has no element sibling nodes that come after this one in the 
		 * document tree.
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
		function get nextElementSibling():Element;
		
		/**
		 * Returns the previous sibling element node of this element. null if 
		 * this element has no element sibling nodes that come before this one 
		 * in the document tree.
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
		function get previousElementSibling():Element;
	}
}