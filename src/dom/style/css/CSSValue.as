package dom.style.css {
	
	import dom.core.types.DOMString;
	
	/**
	 * The CSSValue interface represents a simple or a complex value. A CSSValue 
	 * object only occurs in a context of a CSS property.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSValue W3C - DOM Level 2 Style: CSSValue
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSValue {
		
		/**
		 * The value is inherited and the cssText contains "inherit".
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSValue W3C - DOM Level 2 Style: CSSValue
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_INHERIT:Number = 0;
		
		/**
		 * The value is a primitive value and an instance of the CSSPrimitiveValue 
		 * interface can be obtained by using binding-specific casting methods on 
		 * this instance of the CSSValue interface.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSValue W3C - DOM Level 2 Style: CSSValue
		 * @see dom.style.css.CSSPrimitiveValue
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_PRIMITIVE_VALUE:Number = 1;
		
		/**
		 * The value is a CSSValue list and an instance of the CSSValueList interface 
		 * can be obtained by using binding-specific casting methods on this instance 
		 * of the CSSValue interface.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSValue W3C - DOM Level 2 Style: CSSValue
		 * @see dom.style.css.CSSValueList
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_VALUE_LIST:Number = 2;
		
		/**
		 * The value is a custom value.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSValue W3C - DOM Level 2 Style: CSSValue
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public const CSS_CUSTOM:Number = 3;
		
		/**
		 * A string representation of the current value.
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the specified CSS string 
		 * value has a syntax error and is unparsable.
		 * 
		 * @throws dom.core.DOMException INVALID_MODIFICATION_ERR: Raised if the 
		 * specified CSS string value represents a different type of values than the 
		 * values allowed by the CSS property.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this 
		 * declaration is readonly or a property is readonly.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSValue-cssText W3C - DOM Level 2 Style: CSSValue.cssText
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get cssText():DOMString { return null; };
		
		/**
		 * A code defining the type of the value as defined above.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSValue-cssValueType W3C - DOM Level 2 Style: CSSValue.cssValueType
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get cssValueType():Number { return 0; };
	}
}