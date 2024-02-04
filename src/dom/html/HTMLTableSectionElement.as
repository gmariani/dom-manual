package dom.html {
	
	import dom.core.types.DOMString;
	import dom.html.objects.HTMLCollection;
	
	/**
	 * The THEAD, TFOOT, and TBODY elements.
	 */
	public class HTMLTableSectionElement extends HTMLElement {
		/**
		 * Horizontal alignment of data in cells. See the align attribute for HTMLTheadElement for details.
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
		 * The collection of rows in this table section.
		 */
		public function get rows():HTMLCollection { return null; };
		
		/**
		 * Vertical alignment of data in cells. See the valign attribute for HTMLTheadElement for details.
		 */
		public function get vAlign():DOMString { return null; };
		public function set vAlign(value:DOMString):void { };
		
		/**
		 * Delete a row from this section. 
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified index is 
		 * greater than the number of rows or if the index is a negative number other than -1.
		 * 
		 * @param	index The index of the row to be deleted, or -1 to delete the last row. This index starts from 0 
		 * and is relative only to the rows contained inside this section, not all the rows in the table.
		 */
		public function deleteRow(index:Number):void { };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * Insert a row into this section. The new row is inserted immediately before the current indexth row in 
		 * this section. If index is -1 or equal to the number of rows in this section, the new row is appended.  
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified index is 
		 * greater than the number of rows or if the index is a negative number other than -1.
		 * 
		 * @param	index The row number where to insert a new row. This index starts from 0 and is relative only 
		 * to the rows contained inside this section, not all the rows in the table.
		 * @return The newly created row.
		 */
		public function insertRow(index:Number):HTMLElement { return null; };
	}
}