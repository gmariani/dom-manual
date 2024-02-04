package dom.views {
	
	import dom.views.DocumentView;
	
	/**
	 * A base interface that all views shall derive from.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Views/views.html#Views-AbstractView W3C - DOM 2 Views: AbstractView
	 * 
	 * @playerversion DOMViews 2
	 * @since DOMCore 2
	 */
	public interface AbstractView {
		
		/**
		 * The source DocumentView of which this is an AbstractView.
		 * 
		 * @playerversion DOMViews 2
		 * @since DOMCore 2
		 */
		function get document():DocumentView;
	}
}