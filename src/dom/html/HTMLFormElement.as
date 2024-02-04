package dom.html {
	
	import dom.core.types.DOMString;
	import dom.html.objects.HTMLCollection;
	
	/**
	 * The FORM element encompasses behavior similar to a collection and an 
	 * element. It provides direct access to the contained form controls as well 
	 * as the attributes of the form element.
	 */
	public class HTMLFormElement extends HTMLElement {
		
		/**
		 * List of character sets supported by the server. See the accept-charset 
		 * attribute definition in HTML 4.01.
		 */
		public function get acceptCharset():DOMString { return null; };
		public function set acceptCharset(value:DOMString):void { };
		
		/**
		 * Server-side form handler. See the action attribute definition in 
		 * HTML 4.01.
		 */
		public function get action():DOMString { return null; };
		public function set action(value:DOMString):void { };
		
		/**
		 * Returns a collection of all form control elements in the form.
		 */
		public function get elements():HTMLCollection { return null; };
		
		/**
		 * The content type of the submitted form, generally 
		 * "application/x-www-form-urlencoded". See the enctype attribute 
		 * definition in HTML 4.01.
		 * 
		 * Note: The onsubmit even handler is not guaranteed to be triggered when 
		 * invoking this method. The behavior is inconsistent for historical 
		 * reasons and authors should not rely on a particular one.
		 */
		public function get enctype():DOMString { return null; };
		public function set enctype(value:DOMString):void { };
		
		/**
		 * The number of form controls in the form.
		 */
		public function get length():Number { return 0; };
		
		/**
		 * HTTP method [IETF RFC 2616] used to submit form. See the method attribute 
		 * definition in HTML 4.01.
		 */
		public function get method():DOMString { return null; };
		public function set method(value:DOMString):void { };
		
		/**
		 * Names the form.
		 */
		public function get name():DOMString { return null; };
		public function set name(value:DOMString):void { };
		
		/**
		 * The onreset event occurs when a form is reset.
		 */
		public function get onreset():Function { return null; };
		public function set onreset(value:Function):void { };
		
		/**
		 * The onsubmit event occurs when a form is submitted.
		 */
		public function get onsubmit():Function { return null; };
		public function set onsubmit(value:Function):void { };
		
		/**
		 * Frame to render the resource in. See the target attribute definition 
		 * in HTML 4.01.
		 */
		public function get target():DOMString { return null; };
		public function set target(value:DOMString):void { };
		
		/**
		 * Restores a form element's default values. It performs the same action 
		 * as a reset button. 
		 */
		public function reset():void { };
		
		/**
		 * Submits the form. It performs the same action as a submit button. 
		 */
		public function submit():void { };
	}
}