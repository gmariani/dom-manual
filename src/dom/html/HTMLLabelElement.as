package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Form field label text.
	 */
	public class HTMLLabelElement extends HTMLElement {
		
		/**
		 * A single character access key to give access to the form control.
		 */
		public function get accessKey():DOMString { return null; };
		public function set accessKey(value:DOMString):void { };
		
		/**
		 * Returns the FORM element containing this control. Returns null if this control is not within the context of a form.
		 */
		public function get form():HTMLFormElement { return null; };
		
		/**
		 * This attribute links this label with another form control by id attribute. 
		 */
		public function get htmlFor():DOMString { return null; };
		public function set htmlFor(value:DOMString):void { };
		
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
	}
}