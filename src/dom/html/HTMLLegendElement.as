package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Provides a caption for a FIELDSET grouping.
	 */
	public class HTMLLegendElement extends HTMLElement {
		
		/**
		 * A single character access key to give access to the form control.
		 */
		public function get accessKey():DOMString { return null; };
		public function set accessKey(value:DOMString):void { };
		
		/**
		 * Text alignment relative to FIELDSET. This attribute is deprecated in HTML 4.01.
		 */
		public function get align():DOMString { return null; };
		public function set align(value:DOMString):void { };
		
		/**
		 * Returns the FORM element containing this control. Returns null if this control is not within the context of a form.
		 */
		public function get form():HTMLFormElement { return null; };
	}
}