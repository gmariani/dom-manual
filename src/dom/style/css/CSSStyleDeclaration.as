package dom.style.css {
	
	import dom.core.types.DOMString;
	
	/**
	 * The CSSStyleDeclaration interface represents a single CSS declaration block.
	 * 
	 * <p class="style1">TODO: Add MS proprietary methods</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/dd347052%28VS.85%29.aspx MSDN - CSSStyleDeclaration
	 * @see http://developer.mozilla.org/En/DOM/CSSStyleDeclaration MDC - CSSStyleDeclaration
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleDeclaration W3C - DOM Level 2 Style: CSSStyleDeclaration
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class CSSStyleDeclaration {
		
		/**
		 * The parsable textual representation of the declaration block (excluding the 
		 * surrounding curly braces). 
		 * 
		 * <p>Setting this attribute will result in the parsing 
		 * of the new value and resetting of all the properties in the declaration block 
		 * including the removal or addition of properties.</p>
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the specified CSS string 
		 * value has a syntax error and is unparsable.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this 
		 * declaration is readonly or a property is readonly.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleDeclaration-cssText W3C - DOM Level 2 Style: CSSStyleDeclaration.cssText
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get cssText():DOMString { return null; };
		
		/**
		 * The number of properties that have been explicitly set in this declaration block. 
		 * The range of valid indices is 0 to length-1 inclusive.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleDeclaration-length W3C - DOM Level 2 Style: CSSStyleDeclaration.length
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get length():Number { return 0; };
		
		/**
		 * The CSS rule that contains this declaration block or null if this CSSStyleDeclaration 
		 * is not attached to a CSSRule.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleDeclaration-parentRule W3C - DOM Level 2 Style: CSSStyleDeclaration.parentRule
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get parentRule():CSSRule { return null; };
		
		/**
		 * Used to retrieve the object representation of the value of a CSS property if it has been explicitly 
		 * set within this declaration block. This method returns null if the property is a shorthand property. 
		 * Shorthand property values can only be accessed and modified as strings, using the getPropertyValue 
		 * and setProperty methods. 
		 * 
		 * @param	propertyName The name of the CSS property.
		 * @return Returns the value of the property if it has been explicitly set for this declaration block. 
		 * Returns null if the property has not been set.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleDeclaration-getPropertyCSSValue W3C - DOM Level 2 Style: CSSStyleDeclaration.getPropertyCSSValue()
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/propidx.html W3C - CSS2: CSS Property index
		 * @see dom.style.css.CSS2Properties
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function getPropertyCSSValue(propertyName:DOMString):CSSValue { return null; };
		
		/**
		 * Used to retrieve the priority of a CSS property (e.g. the "important" qualifier) if the property 
		 * has been explicitly set in this declaration block. 
		 * 
		 * @param	propertyName The name of the CSS property.
		 * @return A string representing the priority (e.g. "important") if one exists. The empty string if none exists.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleDeclaration-getPropertyPriority W3C - DOM Level 2 Style: CSSStyleDeclaration.getPropertyPriority()
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/propidx.html W3C - CSS2: CSS Property index
		 * @see dom.style.css.CSS2Properties
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function getPropertyPriority(propertyName:DOMString):DOMString { return null; };
		
		/**
		 * Used to retrieve the value of a CSS property if it has been explicitly set within this declaration block. 
		 * 
		 * @param	propertyName The name of the CSS property.
		 * @return  Returns the value of the property if it has been explicitly set for this declaration block. 
		 * Returns the empty string if the property has not been set.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleDeclaration-getPropertyValue W3C - DOM Level 2 Style: CSSStyleDeclaration.getPropertyValue()
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/propidx.html W3C - CSS2: CSS Property index
		 * @see dom.style.css.CSS2Properties
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function getPropertyValue(propertyName:DOMString):DOMString { return null; };
		
		/**
		 * Used to retrieve the properties that have been explicitly set in this declaration block. 
		 * The order of the properties retrieved using this method does not have to be the order in 
		 * which they were set. This method can be used to iterate over all properties in this 
		 * declaration block. 
		 * 
		 * @param	index Index of the property name to retrieve.
		 * @return The name of the property at this ordinal position. The empty string if no property 
		 * exists at this position.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleDeclaration-item W3C - DOM Level 2 Style: CSSStyleDeclaration.item()
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function item(index:Number):DOMString { return null; };
		
		/**
		 * Used to remove a CSS property if it has been explicitly set within this declaration block. 
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this declaration 
		 * is readonly or the property is readonly.
		 * 
		 * @param	propertyName The name of the CSS property.
		 * @return Returns the value of the property if it has been explicitly set for this declaration 
		 * block. Returns the empty string if the property has not been set or the property name does 
		 * not correspond to a known CSS property.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleDeclaration-removeProperty W3C - DOM Level 2 Style: CSSStyleDeclaration.removeProperty()
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/propidx.html W3C - CSS2: CSS Property index
		 * @see dom.style.css.CSS2Properties
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function removeProperty(propertyName:DOMString):DOMString { return null; };
		
		/**
		 * Used to set a property value and priority within this declaration block. 
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the specified value has a syntax 
		 * error and is unparsable.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this declaration 
		 * is readonly or the property is readonly.
		 * 
		 * @param	propertyName The name of the CSS property.
		 * @param	value The new value of the property.
		 * @param	priority The new priority of the property (e.g. "important").
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSSStyleDeclaration-setProperty W3C - DOM Level 2 Style: CSSStyleDeclaration.setProperty()
		 * @see http://www.w3.org/TR/1998/REC-CSS2-19980512/propidx.html W3C - CSS2: CSS Property index
		 * @see dom.style.css.CSS2Properties
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function setProperty(propertyName:DOMString, value:DOMString, priority:DOMString):void { };
	}
	
}