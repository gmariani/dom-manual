package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Push button.
	 */
	public class HTMLButtonElement extends HTMLElement {
		
		/**
		 * A single character access key to give access to the form control.
		 */
		public function get accessKey():DOMString { return null; };
		public function set accessKey(value:DOMString):void { };
		
		/**
		 * The control is unavailable in this context.
		 */
		public function get disabled():Boolean { return false; };
		public function set disabled(value:Boolean):void { };
		
		/**
		 * Returns the FORM element containing this control. Returns null if this control is not within the context of a form.
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
		 * The onfocus event occurs when an element receives focus either by the pointing device or by tabbing navigation.
		 */
		public function get onfocus():Function { return null; };
		public function set onfocus(value:Function):void { };
		
		/**
		 * Index that represents the element's position in the tabbing order.
		 */
		public function get tabIndex():Number { return 0; };
		public function set tabIndex(value:Number):void { };
		
		/**
		 * The type of button (all lower case).
		 */
		public function get type():DOMString { return null; };
		
		/**
		 * The current form control value.
		 */
		public function get value():DOMString { return null; };
		public function set value(value:DOMString):void { };
	}
}