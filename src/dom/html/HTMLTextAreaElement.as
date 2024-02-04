package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Multi-line text field.
	 */
	public class HTMLTextAreaElement extends HTMLElement {
		
		/**
		 * A single character access key to give access to the form control.
		 */
		public function get accessKey():DOMString { return null; };
		public function set accessKey(value:DOMString):void { };
		
		/**
		 * Width of control (in characters).
		 */
		public function get cols():Number { return 0; };
		public function set cols(value:Number):void { };
		
		/**
		 * Represents the contents of the element. The value of this attribute does 
		 * not change if the contents of the corresponding form control, in an 
		 * interactive user agent, changes.
		 */
		public function get defaultValue():DOMString { return null; };
		public function set defaultValue(value:DOMString):void { };
		
		/**
		 * The control is unavailable in this context.
		 */
		public function get disabled():Boolean { return false; };
		public function set disabled(value:Boolean):void { };
		
		/**
		 * Returns the FORM element containing this control. Returns null if this 
		 * control is not within the context of a form.
		 */
		public function get form():HTMLFormElement { return null; };
		
		/**
		 * Form control or object name when submitted with a form.
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
		 * This control is read-only.
		 */
		public function get readOnly():Boolean { return false; };
		public function set readOnly(value:Boolean):void { };
		
		/**
		 * Number of text rows.
		 */
		public function get rows():Number { return 0; };
		public function set rows(value:Number):void { };
		
		/**
		 * Index that represents the element's position in the tabbing order.
		 */
		public function get tabIndex():Number { return 0; };
		public function set tabIndex(value:Number):void { };
		
		/**
		 * The type of this form control. This the string "textarea".
		 */
		public function get type():DOMString { return null; };
		
		/**
		 * Represents the current contents of the corresponding form control, in an 
		 * interactive user agent. Changing this attribute changes the contents of the 
		 * form control, but does not change the contents of the element. If the entirety 
		 * of the data can not fit into a single DOMString, the implementation may 
		 * truncate the data.
		 */
		public function get value():DOMString { return null; };
		public function set value(value:DOMString):void { };
		
		/**
		 * Removes keyboard focus from this element. 
		 */
		public function blur():void { };
		
		/**
		 * Gives keyboard focus to this element. 
		 */
		public function focus():void { };
		
		/**
		 * Select the contents of the TEXTAREA. 
		 */
		public function select():void { };
	}
}