package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * The anchor element.
	 */
	public class HTMLAnchorElement extends HTMLElement {
		
		/**
		 * A single character access key to give access to the form control.
		 */
		public function get accessKey():DOMString { return null; };
		public function set accessKey(value:DOMString):void { };
		
		/**
		 * The character encoding of the linked resource.
		 */
		public function get charset():DOMString { return null; };
		public function set charset(value:DOMString):void { };
		
		/**
		 * Comma-separated list of lengths, defining an active region geometry.
		 * 
		 * <p>This attribute specifies the position and shape on the screen. The 
		 * number and order of values depends on the shape being defined. Possible combinations:
		 * 
		 * <table class="innertable">
		 * <tbody>
		 * 	<tr>
		 * 		<th><p>Shape</p></th>
		 * 		<th><p>Values</p></th>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>rect</code></td>
		 * 		<td>left-x, top-y, right-x, bottom-y.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>circle</code></td>
		 * 		<td>center-x, center-y, radius. <strong>Note:</strong> When the radius value is a percentage value, 
		 * user agents should calculate the final radius value based on the associated object's width 
		 * and height. The radius should be the smaller value of the two.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td><code>poly</code></td>
		 * 		<td>x1, y1, x2, y2, ..., xN, yN. The first x and y coordinate pair and the last should 
		 * be the same to close the polygon. When these coordinate values are not the same, user agents 
		 * should infer an additional coordinate pair to close the polygon.</td>
		 * 	</tr>
		 * </tbody>
		 * </table>
		 * </p>
		 * 
		 * <p>Coordinates are relative to the top, left corner of the object. All values are lengths. 
		 * All values are separated by commas.</p>
		 */
		public function get coords():DOMString { return null; };
		public function set coords(value:DOMString):void { };
		
		/**
		 * The absolute URI of the linked resource.
		 */
		public function get href():DOMString { return null; };
		public function set href(value:DOMString):void { };
		
		/**
		 * Language code of the linked resource.
		 */
		public function get hreflang():DOMString { return null; };
		public function set hreflang(value:DOMString):void { };
		
		/**
		 * Anchor name.
		 */
		public function get name():DOMString { return null; };
		public function set name(value:DOMString):void { };
		
		/**
		 * The onblur event occurs when an element loses focus either by the pointing device or by tabbing navigation.
		 */
		public function get onblur():Function { return null; };
		public function set onblur(value:Function):void { };
		
		/**
		 * The onfocus event occurs when an element receives focus either by the pointing device or by tabbing navigation.
		 */
		public function get onfocus():Function { return null; };
		public function set onfocus(value:Function):void { };
		
		/**
		 * Forward link type.
		 */
		public function get rel():DOMString { return null; };
		public function set rel(value:DOMString):void { };
		
		/**
		 * Reverse link type.
		 */
		public function get rev():DOMString { return null; };
		public function set rev(value:DOMString):void { };
		
		/**
		 * The shape of the active area. The coordinates are given by coords. 
		 * 
		 * <p>Possible values can be:
		 * <ul>
		 * <li>default: Specifies the entire region</li>
		 * <li>rect: Define a rectangular region</li>
		 * <li>circle: Define a circular region</li>
		 * <li>poly: Define a polygonal region</li>
		 * </ul></p>
		 */
		public function get shape():DOMString { return null; };
		public function set shape(value:DOMString):void { };
		
		/**
		 * Index that represents the element's position in the tabbing order.
		 */
		public function get tabIndex():DOMString { return null; };
		public function set tabIndex(value:DOMString):void { };
		
		/**
		 * Frame to render the resource in.
		 */
		public function get target():DOMString { return null; };
		public function set target(value:DOMString):void { };
		
		/**
		 * Advisory content type.
		 * 
		 * <p>This attribute gives an advisory hint as to the content type of 
		 * the content available at the link target address. It allows user agents 
		 * to opt to use a fallback mechanism rather than fetch the content if 
		 * they are advised that they will get content in a content type they do 
		 * not support.</p>
		 * 
		 * <p>Authors who use this attribute take responsibility to manage the risk 
		 * that it may become inconsistent with the content available at the link 
		 * target address.</p>
		 */
		public function get type():DOMString { return null; };
		public function set type(value:DOMString):void { };
		
		/**
		 * Removes keyboard focus from this element. 
		 */
		public function blur():void { };
		
		/**
		 * Gives keyboard focus to this element. 
		 */
		public function focus():void { };
	}
}