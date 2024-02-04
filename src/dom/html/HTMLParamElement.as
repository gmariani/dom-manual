package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Parameters fed to the OBJECT element.
	 */
	public class HTMLParamElement extends HTMLElement {
		
		/**
		 * The name of a run-time parameter.
		 */
		public function get name():DOMString { return null; };
		public function set name(value:DOMString):void { };
		
		/**
		 * Content type for the value attribute when valuetype has the value "ref".
		 */
		public function get type():DOMString { return null; };
		public function set type(value:DOMString):void { };
		
		/**
		 * The value of a run-time parameter.
		 */
		public function get value():DOMString { return null; };
		public function set value(value:DOMString):void { };
		
		/**
		 * Information about the meaning of the value attribute value.
		 */
		public function get valueType():DOMString { return null; };
		public function set valueType(value:DOMString):void { };
	}
}