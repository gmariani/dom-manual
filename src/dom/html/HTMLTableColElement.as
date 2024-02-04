package dom.html {
	
	import dom.core.types.DOMString;
	
	/**
	 * Regroups the COL and COLGROUP elements.
	 */
	public class HTMLTableColElement extends HTMLElement {
		
		/**
		 * Horizontal alignment of cell data in column.
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
		 * Indicates the number of columns in a group or affected by a grouping.
		 */
		public function get span():Number { return 0; };
		public function set span(value:Number):void { };
		
		/**
		 * Vertical alignment of cell data in column.
		 * <p>Valid values are: 
		 * <ul>
		 * <li>top: Cell data is flush with the top of the cell.</li>
		 * <li>middle: Cell data is centered vertically within the cell. This is the default value.</li>
		 * <li>bottom: Cell data is flush with the bottom of the cell.</li>
		 * <li>baseline: All cells in the same row as a cell whose valign attribute has this value should have their textual data positioned so that the first text line occurs on a baseline common to all cells in the row. This constraint does not apply to subsequent text lines in these cells.</li>
		 * </ul></p>
		 */
		public function get vAlign():DOMString { return null; };
		public function set vAlign(value:DOMString):void { };
		
		/**
		 * Default column width.
		 */
		public function get width():DOMString { return null; };
		public function set width(value:DOMString):void { };
	}
}