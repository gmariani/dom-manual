package dom.style.css {
	
	import dom.core.types.DOMString;
	
	/**
	 * The Counter interface is used to represent any counter or counters function value. This interface reflects the values in 
	 * the underlying style property.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-Counter W3C - DOM Level 2 Style: Counter
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class Counter {
		
		/**
		 * This attribute is used for the identifier of the counter.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-Counter-identifier W3C - DOM Level 2 Style: Counter.identifier
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get identifier():DOMString { return null; };
		
		/**
		 * This attribute is used for the style of the list.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-Counter-listStyle W3C - DOM Level 2 Style: Counter.listStyle
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get listStyle():DOMString { return null; };
		
		/**
		 * This attribute is used for the separator of the nested counters.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-Counter-separator W3C - DOM Level 2 Style: Counter.separator
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get separator():DOMString { return null; };
	}
}