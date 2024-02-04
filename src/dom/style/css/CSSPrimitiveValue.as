package dom.style.css {
	
	import dom.core.types.DOMString;
	
	/**
	 * The CSSPrimitiveValue interface represents a single CSS value. 
	 * 
	 * <p>This interface may be used to determine 
	 * the value of a specific style property currently set in a block or to set a specific style property 
	 * explicitly within the block. An instance of this interface might be obtained from the getPropertyCSSValue 
	 * method of the CSSStyleDeclaration interface. A CSSPrimitiveValue object only occurs in a context of 
	 * a CSS property.</p>
	 * 
	 * <p>Conversions are allowed between absolute values (from millimeters to centimeters, from degrees to radians, 
	 * and so on) but not between relative values. (For example, a pixel value cannot be converted to a 
	 * centimeter value.) Percentage values can't be converted since they are relative to the parent value (or 
	 * another property value). There is one exception for color percentage values: since a color percentage value 
	 * is relative to the range 0-255, a color percentage value can be converted to a number; (see also the 
	 * RGBColor interface).</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSPrimitiveValue extends CSSValue {
		
		// UnitTypes
		/**
		 * The value is not a recognized CSS2 value. The value can only be obtained by using the cssText attribute.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_UNKNOWN:Number = 0;
		
		/**
		 * The value is a simple number. The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q13 W3C - CSS2: Integers and real numbers
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_NUMBER:Number = 1;
		
		/**
		 * The value is a percentage. The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#percentage-units W3C - CSS2:  Percentages
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_PERCENTAGE:Number = 2;
		
		/**
		 * The value is a length (ems). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units W3C - CSS2: Lengths
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_EMS:Number = 3;
		
		/**
		 * The value is a length (exs). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units W3C - CSS2: Lengths
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_EXS:Number = 4;
		
		/**
		 * The value is a length (px). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units W3C - CSS2: Lengths
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_PX:Number = 5;
		
		/**
		 * The value is a length (cm). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units W3C - CSS2: Lengths
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_CM:Number = 6;
		
		/**
		 * The value is a length (mm). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units W3C - CSS2: Lengths
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_MM:Number = 7;
		
		/**
		 * The value is a length (in). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units W3C - CSS2: Lengths
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_IN:Number = 8;
		
		/**
		 * The value is a length (pt). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units W3C - CSS2: Lengths
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_PT:Number = 9;
		
		/**
		 * The value is a length (pc). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units W3C - CSS2: Lengths
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_PC:Number = 10;
		
		/**
		 * The value is an angle (deg). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q19 W3C - CSS2: Angles
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_DEG:Number = 11;
		
		/**
		 * The value is an angle (rad). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q19 W3C - CSS2: Angles
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_RAD:Number = 12;
		
		/**
		 * The value is an angle (grad). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q19 W3C - CSS2: Angles
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_GRAD:Number = 13;
		
		/**
		 * The value is a time (ms). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q20 W3C - CSS2: Times
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_MS:Number = 14;
		
		/**
		 * The value is a time (s). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q20 W3C - CSS2: Times
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_S:Number = 15;
		
		/**
		 * The value is a frequency (Hz). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q21 W3C - CSS2: Frequencies
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_HZ:Number = 16;
		
		/**
		 * The value is a frequency (kHz). The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q21 W3C - CSS2: Frequencies
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_KHZ:Number = 17;
		
		/**
		 * The value is a number with an unknown dimension. The value can be obtained by using the getFloatValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_DIMENSION:Number = 18;
		
		/**
		 * The value is a STRING. The value can be obtained by using the getStringValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#strings W3C - CSS2: Strings
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_STRING:Number = 19;
		
		/**
		 * The value is a URI. The value can be obtained by using the getStringValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#uri W3C - CSS2: URL + URN = URI
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_URI:Number = 20;
		
		/**
		 * The value is an identifier. The value can be obtained by using the getStringValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#value-def-identifier W3C - CSS2: Characters and case
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_IDENT:Number = 21;
		
		/**
		 * The value is a attribute function. The value can be obtained by using the getStringValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/generate.html#x16 W3C - CSS2: The 'content' property
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_ATTR:Number = 22;
		
		/**
		 * The value is a counter or counters function. The value can be obtained by using the getCounterValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#counter W3C - CSS2: Counters
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_COUNTER:Number = 23;
		
		/**
		 * The value is a rect function. The value can be obtained by using the getRectValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/visufx.html#value-def-shape W3C - CSS2: Clipping: the 'clip' property
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_RECT:Number = 24;
		
		/**
		 * The value is a RGB color. The value can be obtained by using the getRGBColorValue method.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue W3C - DOM Level 2 Style: CSSPrimitiveValue
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#color-units W3C - CSS2: Colors
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_RGBCOLOR:Number = 25;
		
		/**
		 * The type of the value as defined by the constants specified above.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue-primitiveType W3C - DOM Level 2 Style: CSSPrimitiveValue.primitiveType
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get primitiveType():Number { return 0; };
		
		/**
		 * This method is used to get a float value in a specified unit. If this CSS value doesn't contain a float value 
		 * or can't be converted into the specified unit, a DOMException is raised.  
		 * 
		 * @throws dom.core.DOMException INVALID_ACCESS_ERR: Raised if the CSS value doesn't contain a float value or if the 
		 * float value can't be converted into the specified unit.
		 * 
		 * @param	unitType A unit code to get the float value. The unit code can only be a float unit type (i.e. CSS_NUMBER, 
		 * CSS_PERCENTAGE, CSS_EMS, CSS_EXS, CSS_PX, CSS_CM, CSS_MM, CSS_IN, CSS_PT, CSS_PC, CSS_DEG, CSS_RAD, CSS_GRAD, CSS_MS, CSS_S, CSS_HZ, CSS_KHZ, CSS_DIMENSION).
		 * @return The float value in the specified unit.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue-getFloatValue W3C - DOM Level 2 Style: CSSPrimitiveValue.getFloatValue()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function getFloatValue(unitType:Number):Number { return 0; };
		
		/**
		 * This method is used to get the RGB color. If this CSS value doesn't contain a RGB color value, a DOMException is raised. 
		 * Modification to the corresponding style property can be achieved using the RGBColor interface. 
		 * 
		 * @throws dom.core.DOMException INVALID_ACCESS_ERR: Raised if the attached property can't return a RGB color value (e.g. 
		 * this is not CSS_RGBCOLOR).
		 * 
		 * @return The RGB color value.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue-getRGBColorValue W3C - DOM Level 2 Style: CSSPrimitiveValue.getRGBColorValue()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function getRGBColorValue():RGBColor { return null; };
		
		/**
		 * This method is used to get the Rect value. If this CSS value doesn't contain a rect value, a DOMException is raised. 
		 * Modification to the corresponding style property can be achieved using the Rect interface. 
		 * 
		 * @throws dom.core.DOMException INVALID_ACCESS_ERR: Raised if the CSS value doesn't contain a Rect value. (e.g. this is not CSS_RECT).
		 * 
		 * @return The Rect value.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue-getRectValue W3C - DOM Level 2 Style: CSSPrimitiveValue.getRectValue()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function getRectValue():Rect { return null; };
		
		/**
		 * This method is used to get the string value. If the CSS value doesn't contain a string value, a DOMException is raised.
		 * 
		 * <p><strong>Note:</strong> Some properties (like 'font-family' or 'voice-family') convert a whitespace separated list of idents to a string.</p>
		 * 
		 * @throws dom.core.DOMException INVALID_ACCESS_ERR: Raised if the CSS value doesn't contain a string value.
		 * 
		 * @return The string value in the current unit. The current primitiveType can only be a string unit type (i.e. CSS_STRING, 
		 * CSS_URI, CSS_IDENT and CSS_ATTR).
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue-getStringValue W3C - DOM Level 2 Style: CSSPrimitiveValue.getStringValue()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function getStringValue():DOMString { return null; };
		
		/**
		 * A method to set the float value with a specified unit. If the property attached with this value can not accept the specified 
		 * unit or the float value, the value will be unchanged and a DOMException will be raised. 
		 * 
		 * @throws dom.core.DOMException INVALID_ACCESS_ERR: Raised if the attached property doesn't support the float value or the unit type.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @param	unitType A unit code as defined above. The unit code can only be a float unit type (i.e. CSS_NUMBER, 
		 * CSS_PERCENTAGE, CSS_EMS, CSS_EXS, CSS_PX, CSS_CM, CSS_MM, CSS_IN, CSS_PT, CSS_PC, CSS_DEG, CSS_RAD, CSS_GRAD, CSS_MS, CSS_S, 
		 * CSS_HZ, CSS_KHZ, CSS_DIMENSION).
		 * @param	floatValue The new float value.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue-setFloatValue W3C - DOM Level 2 Style: CSSPrimitiveValue.setFloatValue()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function setFloatValue(unitType:Number, floatValue:Number):void { };
		
		/**
		 * A method to set the string value with the specified unit. If the property attached to this value can't accept the specified unit 
		 * or the string value, the value will be unchanged and a DOMException will be raised. 
		 * 
		 * @throws dom.core.DOMException INVALID_ACCESS_ERR: Raised if the CSS value doesn't contain a string value or if the string value 
		 * can't be converted into the specified unit.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
		 * 
		 * @param	stringType A string code as defined above. The string code can only be a string unit type (i.e. CSS_STRING, 
		 * CSS_URI, CSS_IDENT, and CSS_ATTR).
		 * @param	stringValue The new string value.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSPrimitiveValue-setStringValue W3C - DOM Level 2 Style: CSSPrimitiveValue.setStringValue()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function setStringValue(stringType:Number, stringValue:DOMString):void { };
	}
}