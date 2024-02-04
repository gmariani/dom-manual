package dom.tr.range {
	
	/**
	 * An integer indicating the type of error generated.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Traversal-Range/ranges.html#RangeException W3C - DOM Level 2 Range: RangeExceptionCode
	 * 
	 * @playerversion DOMTR 2
	 * @since DOMCore 2
	 */
	public class RangeExceptionCode {
		/**
		 * If the boundary-points of a Range do not meet specific requirements.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const BAD_BOUNDARYPOINTS_ERR:Number = 1;
		
		/**
		 * If the container of an boundary-point of a Range is being set to either a node of an invalid type or a node with an ancestor of an invalid type.
		 * 
		 * @playerversion DOMTR 2
		 * @since DOMCore 2
		 */
		public static const INVALID_NODE_TYPE_ERR:Number = 2;
	}
}