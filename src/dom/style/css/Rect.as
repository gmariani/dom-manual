package dom.style.css {
	
	/**
	 * The Rect interface is used to represent any rect value. 
	 * 
	 * <p>This interface reflects the values in 
	 * the underlying style property. Hence, modifications made to the CSSPrimitiveValue objects 
	 * modify the style property.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-Rect W3C - DOM Level 2 Style: Rect
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class Rect {
		
		/**
		 * This attribute is used for the bottom of the rect.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-Rect-bottom W3C - DOM Level 2 Style: Rect.bottom
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get bottom():CSSPrimitiveValue { return null; };
		
		/**
		 * This attribute is used for the left of the rect.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-Rect-left W3C - DOM Level 2 Style: Rect.left
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get left():CSSPrimitiveValue { return null; };
		
		/**
		 * This attribute is used for the right of the rect.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-Rect-right W3C - DOM Level 2 Style: Rect.right
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get right():CSSPrimitiveValue { return null; };
		
		/**
		 * This attribute is used for the top of the rect.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-Rect-top W3C - DOM Level 2 Style: Rect.top
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get top():CSSPrimitiveValue { return null; };
	}
}