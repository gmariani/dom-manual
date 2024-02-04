package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * For the Q and BLOCKQUOTE elements.
	 */
	public class HTMLQuoteElement extends HTMLElement {
		
		/**
		 * A URI designating a source document or message.
		 */
		public function get cite():DOMString { return null; };
		public function set cite(value:DOMString):void { };
	}
}