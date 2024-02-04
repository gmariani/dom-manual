package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Table caption.
	 */
	public class HTMLTableCaptionElement extends HTMLElement {
		
		/**
		 * Caption alignment with respect to the table.
		 * 
		 * <p>Valid values are: 
		 * <ul>
		 * <li>top: The caption is at the top of the table. This is the default value.</li>
		 * <li>bottom: The caption is at the bottom of the table.</li>
		 * <li>left: The caption is at the left of the table.</li>
		 * <li>right: The caption is at the right of the table.</li>
		 * </ul></p>
		 */
		public function get align():DOMString { return null; };
		public function set align(value:DOMString):void { };
	}
}