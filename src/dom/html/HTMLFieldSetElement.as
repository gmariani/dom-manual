package dom.html {
	
	/**
	 * Organizes form controls into logical groups.
	 */
	public class HTMLFieldSetElement extends HTMLElement {
		
		/**
		 * Returns the FORM element containing this control. Returns null if this control is not within the context of a form.
		 */
		public function get form():HTMLFormElement { return null; };
	}
}