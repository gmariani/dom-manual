package dom.loadsave {
	
	import dom.core.DOMConfiguration;
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSSerializer
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public interface LSSerializer {
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSSerializer-config
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get domConfig():DOMConfiguration;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSSerializer-newLine
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get newLine():DOMString;
		function set newLine(value:DOMString):void;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSSerializer-LSSerializerFilter
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function get filter():LSSerializerFilter;
		function set filter(value:LSSerializerFilter):void;
		
		/**
		 * 
		 * @param	nodeArg
		 * @param	destination
		 * @return
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSSerializer-write
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function write(nodeArg:Node, destination:LSOutput):Boolean;
		
		/**
		 * 
		 * @param	nodeArg
		 * @param	uri
		 * @return
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSSerializer-writeToURI
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function writeToURI(nodeArg:Node, uri:DOMString):Boolean;
		
		/**
		 * 
		 * @param	nodeArg
		 * @return
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSSerializer-writeToString
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		function writeToString(nodeArg:Node):DOMString;
	}
}