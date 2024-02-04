package dom.loadsave {
	
	import dom.core.Element;
	import dom.core.Node;
	
	/**
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParserFilter
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public class LSParserFilter {
		// Constants returned by startElement and acceptNode
		
		/**
		 * Accept the node.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParserFilter-FILTER_ACCEPT
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const FILTER_ACCEPT:Number = 1;
		
		/**
		 * Reject the node and its children.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParserFilter-FILTER_REJECT
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const FILTER_REJECT:Number = 2;
		
		/**
		 * Skip this single node. The children of this node will still be considered. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParserFilter-FILTER_SKIP
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const FILTER_SKIP:Number = 3;
		
		/**
		 * Interrupt the normal processing of the document. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParserFilter-FILTER_INTERRUPT
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const FILTER_INTERRUPT:Number = 4;
		
		/**
		 * 
		 * @param	elementArg
		 * @return
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParserFilter-startElement
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function startElement(elementArg:Element):Number { return 0; };
		
		/**
		 * 
		 * @param	nodeArg
		 * @return
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParserFilter-acceptNode
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function acceptNode(nodeArg:Node):Number { return 0; };
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParserFilter-whatToShow
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function get whatToShow():Number { return 0; };
	}
}