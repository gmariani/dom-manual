package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Force a line break.
	 */
	public class HTMLBRElement extends HTMLElement {
		/**
		 * Control flow of text around floats. This attribute is deprecated in HTML 4.01.
		 * <p>Valid values are: 
		 * <ul>
		 * <li>none</li>
		 * <li>left</li>
		 * <li>right</li>
		 * <li>all</li>
		 * </ul></p>
		 */
		public function get clear():DOMString { return null; };
		public function set clear(value:DOMString):void { };
	}
}