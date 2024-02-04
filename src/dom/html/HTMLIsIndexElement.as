package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * This element is used for single-line text input. See the ISINDEX element 
	 * definition in HTML 4.01. This element is deprecated in HTML 4.01.
	 */
	public class HTMLIsIndexElement extends HTMLElement {
		
		/**
		 * Returns the FORM element containing this control. Returns null if this 
		 * control is not within the context of a form.
		 */
		public function get form():HTMLFormElement { return null; };
		
		/**
		 * The prompt message. See the prompt attribute definition in HTML 4.01. 
		 * This attribute is deprecated in HTML 4.01.
		 */
		public function get prompt():DOMString { return null; };
		public function set prompt(value:DOMString):void { };
	}
}