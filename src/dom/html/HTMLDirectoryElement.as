package dom.html {
	
	/**
	 * Directory list.
	 */
	public class HTMLDirectoryElement extends HTMLElement {
		
		/**
		 * Reduce spacing between list items. This attribute is deprecated in HTML 4.01.
		 */
		public function get compact():Boolean { return false; };
		public function set compact(value:Boolean):void { };
	}
}