package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Ordered list.
	 */
	public class HTMLOListElement extends HTMLElement {
		
		/**
		 * Reduce spacing between list items. This attribute is deprecated in HTML 4.01.
		 */
		public function get compact():Boolean { return false; };
		public function set compact(value:Boolean):void { };
		
		/**
		 * Starting sequence number. This attribute is deprecated in HTML 4.01.
		 */
		public function get start():Number { return 0; };
		public function set start(value:Number):void { };
		
		/**
		 * Bullet style. This attribute is deprecated in HTML 4.01.
		 */
		public function get type():DOMString { return null; };
		public function set type(value:DOMString):void { };
	}
}