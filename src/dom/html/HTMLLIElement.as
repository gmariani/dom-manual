package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * List item.
	 */
	public class HTMLLIElement extends HTMLElement {
		
		/**
		 * List item bullet style. This attribute is deprecated in HTML 4.01.
		 */
		public function get type():DOMString { return null; };
		public function set type(value:DOMString):void { };
		
		/**
		 * Reset sequence number when used in OL. This attribute is deprecated in HTML 4.01.
		 */
		public function get value():Number { return 0; };
		public function set value(value:Number):void { };
	}
}