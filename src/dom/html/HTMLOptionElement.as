package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * A selectable choice. See the OPTION element definition in HTML 4.01.
	 */
	public class HTMLOptionElement extends HTMLElement {
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * Represents the value of the HTML selected attribute. The value of this attribute 
		 * does not change if the state of the corresponding form control, in an interactive 
		 * user agent, changes. See the selected attribute definition in HTML 4.01.
		 */
		public function get defaultSelected():Boolean { return false; };
		public function set defaultSelected(value:Boolean):void { };
		
		/**
		 * The control is unavailable in this context. See the disabled attribute definition in HTML 4.01.
		 */
		public function get disabled():Boolean { return false; };
		public function set disabled(value:Boolean):void { };
		
		/**
		 * Returns the FORM element containing this control. Returns null if this control is not within the context of a form.
		 */
		public function get form():HTMLFormElement { return null; };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * The index of this OPTION in its parent SELECT, starting from 0.
		 */
		public function get index():Number { return 0; };
		
		/**
		 * Option label for use in hierarchical menus. See the label attribute definition in HTML 4.01.
		 */
		public function get label():DOMString { return null; };
		public function set label(value:DOMString):void { };
		
		/**
		 * Represents the current state of the corresponding form control, in an interactive user agent. 
		 * Changing this attribute changes the state of the form control, but does not change the value 
		 * of the HTML selected attribute of the element.
		 */
		public function get selected():Boolean { return false; };
		public function set selected(value:Boolean):void { };
		
		/**
		 * The text contained within the option element.
		 */
		override public function get text():DOMString { return null; };
		
		/**
		 * The current form control value. See the value attribute definition in HTML 4.01.
		 */
		public function get value():DOMString { return null; };
		public function set value(value:DOMString):void { };
	}
}