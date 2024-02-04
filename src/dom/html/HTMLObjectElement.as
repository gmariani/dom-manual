package dom.html {
	
	import dom.core.Document;
	import dom.core.types.DOMString;
	
	/**
	 * Generic embedded object.
	 */
	public class HTMLObjectElement extends HTMLElement {
		
		/**
		 * Aligns this object (vertically or horizontally) with respect to its surrounding text. This attribute is deprecated in HTML 4.01.
		 * <p>Valid values are: 
		 * <ul>
		 * <li>bottom</li>
		 * <li>middle</li>
		 * <li>top</li>
		 * </ul></p>
		 */
		public function get align():DOMString { return null; };
		public function set align(value:DOMString):void { };
		
		/**
		 * Space-separated list of archives.
		 */
		public function get archive():DOMString { return null; };
		public function set archive(value:DOMString):void { };
		
		/**
		 * Width of border around the object. This attribute is deprecated in HTML 4.01.
		 */
		public function get border():DOMString { return null; };
		public function set border(value:DOMString):void { };
		
		/**
		 * Applet class file.
		 * 
		 * @see HTMLAppletElement#code
		 */
		public function get code():DOMString { return null; };
		public function set code(value:DOMString):void { };
		
		/**
		 * Base URI for classid, data, and archive attributes.
		 */
		public function get codeBase():DOMString { return null; };
		public function set codeBase(value:DOMString):void { };
		
		/**
		 * Content type for data downloaded via classid attribute.
		 */
		public function get codeType():DOMString { return null; };
		public function set codeType(value:DOMString):void { };
		
		/**
		 * DOM Level 2
		 * 
		 * The document this object contains, if there is any and it is available, or null otherwise.
		 */
		public function get contentDocument():Document { return null; };
		
		/**
		 * A URI [IETF RFC 2396] specifying the location of the object's data.
		 */
		public function get data():DOMString { return null; };
		public function set data(value:DOMString):void { };
		
		/**
		 * Declare (for future reference), but do not instantiate, this object.
		 * 
		 * <p>When present, this boolean attribute makes the current OBJECT definition 
		 * a declaration only. The object must be instantiated by a subsequent OBJECT 
		 * definition referring to this declaration.</p>
		 */
		public function get declare():Boolean { return false; };
		public function set declare(value:Boolean):void { };
		
		/**
		 * Returns the FORM element containing this control. Returns null if this control is not within the context of a form.
		 */
		public function get form():HTMLFormElement { return null; };
		
		/**
		 * Override height.
		 */
		public function get height():DOMString { return null; };
		public function set height(value:DOMString):void { };
		
		/**
		 * Horizontal space, in pixels, to the left and right of this image, applet, or object. This attribute is deprecated in HTML 4.01.
		 */
		public function get hspace():Number { return 0; };
		public function set hspace(value:Number):void { };
		
		/**
		 * Form control or object name when submitted with a form.
		 */
		public function get name():DOMString { return null; };
		public function set name(value:DOMString):void { };
		
		/**
		 * Message to render while loading the object.
		 */
		public function get standby():DOMString { return null; };
		public function set standby(value:DOMString):void { };
		
		/**
		 * Index that represents the element's position in the tabbing order.
		 */
		public function get tabIndex():Number { return 0; };
		public function set tabIndex(value:Number):void { };
		
		/**
		 * Content type for data downloaded via data attribute.
		 */
		public function get type():DOMString { return null; };
		public function set type(value:DOMString):void { };
		
		/**
		 * Use client-side image map.
		 */
		public function get useMap():DOMString { return null; };
		public function set useMap(value:DOMString):void { };
		
		/**
		 * Vertical space, in pixels, above and below this image, applet, or object. This attribute is deprecated in HTML 4.01.
		 */
		public function get vspace():Number { return 0; };
		public function set vspace(value:Number):void { };
		
		/**
		 * Override width.
		 */
		public function get width():DOMString { return null; };
		public function set width(value:DOMString):void { };
	}
}