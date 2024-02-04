package dom.style.stylesheets {
	
	/**
	 * The LinkStyle interface provides a mechanism by which a style sheet can be retrieved from the node responsible 
	 * for linking it into a document. An instance of the LinkStyle interface can be obtained using binding-specific 
	 * casting methods on an instance of a linking node.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-LinkStyle W3C - DOM Level 2 Style: LinkStyle
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class LinkStyle {
		
		/**
		 * The style sheet.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-LinkStyle W3C - DOM Level 2 Style: sheet Property
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get sheet():StyleSheet { return null; };
	}
}