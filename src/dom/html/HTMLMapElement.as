package dom.html {
	
	import dom.core.types.DOMString;
	import dom.html.objects.HTMLCollection;
	
	/**
	 * Client-side image map.
	 */
	public class HTMLMapElement extends HTMLElement {
		
		/**
		 * The list of areas defined for the image map.
		 */
		public function get areas():HTMLCollection { return null; };
		
		/**
		 * Names the map (for use with usemap).
		 */
		public function get name():DOMString { return null; };
		public function set name(value:DOMString):void { };
	}
}