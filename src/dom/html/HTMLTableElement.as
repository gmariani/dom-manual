package dom.html {
	
	import dom.core.types.DOMString;
	import dom.html.objects.HTMLCollection;
	
	/**
	 * The create* and delete* methods on the table allow authors to construct 
	 * and modify tables. [HTML 4.01] specifies that only one of each of the 
	 * CAPTION, THEAD, and TFOOT elements may exist in a table. Therefore, if 
	 * one exists, and the createTHead() or createTFoot() method is called, 
	 * the method returns the existing THead or TFoot element.
	 */
	public class HTMLTableElement extends HTMLElement {
		
		/**
		 * Specifies the table's position with respect to the rest of the document. 
		 * This attribute is deprecated in HTML 4.01.
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
		 * Cell background color. This attribute is deprecated in HTML 4.01.
		 */
		public function get bgColor():DOMString { return null; };
		public function set bgColor(value:DOMString):void { };
		
		/**
		 * The width of the border around the table.
		 */
		public function get border():DOMString { return null; };
		public function set border(value:DOMString):void { };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * Returns the table's CAPTION, or void if none exists.
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: if the element is not a CAPTION. 
		 */
		public function get caption():HTMLTableCaptionElement { return null; };
		public function set caption(value:HTMLTableCaptionElement):void { };
		
		/**
		 * Specifies the horizontal and vertical space between cell content and cell borders.
		 */
		public function get cellPadding():DOMString { return null; };
		public function set cellPadding(value:DOMString):void { };
		
		/**
		 * Specifies the horizontal and vertical separation between cells.
		 */
		public function get cellSpacing():DOMString { return null; };
		public function set cellSpacing(value:DOMString):void { };
		
		/**
		 * Specifies which external table borders to render.
		 */
		public function get frame():DOMString { return null; };
		public function set frame(value:DOMString):void { };
		
		/**
		 * Returns a collection of all the rows in the table, including all in THEAD, TFOOT, all TBODY elements.
		 */
		public function get rows():HTMLCollection { return null; };
		
		/**
		 * Specifies which internal table borders to render.
		 * <p>Valid values are: 
		 * <ul>
		 * <li>none: No rules. This is the default value.</li>
		 * <li>groups: Rules will appear between row groups (see THEAD, TFOOT, and TBODY) and column groups (see COLGROUP and COL) only.</li>
		 * <li>rows: Rules will appear between rows only.</li>
		 * <li>cols: Rules will appear between columns only.</li>
		 * <li>all: Rules will appear between all rows and columns.</li>
		 * </ul></p>
		 */
		public function get rules():DOMString { return null; };
		public function set rules(value:DOMString):void { };
		
		/**
		 * Description about the purpose or structure of a table.
		 */
		public function get summary():DOMString { return null; };
		public function set summary(value:DOMString):void { };
		
		/**
		 * Returns a collection of the table bodies (including implicit ones).
		 */
		public function get tBodies():HTMLCollection { return null; };
		public function set tBodies(value:HTMLCollection):void { };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * Returns the table's TFOOT, or null if none exists.
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: if the element is not a TFOOT. 
		 */
		public function get tFoot():HTMLTableSectionElement { return null; };
		public function set tFoot(value:HTMLTableSectionElement):void { };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * Returns the table's THEAD, or null if none exists.
		 * 
		 * @throws dom.core.DOMException HIERARCHY_REQUEST_ERR: if the element is not a THEAD. 
		 */
		public function get tHead():HTMLTableSectionElement { return null; };
		public function set tHead(value:HTMLTableSectionElement):void { };
		
		/**
		 * Specifies the desired table width.
		 */
		public function get width():DOMString { return null; };
		public function set width(value:DOMString):void { };
		
		/**
		 * Create a new table caption object or return an existing one.
		 * 
		 * @return A CAPTION element.
		 */
		public function createCaption():HTMLElement { return null; };
		
		/**
		 * Create a table footer row or return an existing one. 
		 * 
		 * @return A footer element (TFOOT).
		 */
		public function createTFoot():HTMLElement { return null; };
		
		/**
		 * Create a table header row or return an existing one. 
		 * 
		 * @return A new table header element (THEAD).
		 */
		public function createTHead():HTMLElement { return null; };
		
		/**
		 * Delete the table caption, if one exists. 
		 */
		public function deleteCaption():void { };
		
		/**
		 * Delete a table row. 
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified index is greater 
		 * than or equal to the number of rows or if the index is a negative number other than -1.
		 * 
		 * @param	index The index of the row to be deleted. This index starts from 
		 * 0 and is relative to the logical order (not document order) of all the 
		 * rows contained inside the table. If the index is -1 the last row in the 
		 * table is deleted.
		 */
		public function deleteRow(index:Number):void { };
		
		/**
		 * Delete the footer from the table, if one exists. 
		 */
		public function deleteTFoot():void { };
		
		/**
		 * Delete the header from the table, if one exists. 
		 */
		public function deleteTHead():void { };
		
		/**
		 * Insert a new empty row in the table. The new row is inserted immediately before 
		 * and in the same section as the current indexth row in the table. If index is -1 
		 * or equal to the number of rows, the new row is appended. In addition, when the 
		 * table is empty the row is inserted into a TBODY which is created and inserted 
		 * into the table. 
		 * 
		 * <p><strong>Note:</strong> A table row cannot be empty according to [HTML 4.01].</p>
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified index is 
		 * greater than the number of rows or if the index is a negative number other than -1.
		 * 
		 * @param	index The row number where to insert a new row. This index starts from 0 and 
		 * is relative to the logical order (not document order) of all the rows contained inside the table.
		 * @return The newly created row.
		 */
		public function insertRow(index:Number):HTMLElement { return null; };
	}
}