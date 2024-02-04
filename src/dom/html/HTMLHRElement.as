package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Create a horizontal rule.
	 */
	public class HTMLHRElement extends HTMLElement {
		
		/**
		 * Align the rule on the page. This attribute is deprecated in HTML 4.01.
		 * <p>Valid values are: 
		 * <ul>
		 * <li>left</li>
		 * <li>center</li>
		 * <li>right</li>
		 * </ul></p>
		 */
		public function get align():DOMString { return null; };
		public function set align(value:DOMString):void { };
		
		/**
		 * Indicates to the user agent that there should be no shading in the rendering of this element. This attribute is deprecated in HTML 4.01.
		 */
		public function get noShade():Boolean { return false; };
		public function set noShade(value:Boolean):void { };
		
		/**
		 * The height of the rule. This attribute is deprecated in HTML 4.01.
		 */
		public function get size():DOMString { return null; };
		public function set size(value:DOMString):void { };
		
		/**
		 * The width of the rule. This attribute is deprecated in HTML 4.01.
		 */
		public function get width():DOMString { return null; };
		public function set width(value:DOMString):void { };
	}
}