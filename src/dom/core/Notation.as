package dom.core {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * This interface represents a notation declared in the DTD. A notation 
	 * either declares, by name, the format of an unparsed entity, or is used for formal 
	 * declaration of processing instruction targets. The nodeName attribute inherited from 
	 * Node is set to the declared name of the notation.
	 * 
	 * <p><strong>Note:</strong> A Notation node does not have any parent.</p>
	 * 
	 * <p><strong>Note (Mozilla):</strong> This is not implemented in Mozilla.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms759198%28VS.85%29.aspx MSDN - IXMLDOMNotation
	 * @see http://developer.mozilla.org/En/DOM/Notation MDC - Notation
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-5431D1B9 W3C - Notation
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 */
	public class Notation extends Node {
		
		/**
		 * The public identifier of this notation. If the public identifier was not 
		 * specified, this is null.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms765397%28VS.85%29.aspx MSDN - publicId Property (IXMLDOMNotation)
		 * @see http://developer.mozilla.org/En/DOM/Notation.publicId MDC - Notation.publicId
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-54F2B4D0 W3C - Notation.publicId
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get publicId():DOMString { return null; };
		
		/**
		 * The system identifier of this notation. If the system identifier was not 
		 * specified, this is null. This may be an absolute URI or not.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms754668%28VS.85%29.aspx MSDN - systemId Property (IXMLDOMNotation)
		 * @see http://developer.mozilla.org/En/DOM/Notation.systemId MDC - Notation.systemId
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-E8AAB1D0 W3C - Notation.systemId
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get systemId():DOMString { return null; };
	}
}