package dom.style.css {
	
	import dom.core.DOMImplementation;
	import dom.core.types.DOMString;
	
	/**
	 * This interface allows the DOM user to create a CSSStyleSheet outside the context of a document. 
	 * 
	 * <p>There is no way to associate the new CSSStyleSheet with a document in DOM Level 2.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-StyleSheetCreation W3C - DOM Level 2 Style: DOMImplementationCSS
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public interface DOMImplementationCSS extends DOMImplementation {
		
		/**
		 * Creates a new CSSStyleSheet. 
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the specified media string value 
		 * has a syntax error and is unparsable.
		 * 
		 * @param	title The advisory title.
		 * @param	media The comma-separated list of media associated with the new style sheet.
		 * @return A new CSS style sheet.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-DOMImplementationCSS-createCSSStyleSheet W3C - DOM Level 2 Style: DOMImplementationCSS.createCSSStyleSheet()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		function createCSSStyleSheet(title:DOMString, media:DOMString):CSSStyleSheet;
	}
}