package dom.views {
	
	import dom.views.AbstractView;
	
	/**
	 * The DocumentView interface is implemented by Document objects in DOM 
	 * implementations supporting DOM Views. It provides an attribute to 
	 * retrieve the default view of a document.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Views/views.html#Views-DocumentView W3C - DocumentView
	 * 
	 * @playerversion DOMViews 2
	 * @since DOMCore 2
	 */
	public interface DocumentView {
		
		/**
		 * The default AbstractView for this Document, or null if none available.
		 * 
		 * <p><strong>Note:</strong> document.defaultView is generally a reference to the window object 
		 * for the document, however that is not defined in the specification and can't be relied upon 
		 * for all host environments, particularly as not all browsers implement it.</p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.defaultView MDC - Document.defaultView
		 * @see http://www.w3.org/TR/DOM-Level-2-Views/views.html#Views-DocumentView-defaultView W3C - DocumentView.defaultView
		 * 
		 * @playerversion DOMViews 2
		 * @since DOMCore 2
		 */
		function get defaultView():AbstractView;
	}
}