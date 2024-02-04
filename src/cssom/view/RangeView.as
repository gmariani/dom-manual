package cssom.view {
	
	/**
	 * Has properties and methods that give information about the dimensions of a Range.
	 * 
	 * @see http://www.w3.org/TR/cssom-view/#the-rangeview-interface  W3C CSSOM Views Specification: RangeView
	 * 
	 * @playerversion CSSOMView 0
	 * @since DOMTR 2
	 */
	public interface RangeView {
		
		/**
		 * Retrieves a collection of rectangles that describes the layout of the 
		 * contents of an object or range within the client. Each rectangle 
		 * describes a single line.
		 * 
		 * @see http://www.w3.org/TR/cssom-view/#rangeview-getclientrects  W3C - CSSOM View: RangeView.getClientRects()
		 * @see cssom.view.ElementView#getClientRects() ElementView.getClientRects()
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMTR 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.1b_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function getClientRects():TextRectangleList;
		
		/**
		 * Retrieves an object that specifies the bounds of a collection of TextRectangle objects.
		 * 
		 * @return The returned value is a TextRectangle object which is the union 
		 * of the rectangles returned by getClientRects() for the element, i.e., 
		 * the CSS border-boxes associated with the element.
		 * 
		 * @see http://www.w3.org/TR/cssom-view/#rangeview-getboundingclientrect  W3C - CSSOM View: RangeView.getBoundingClientRect()
		 * @see cssom.view.ElementView#getBoundingClientRect() ElementView.getBoundingClientRect()
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMTR 2
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8_unknown
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.1b_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		function getBoundingClientRect():TextRectangle;
	}
}