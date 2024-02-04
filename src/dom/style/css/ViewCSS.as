package dom.style.css {
	
	import dom.core.Element;
	import dom.core.types.DOMString;
	import dom.views.AbstractView;
	
	/**
	 * This interface represents a CSS view. The getComputedStyle method provides a read only access to the computed 
	 * values of an element.
	 * 
	 * <p>The expectation is that an instance of the ViewCSS interface can be obtained by using binding-specific casting 
	 * methods on an instance of the AbstractView interface.</p>
	 * 
	 * <p>Since a computed style is related to an Element node, if this element is removed from the document, the associated 
	 * CSSStyleDeclaration and CSSValue related to this declaration are no longer valid.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-ViewCSS W3C - DOM Level 2 Style: ViewCSS
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public interface ViewCSS extends AbstractView {
		
		/**
		 * This method is used to get the computed style as it is defined in CSS2. 
		 * 
		 * @param	elt The element whose style is to be computed. This parameter cannot be null.
		 * @param	pseudoElt The pseudo-element or null if none.
		 * @return The computed style. The CSSStyleDeclaration is read-only and contains only absolute values.
		 * 
		 * @example
		 * <listing>
		 * var element = document.getElementById(“elemId”);
		 * var style = document.defaultView.getComputedStyle(element, pseudoElt);</listing>
		 * 
		 * <listing>
		 * //practical example:
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * 	&lt;style&gt;
		 * 		#elem_container{
		 * 			position: absolute;
		 * 			left: 100Px;
		 * 			top: 200px;
		 * 			height:100px;
		 * 		}
		 * 	&lt;/style&gt;
		 * &lt;/head&gt;
		 * &lt;body&gt;
		 * 	&lt;div id="elem_container"&gt;dummy&lt;/div&gt;
		 * 
		 * 	&lt;div id="output"&gt;&lt;/div&gt;  
		 * 	&lt;script&gt;
		 * 		function getTheStyle() {
		 * 			var elem=document.getElementById("elem_container");
		 * 			var theCSSprop=document.defaultView.getComputedStyle(elem,null).getPropertyValue("height");
		 * 			document.getElementById("output").innerHTML=theCSSprop;
		 * 		}
		 * 	getTheStyle();
		 * 	&lt;/script&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/window.getComputedStyle MDC - window.getComputedStyle
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSview-getComputedStyle W3C - DOM Level 2 Style: ViewCSS.getComputedStyle()
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/ W3C - CSS2 Specification
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function getComputedStyle(elt:Element, pseudoElt:DOMString):CSSStyleDeclaration;
	}
}