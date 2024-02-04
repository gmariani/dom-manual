package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Form control.
	 * 
	 * <p>Note: Depending upon the environment in which the page is being viewed, the value 
	 * property may be read-only for the file upload input type. For the "password" input 
	 * type, the actual value returned may be masked to prevent unauthorized use. See the 
	 * INPUT element definition in [HTML 4.01].</p>
	 */
	public class HTMLInputElement extends HTMLElement {
		
		/**
		 * A comma-separated list of content types that a server processing this form will handle correctly.
		 */
		public function get accept():DOMString { return null; };
		public function set accept(value:DOMString):void { };
		
		/**
		 * A single character access key to give access to the form control.
		 */
		public function get accessKey():DOMString { return null; };
		public function set accessKey(value:DOMString):void { };
		
		/**
		 * Aligns this object (vertically or horizontally) with respect to its surrounding text.
		 */
		public function get align():DOMString { return null; };
		public function set align(value:DOMString):void { };
		
		/**
		 * Alternate text for user agents not rendering the normal content of this element.
		 */
		public function get alt():DOMString { return null; };
		public function set alt(value:DOMString):void { };
		
		/**
		 * When the type attribute of the element has the value "radio" or "checkbox", this represents 
		 * the current state of the form control, in an interactive user agent. Changes to this attribute 
		 * change the state of the form control, but do not change the value of the HTML checked 
		 * attribute of the INPUT element.
		 * 
		 * <p>Note: During the handling of a click event on an input element with a type attribute that 
		 * has the value "radio" or "checkbox", some implementations may change the value of this property 
		 * before the event is being dispatched in the document. If the default action of the event is 
		 * canceled, the value of the property may be changed back to its original value. This means that 
		 * the value of this property during the handling of click events is implementation dependent.</p>
		 */
		public function get checked():Boolean { return false; };
		public function set checked(value:Boolean):void { };
		
		/**
		 * When type has the value "radio" or "checkbox", this represents the HTML checked attribute 
		 * of the element. The value of this attribute does not change if the state of the 
		 * corresponding form control, in an interactive user agent, changes.
		 */
		public function get defaultChecked():Boolean { return false; };
		public function set defaultChecked(value:Boolean):void { };
		
		/**
		 * When the type attribute of the element has the value "text", "file" or "password", this 
		 * represents the HTML value attribute of the element. The value of this attribute does not 
		 * change if the contents of the corresponding form control, in an interactive user 
		 * agent, changes.
		 */
		public function get defaultValue():DOMString { return null; };
		public function set defaultValue(value:DOMString):void { };
		
		/**
		 * The control is unavailable in this context.
		 */
		public function get disabled():Boolean { return false; };
		public function set disabled(value:Boolean):void { };
		
		/**
		 * Returns the FORM element containing this control. Returns null if this control is not 
		 * within the context of a form.
		 */
		public function get form():HTMLFormElement { return null; };
		
		/**
		 * Maximum number of characters for text fields, when type has the value "text" or "password".
		 */
		public function get maxLength():Number { return 0; };
		public function set maxLength(value:Number):void { };
		
		/**
		 * Form control or object name when submitted with a form
		 */
		public function get name():DOMString { return null; };
		public function set name(value:DOMString):void { };
		
		/**
		 * The onblur event occurs when an element loses focus either by the pointing device or by tabbing navigation.
		 */
		public function get onblur():Function { return null; };
		public function set onblur(value:Function):void { };
		
		/**
		 * The onchange event occurs when a control loses the input focus and its value has been modified since gaining focus.
		 */
		public function get onchange():Function { return null; };
		public function set onchange(value:Function):void { };
		
		/**
		 * The onfocus event occurs when an element receives focus either by the pointing device or by tabbing navigation.
		 */
		public function get onfocus():Function { return null; };
		public function set onfocus(value:Function):void { };
		
		/**
		 * The onselect event occurs when a user selects some text in a text field.
		 */
		public function get onselect():Function { return null; };
		public function set onselect(value:Function):void { };
		
		/**
		 * This control is read-only. Relevant only when type has the value "text" or "password".
		 */
		public function get readOnly():Boolean { return false; };
		public function set readOnly(value:Boolean):void { };
		
		/**
		 * Size information. The precise meaning is specific to each type of field.
		 */
		public function get size():Number { return 0; };
		public function set size(value:Number):void { };
		
		/**
		 * When the type attribute has the value "image", this attribute specifies the 
		 * location of the image to be used to decorate the graphical submit button.
		 */
		public function get src():DOMString { return null; };
		public function set src(value:DOMString):void { };
		
		/**
		 * Index that represents the element's position in the tabbing order.
		 */
		public function get tabIndex():Number { return 0; };
		public function set tabIndex(value:Number):void { };
		
		/**
		 * The type of control created (all lower case).
		 */
		public function get type():DOMString { return null; };
		public function set type(value:DOMString):void { };
		
		/**
		 * Use client-side image map.
		 */
		public function get useMap():DOMString { return null; };
		public function set useMap(value:DOMString):void { };
		
		/**
		 * When the type attribute of the element has the value "text", "file" or 
		 * "password", this represents the current contents of the corresponding form 
		 * control, in an interactive user agent. Changing this attribute changes the 
		 * contents of the form control, but does not change the value of the HTML 
		 * value attribute of the element. When the type attribute of the element has 
		 * the value "button", "hidden", "submit", "reset", "image", "checkbox" or 
		 * "radio", this represents the HTML value attribute of the element.
		 */
		public function get value():DOMString { return null; };
		public function set value(value:DOMString):void { };
		
		/**
		 * Removes keyboard focus from this element. 
		 */
		public function blur():void { };
		
		/**
		 * Simulate a mouse-click. For INPUT elements whose type attribute has one of 
		 * the following values: "button", "checkbox", "radio", "reset", or "submit". 
		 */
		public function click():void { };
		
		/**
		 * Gives keyboard focus to this element. 
		 */
		public function focus():void { };
		
		/**
		 * Select the contents of the text area. For INPUT elements whose type 
		 * attribute has one of the following values: "text", "file", or "password". 
		 */
		public function select():void { };
	}
	
}