package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Notice of modification to part of a document.
	 */
	public class HTMLModElement extends HTMLElement {
		
		/**
		 * A URI designating a document that describes the reason for the change.
		 */
		public function get cite():DOMString { return null; };
		public function set cite(value:DOMString):void { };
		
		/**
		 * The date and time of the change.
		 */
		public function get dateTime():DOMString { return null; };
		public function set dateTime(value:DOMString):void { };
	}
}