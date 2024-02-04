package dom.html {
	
	import dom.core.types.DOMString;
	import dom.html.HTMLElement;
	
	/**
	 * Document head information. See the HEAD element definition in HTML 4.01.
	 */
	public class HTMLHeadElement extends HTMLElement {
		
		/**
		 * URI designating a metadata profile. See the profile 
		 * attribute definition in HTML 4.01.
		 */
		public function get profile():DOMString { return null; };
		public function set profile(value:DOMString):void { };
	}
}