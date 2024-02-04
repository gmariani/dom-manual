package dom.style.stylesheets {
	
	import dom.core.DOMStringList;
	import dom.core.types.DOMString;
	
	/**
	 * The DocumentStyle interface provides a mechanism by which the style sheets embedded in a document 
	 * can be retrieved. The expectation is that an instance of the DocumentStyle interface can be obtained 
	 * by using binding-specific casting methods on an instance of the Document interface.
	 * 
	 * <p><strong>Note:</strong> CSSOM is in its very early stages. The intention is that this specification will in due course supersede DOM Level 2 Style. </p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheet-DocumentStyle W3C - DOM Level 2 Style: DocumentStyle
	 * @see http://dev.w3.org/csswg/cssom/#documentstyle W3C - CSSOM: DocumentStyle
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public interface DocumentStyle {
		
		/**
		 * A list containing all the style sheets explicitly linked into or embedded in a document. For HTML 
		 * documents, this includes external style sheets, included via the HTML LINK element, and inline 
		 * STYLE elements. In XML, this includes external style sheets, included via style sheet 
		 * processing instructions.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms531200%28VS.85%29.aspx MSDN: styleSheets Property
		 * @see http://developer.mozilla.org/en/DOM/document.styleSheets  MDC - Document.styleSheets
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-StyleSheet-DocumentStyle W3C - DOM Level 2 Style: DocumentStyle..styleSheets
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-stylesheets W3C - CSSOM: DocumentStyle.styleSheets
		 * @see http://www.quirksmode.org/dom/w3c_css.html#access  Quirksmode: Accessing style sheets
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.5
		 * @productversion Safari 3.0
		 * @productversion Safari 3.1
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0
		 * @productversion Chrome 2.0
		 * @productversion Opera 9.62
		 * @productversion Opera 10.0a
		 */
		function get styleSheets():StyleSheetList;
		
		/**
		 * This attribute indicates which style sheet set is in use. This attribute is live; changing the disabled attribute 
		 * on style sheets directly will change the value of this attribute.
		 * 
		 * <p>If all the sheets that are enabled and have a title have the same title (by case-sensitive  comparisons) 
		 * then the value of this attribute must be exactly equal to the title of the first enabled style sheet with a 
		 * title in the styleSheets  list. Otherwise, if style sheets from different sets are enabled, then the return 
		 * value must be null (there is no way to determine what the currently selected style sheet set is in those 
		 * conditions). Otherwise, either all style sheets that have a title are disabled, or there are no alternative 
		 * style sheets, and selectedStyleSheetSet  must return the empty string.</p>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.selectedStyleSheetSet MDC - Document.selectedStyleSheetSet
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-selectedStyleSheetSet W3C - DocumentStyle.selectedStyleSheetSet
		 * 
		 * @playerversion CSSOM 0
		 * @since CSSOM 0
		 */
		function get selectedStyleSheetSet():DOMString;
		function set selectedStyleSheetSet(value:DOMString):void;
		
		/**
		 * This attribute must initially have the value null. Its value changes when the selectedStyleSheetSet  attribute is set.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.lastStyleSheetSet MDC - Document.lastStyleSheetSet
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-lastStyleSheetSet W3C - DocumentStyle.lastStyleSheetSet
		 * 
		 * @playerversion CSSOM 0
		 * @since CSSOM 0
		 */
		function get lastStyleSheetSet():DOMString;
		
		/**
		 * This attribute must be the preferred style sheet set as set by the author. It is determined from the order 
		 * of style sheet declarations and the Default-Style HTTP headers. If there is no preferred style sheet set, 
		 * this attribute must  be the empty string. The case of this attribute must  exactly match the case given by 
		 * the author where the preferred style sheet is specified or implied. This attribute must  never be null.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.preferredStyleSheetSet MDC - Document.preferredStyleSheetSet
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-preferredStyleSheetSet W3C - DocumentStyle.preferredStyleSheetSet
		 * 
		 * @playerversion CSSOM 0
		 * @since CSSOM 0
		 */
		function get preferredStyleSheetSet():DOMString;
		
		/**
		 * This must be a live list of the currently available style sheet sets. This list is constructed by enumerating 
		 * all the style sheets for this document available to the implementation, in the order they are listed in the 
		 * styleSheets  attribute, adding the title of each style sheet with a title to the list, avoiding duplicates by 
		 * dropping titles that match (case-sensitively) titles that have already been added to the list.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.styleSheetSets MDC - Document.styleSheetSets
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-styleSheetSets W3C - DocumentStyle.styleSheetSets
		 * 
		 * @playerversion CSSOM 0
		 * @since CSSOM 0
		 */
		function get styleSheetSets():DOMStringList;
		
		/**
		 * Invoking this method must change the disabled attribute on each StyleSheet object with a title in the 
		 * styleSheets attribute, so that all those whose title matches the name argument are enabled, and all others 
		 * are disabled. Title matches must be case-sensitive.
		 * 
		 * <p>Invoking this method with the empty string value must disable all alternative and preferred style sheets
		 * (but does not change the state of persistent style sheets).</p>
		 * 
		 * <p>Invoking this method with the null value must have no effect.</p>
		 * 
		 * <p>Style sheets that do not have a title are never affected by this method. This method does not change the 
		 * values of the lastStyleSheetSet or preferredStyleSheetSet  attributes.</p>
		 * 
		 * @param	name
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.enableStyleSheetsForSet MDC - Document.enableStylesheetsForSet()
		 * @see http://dev.w3.org/csswg/cssom/#documentstyle-enablestylesheetsforset W3C - DocumentStyle.enableStylesheetsForSet()
		 * 
		 * @playerversion CSSOM 0
		 * @since CSSOM 0
		 */
		function enableStylesheetsForSet(name:DOMString):void;
	}
}