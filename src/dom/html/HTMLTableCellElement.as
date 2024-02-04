package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * The object used to represent the TH and TD elements.
	 */
	public class HTMLTableCellElement extends HTMLElement {
		
		/**
		 * Abbreviation for header cells.
		 */
		public function get abbr():DOMString { return null; };
		public function set abbr(value:DOMString):void { };
		
		/**
		 * Horizontal alignment of data in cell.
		 * <p>Valid values are: 
		 * <ul>
		 * <li>left: Left-flush data/Left-justify text. This is the default value for table data.</li>
		 * <li>center: Center data/Center-justify text. This is the default value for table headers.</li>
		 * <li>right: Right-flush data/Right-justify text.</li>
		 * <li>justify: Double-justify text.</li>
		 * <li>char: Align text around a specific character. If a user agent doesn't support character alignment, behavior in the presence of this value is unspecified.</li>
		 * </ul></p>
		 */
		public function get align():DOMString { return null; };
		public function set align(value:DOMString):void { };
		
		/**
		 * Names group of related headers.
		 */
		public function get axis():DOMString { return null; };
		public function set axis(value:DOMString):void { };
		
		/**
		 * Cell background color. This attribute is deprecated in HTML 4.01.
		 */
		public function get bgColor():DOMString { return null; };
		public function set bgColor(value:DOMString):void { };
		
		/**
		 * The index of this cell in the row, starting from 0. This index is in document tree order and not display order.
		 */
		public function get cellIndex():DOMString { return null; };
		
		/**
		 * Alignment character for cells in a column.
		 */
		public function get ch():DOMString { return null; };
		public function set ch(value:DOMString):void { };
		
		/**
		 * Offset of alignment character.
		 */
		public function get chOff():DOMString { return null; };
		public function set chOff(value:DOMString):void { };
		
		/**
		 * Number of columns spanned by cell.
		 */
		public function get colSpan():DOMString { return null; };
		public function set colSpan(value:DOMString):void { };
		
		/**
		 * List of id attribute values for header cells.
		 */
		public function get headers():DOMString { return null; };
		public function set headers(value:DOMString):void { };
		
		/**
		 * Cell height. This attribute is deprecated in HTML 4.01.
		 */
		public function get height():DOMString { return null; };
		public function set height(value:DOMString):void { };
		
		/**
		 * Suppress word wrapping. This attribute is deprecated in HTML 4.01.
		 */
		public function get noWrap():Boolean { return false; };
		public function set noWrap(value:Boolean):void { };
		
		/**
		 * Number of rows spanned by cell.
		 */
		public function get rowSpan():Number { return 0; };
		public function set rowSpan(value:Number):void { };
		
		/**
		 * Scope covered by header cells.
		 */
		public function get scope():DOMString { return null; };
		public function set scope(value:DOMString):void { };
		
		public function get vAlign():DOMString { return null; };
		public function set vAlign(value:DOMString):void { };
		
		/**
		 * Cell width. This attribute is deprecated in HTML 4.01.
		 */
		public function get width():DOMString { return null; };
		public function set width(value:DOMString):void { };
	}
}