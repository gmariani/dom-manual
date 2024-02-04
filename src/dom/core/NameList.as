package dom.core {
	
	import dom.core.types.DOMString;
	
	/**
	 * The NameList interface provides the abstraction of an ordered collection 
	 * of parallel pairs of name and namespace values (which could be null 
	 * values), without defining or constraining how this collection is 
	 * implemented. The items in the NameList are accessible via an integral 
	 * index, starting from 0.
	 * 
	 * <p><strong>Note (Mozilla):</strong> Although there is an XPCOM interface for it, this does not seem to be implemented in Mozilla</p>
	 * 
	 * @see http://developer.mozilla.org/En/DOM/NameList MDC - NameList
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#NameList W3C - NameList
	 * 
	 * @playerversion DOMCore 3
	 * @since DOMCore 3
	 */
	public interface NameList {
		
		/**
		 * The number of pairs (name and namespaceURI) in the list. The range 
		 * of valid child node indices is 0 to length-1  inclusive. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NameList.length MDC - NameList.length
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#NameList-length W3C - NameList.length
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function get length():Number;
		
		/**
		 * Test if a name is part of this NameList. 
		 * 
		 * @param	str The name to look for. 
		 * @return If the name has been found.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NameList.contains MDC - NameList.contains()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#NameList-contains W3C - NameList.contains()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function contains(str:DOMString):Boolean;
		
		/**
		 * Test if the pair namespaceURI/name is part of this NameList. 
		 * 
		 * @param	namespaceURI The namespace URI to look for. 
		 * @param	name The name to look for. 
		 * @return If the pair namespaceURI/name has been found.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NameList.containsNS MDC - NameList.containsNS()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#NameList-containsNS W3C - NameList.containsNS()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function containsNS(namespaceURI:DOMString, name:DOMString):Boolean;
		
		/**
		 * Returns the indexth name item in the collection. 
		 * 
		 * @param	index Index into the collection.
		 * @return The name at the indexth position in the NameList, or null if 
		 * there is no name for the specified index or if the index is out of range. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NameList.getName MDC - NameList.getName()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#NameList-getName W3C - NameList.getName()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function getName(index:Number):DOMString;
		
		/**
		 * Returns the indexth namespaceURI item in the collection. 
		 * 
		 * @param	index Index into the collection.
		 * @return The namespace URI at the indexth position in the NameList, or null 
		 * if there is no name for the specified index or if the index is out of range. 
		 * 
		 * @see http://developer.mozilla.org/En/DOM/NameList.getNamespaceURI MDC - NameList.getNamespaceURI()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#NameList-getNamespaceURI W3C - NameList.getNamespaceURI()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		function getNamespaceURI(index:Number):DOMString;
	}
}