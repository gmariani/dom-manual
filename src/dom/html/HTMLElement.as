package dom.html {
	
	import dom.style.css.CSSStyleDeclaration;
	import dom.style.css.ElementCSSInlineStyle;
	import dom.core.Element;
	import dom.core.types.DOMString;
	
	/**
	 * All HTML element interfaces derive from this class. Elements that only 
	 * expose the HTML core attributes are represented by the base 
	 * HTMLElement interface. These elements are as follows:
	 * 
	 * <ul>
	 * <li>special: SUB, SUP, SPAN, BDO</li>
	 * <li>font: TT, I, B, U, S, STRIKE, BIG, SMALL</li>
	 * <li>phrase: EM, STRONG, DFN, CODE, SAMP, KBD, VAR, CITE, ACRONYM, ABBR</li>
	 * <li>list: DD, DT</li>
	 * <li>NOFRAMES, NOSCRIPT</li>
	 * <li>ADDRESS, CENTER</li>
	 * </ul>
	 * 
	 * DOM Level 2
	 * 
	 * @internal http://www.whatwg.org/specs/web-apps/current-work/#htmlelement
	 */
	public class HTMLElement extends Element implements ElementCSSInlineStyle {
		
		/**
		 * The class attribute of the element. This attribute has been renamed 
		 * due to conflicts with the "class" keyword exposed by many languages. 
		 * See the class attribute definition in HTML 4.01.
		 * 
		 * @example
		 * var elementNodeReference = document.getElementById("div1");
		 * if (elementNodeReference.className == "fixed") {
		 * // skip a particular class of element
		 * goNextElement();
		 * };
		 */
		public function get className():DOMString { return null; };
		public function set className(value:DOMString):void { };
		
		/**
		 * The dir attribute gets or sets the text writing directionality of 
		 * the content of the current element. 
		 * 
		 * Possible values for dir are ltr, for Left-to-right, and rtl, for Right-to-left. 
		 * 
		 * Note: The text writing directionality of an element is which direction 
		 * that text goes (for support of different language systems). Arabic 
		 * languages and Hebrew are typical languages using the rtl directionality.
		 * 
		 * Note: An image can have its dir attribute set to rtl in which case the 
		 * HTML attributes title and alt will be formatted and defined as rtl.
		 * 
		 * Note: When a table has its dir set to rtl, the column order are arranged 
		 * from right to left. 
		 * 
		 * @example
		 * var parg = document.getElementById("para1");
		 * parg.dir = "rtl"; 
		 * // change the text direction on a paragraph identified as "para1"
		 */
		public function get dir():DOMString { return null; };
		public function set dir(value:DOMString):void { };
		
		/**
		 * Gets or sets the element's identifier. 
		 * 
		 * Note: The ID must be unique in a document, and is often used to 
		 * retrieve the element using document.getElementById. 
		 */
		public function get id():DOMString { return null; };
		public function set id(value:DOMString):void { };
		
		/**
		 * This property gets or sets the base language of an element's attribute 
		 * values and text content. 
		 * 
		 * Note: The language code returned by this property is defined in 
		 * RFC 1766. Common examples include "en" for English, "ja" for 
		 * Japanese, "es" for Spanish and so on. The default value of this 
		 * attribute is unknown. Note that this attribute, though valid at the 
		 * individual element level described here, is most often specified for 
		 * the root element of the document.
		 * 
		 * Note: This also only works with the deprecated lang attribute and not 
		 * with xml:lang.
		 * 
		 * @example
		 * // this snippet compares the base language and 
		 * // redirects to another url based on language
		 * if (document.documentElement.lang == "en") {
		 * window.location.href = "Some_document.html.en";
		 * } else if(document.documentElement.lang == "ru") {
		 * window.location.href = "Some_document.html.ru";
		 * };
		 */
		public function get lang():DOMString { return null; };
		public function set lang(value:DOMString):void { };
		
		/**
		 * a pointer button was clicked
		 */
		public function get onclick():Function { return null; };
		public function set onclick(value:Function):void { };
		
		/**
		 * <strong>Non-Standard | Firefox 3+</strong>
		 * 
		 * This event is sent when the user attempts to copy text.
		 */
		public function get oncopy():Function { return null; };
		public function set oncopy(value:Function):void { };
		
		/**
		 * <strong>Non-Standard | Firefox 3+</strong>
		 * 
		 * This event is sent when the user attempts to cut text.
		 */
		public function get oncut():Function { return null; };
		public function set oncut(value:Function):void { };
		
		/**
		 * a pointer button was double clicked
		 */
		public function get ondblclick():Function { return null; };
		public function set ondblclick(value:Function):void { };
		
		/**
		 * a pointer button was pressed down
		 */
		public function get onmousedown():Function { return null; };
		public function set onmousedown(value:Function):void { };
		
		/**
		 * a pointer button was released
		 */
		public function get onmouseup():Function { return null; };
		public function set onmouseup(value:Function):void { };
		
		/**
		 * a pointer was moved onto
		 */
		public function get onmouseover():Function { return null; };
		public function set onmouseover(value:Function):void { };
		
		/**
		 * a pointer was moved within
		 */
		public function get onmousemove():Function { return null; };
		public function set onmousemove(value:Function):void { };
		
		/**
		 * a pointer was moved away
		 */
		public function get onmouseout():Function { return null; };
		public function set onmouseout(value:Function):void { };
		
		/**
		 * <strong>Non-Standard | Firefox 3+</strong>
		 * 
		 * This event is sent when the user attempts to paste text.
		 */
		public function get onpaste():Function { return null; };
		public function set onpaste(value:Function):void { };
		
		/**
		 * a key was pressed and released
		 */
		public function get onkeypress():Function { return null; };
		public function set onkeypress(value:Function):void { };
		
		/**
		 * a key was pressed down
		 */
		public function get onkeydown():Function { return null; };
		public function set onkeydown(value:Function):void { };
		
		/**
		 * a key was released
		 */
		public function get onkeyup():Function { return null; };
		public function set onkeyup(value:Function):void { };
		
		/**
		 * @inheritDoc
		 */
		public function get style():CSSStyleDeclaration { return null };
		
		/**
		 * Establishes the text to be displayed in a 'tool tip' popup when the 
		 * mouse is over the displayed node.
		 * 
		 * If a node does not have a title attribute, then the default action 
		 * is to inherit it from its parent node, which in turn may inherit it 
		 * from its parent node, etc. 
		 * 
		 * @example
		 * button1.title = "click to refresh";
		 */
		public function get title():DOMString { return null; };
		public function set title(value:DOMString):void { };
	}
}