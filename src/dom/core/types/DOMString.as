package dom.core.types {
	
	/**
	 * A DOMString is a sequence of 16-bit units.
	 * 
	 * The UTF-16 encoding was chosen because of its widespread industry practice. 
	 * Note that for both HTML and XML, the document character set (and therefore 
	 * the notation of numeric character references) is based on UCS [ISO/IEC 
	 * 10646]. A single numeric character reference in a source document may therefore 
	 * in some cases correspond to two 16-bit units in a DOMString (a high surrogate 
	 * and a low surrogate). For issues related to string comparisons, refer to String 
	 * Comparisons in the DOM.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMString W3C - DOM 3 Core: DOMString
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 * @modified DOMCore 3
	 */
	public class DOMString { }
}