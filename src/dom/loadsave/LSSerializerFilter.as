package dom.loadsave {
	
	import dom.tr.traversal.NodeFilter;
	
	/**
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSSerializerFilter
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public class LSSerializerFilter extends NodeFilter {
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSSerializerFilter-whatToShow
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function get whatToShow():Number { return 0; };
	}
}