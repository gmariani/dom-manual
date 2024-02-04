package dom.html {
	
	/**
	 * Preformatted text.
	 */
	public class HTMLPreElement extends HTMLElement {
		
		/**
		 * Fixed width for content. This attribute is deprecated in HTML 4.01.
		 */
		public function get width():Number { return 0; };
		public function set width(value:Number):void { };
	}
}