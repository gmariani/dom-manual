package dom.style.css {
	
	/**
	 * The RGBColor interface is used to represent any RGB color value. 
	 * 
	 * <p>This interface reflects the values 
	 * in the underlying style property. Hence, modifications made to the CSSPrimitiveValue objects modify 
	 * the style property.</p>
	 * 
	 * <p>A specified RGB color is not clipped (even if the number is outside the range 0-255 or 0%-100%). A 
	 * computed RGB color is clipped depending on the device.</p>
	 * 
	 * <p>Even if a style sheet can only contain an integer for a color value, the internal storage of this 
	 * integer is a float, and this can be used as a float in the specified or the computed style.</p>
	 * 
	 * <p>A color percentage value can always be converted to a number and vice versa.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-RGBColor W3C - DOM Level 2 Style: RGBColor
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class RGBColor {
		
		/**
		 * This attribute is used for the blue value of the RGB color.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-RGBColor-blue W3C - DOM Level 2 Style: RGBColor.blue
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get blue():CSSPrimitiveValue { return null; };
		
		/**
		 * This attribute is used for the green value of the RGB color.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-RGBColor-green W3C - DOM Level 2 Style: RGBColor.green
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get green():CSSPrimitiveValue { return null; };
		
		/**
		 * This attribute is used for the red value of the RGB color.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-RGBColor-red W3C - DOM Level 2 Style: RGBColor.red
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get red():CSSPrimitiveValue { return null; };
	}
}