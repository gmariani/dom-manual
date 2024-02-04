package cssom.view {
	
	import dom.core.types.DOMString;
	
	/**
	 * Should be an object returned by the Window.media property, although I haven't found any
	 * browsers that support this.
	 * 
	 * @see http://www.w3.org/TR/cssom-view/#the-media-interface W3C CSSOM Views Specification: Media
	 * 
	 * @example
	 * <listing>var m = window.media;</listing>
	 * 
	 * @playerversion CSSOMView 0
	 */
	public interface Media {
		
		/**
		 * Returns the string that represents the canvas' current rendering mode in canonical form.
		 * 
		 * @see http://www.w3.org/TR/cssom-view/#media-type W3C CSSOM Views Specification: Media.type
		 * 
		 * @playerversion CSSOMView 0
		 */
		function get type():DOMString;
		
		/**
		 * @param	mediaquery
		 * @return If the mediaquery matches the state of the current view.
		 * 
		 * @see http://www.w3.org/TR/cssom-view/#media-query W3C CSSOM Views Specification: Media.query()
		 * 
		 * @playerversion CSSOMView 0
		 */
		function query(mediaquery:DOMString):Boolean;
	}
}