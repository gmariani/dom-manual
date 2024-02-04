package dom.html {
	
	import dom.core.types.DOMString;
	import dom.html.objects.HTMLCollection;
	
	/**
	 * A row in a table.
	 */
	public class HTMLTableRowElement extends HTMLElement {
		/**
		 * Horizontal alignment of data within cells of this row.
		 * <p>Valid values are: 
		 * <ul>
		 * <li>left: The table is to the left of the document.</li>
		 * <li>center: The table is to the center of the document.</li>
		 * <li>right: The table is to the right of the document.</li>
		 * </ul></p>
		 */
		public function get align():DOMString { return null; };
		public function set align(value:DOMString):void { };
		
		/**
		 * Background color for rows. This attribute is deprecated in HTML 4.01.
		 */
		public function get bgColor():DOMString { return null; };
		public function set bgColor(value:DOMString):void { };
		
		/**
		 *  Modified in DOM Level 2
		 * 
		 * The collection of cells in this row.
		 */
		public function get cells():HTMLCollection { return null; };
		
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
		 * Modified in DOM Level 2
		 * 
		 * This is in logical order and not in document order. The rowIndex does take into 
		 * account sections (THEAD, TFOOT, or TBODY) within the table, placing THEAD rows 
		 * first in the index, followed by TBODY rows, followed by TFOOT rows.
		 */
		public function get rowIndex():Number { return 0; };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * The index of this row, relative to the current section (THEAD, TFOOT, or TBODY), starting from 0.
		 */
		public function get sectionRowIndex():Number { return 0; };
		
		/**
		 * Vertical alignment of data within cells of this row.
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
		 * Modified in DOM Level 2
		 * 
		 * Delete a cell from the current row. 
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified index is 
		 * greater than the number of rows or if the index is a negative number other than -1.
		 * 
		 * @param	index The index of the cell to delete, starting from 0. If the index is -1 the last cell in the row is deleted.
		 */
		public function deleteCell(index:Number):void { };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * Insert an empty TD cell into this row. If index is -1 or equal to the number of cells, 
		 * the new cell is appended. 
		 * 
		 *  @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified index is 
		 * greater than the number of rows or if the index is a negative number other than -1.
		 * 
		 * @param	index The place to insert the cell, starting from 0.
		 * @return The newly created cell.
		 */
		public function insertCell(index:Number):HTMLElement { return null; };
	}
}