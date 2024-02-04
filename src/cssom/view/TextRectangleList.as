package cssom.view {
	
	import cssom.view.TextRectangle;
	import dom.core.types.DOMString;
	
	/**
	 * A collection of TextRectangle objects returned by the getClientRects method.
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms537494(VS.85).aspx  MSDN: TextRectangle Collection
	 * @see http://www.w3.org/TR/cssom-view/#textrectanglelist W3C CSSOM Views Specification: TextRectangleList
	 * 
	 * @example
	 * This example shows how to use the getClientRects method and the TextRectangle collection to iterate through the lines of text in an object.
	 * 
	 * <listing>
	 * &lt;script&gt;
	 * function newHighlite(obj) {            
	 * 	oRcts = obj.getClientRects();
	 * 	iLength = oRcts.length;
	 * 	for (i = 0;i &lt; iLength; i++) {	
	 * 		alert("Line number " + (i + 1) + " is " + (oRcts(i).right - oRcts(i).left) + " pixels wide.");
	 * 	}
	 * }
	 * &lt;/script&gt;</listing>
	 * 
	 * @playerversion CSSOMView 0
	 * @since DOMCore 0
	 */
	public interface TextRectangleList {
		
		/**
		 * Returns the total number of TextRectangle objects associated with the object.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534101(VS.85).aspx MSDN: length Property
		 * @see http://www.w3.org/TR/cssom-view/#textrectanglelist W3C - CSSOM View: length Property
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0a_no
		 */
		function get length():Number;
		
		/**
		 * Retrieves an object from a TextRectangle collection.
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: May be raised if the index 
		 * is negative or greater than the number of TextRectangle objects 
		 * associated with the object.
		 * 
		 * @param	index
		 * @return The TextRectangle object at that index
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/dd347037(VS.85).aspx  MSDN: item Method
		 * @see http://www.w3.org/TR/cssom-view/#textrectanglelist W3C - CSSOM View: item Method
		 * 
		 * @playerversion CSSOMView 0
		 * @since DOMCore 0
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0
		 * @productversion Firefox 3.0
		 * @productversion Firefox 3.1b
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0a_no
		 */
		function item(index:Number):TextRectangle;
		
		/**
		 * Retrieves an object or a collection from a specified collection.
		 * 
		 * <p><strong>Note (IE8):</strong> In IE8 mode, the namedItem method does not return collections if more than one named item is found; instead, it returns the first case-insensitive matched element.</p>
		 * 
		 * @param	name The name or id property of the object to retrieve. A collection is returned if more than one match is made.
		 * @return Returns an object or a collection of objects if successful, or null otherwise.
		 * 
		 * @example
		 * <listing>
		 * &lt;div id="oDIV1"&gt;This text will not change.&lt;/div&gt;
		 * &lt;div id="oDIV2"&gt;This text will change.&lt;/div&gt;
		 * &lt;button onclick="document.all.namedItem('oDIV2').innerHTML='Changed!';"&gt;
		 * Change Option
		 * &lt;/button&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536634(VS.85).aspx  MSDN: namedItem Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.1b_no
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0b_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0a_no
		 */
		function namedItem(name:DOMString):TextRectangle;
	}
}