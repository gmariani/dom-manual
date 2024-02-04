package dom.html.objects {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * An HTMLCollection is a list of nodes. 
	 * 
	 * <p>An individual node may be accessed by either ordinal index or the node's name or id attributes.</p>
	 * 
	 * <p><strong>Note:</strong> Collections in the HTML DOM are assumed to be live meaning that they 
	 * are automatically updated when the underlying document is changed.</p>
	 * 
	 * @see http://developer.mozilla.org/en/DOM/HTMLCollection MDC: HTMLCollection
	 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-75708506 W3C DOM HTML Specification
	 * @see http://msdn.microsoft.com/en-us/library/dd347073%28VS.85%29.aspx MSDN: HTMLCollection
	 * 
	 * @playerversion DOMHTML 1
	 * @since DOMHTML 1
	 */
	public class HTMLCollection {
		
		/**
		 * This attribute specifies the length or size of the list.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/HTMLCollection MDC: HTMLCollection
		 * @see http://msdn.microsoft.com/en-us/library/ms534101%28VS.85%29.aspx MSDN: length Property
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-40057551 W3C - DOM HTML: HTMLCollection.length
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function get length():Number { return 0; };
		
		/**
		 * This method retrieves a node specified by ordinal index. Nodes are
		 * numbered in tree order (depth-first traversal order). 
		 * 
		 * <p><strong>Note (IE):</strong> IE7 and earlier. item() has a second and optional param called 'iSubindex'. This param specifies the
		 * zero-based index of the object to retrieve when a collection is returned.</p>
		 * 
		 * <p><strong>Note (IE):</strong>  Internet Explorer 8 and later. In IE8 mode, the iSubindex parameter is not used.</p>
		 * 
		 * @param	index The index of the node to be fetched. The index 
		 * origin is 0
		 * @return The Node at the corresponding position upon success. A value 
		 * of null is returned if the index is out of range.
		 * 
		 * @see http://developer.mozilla.org/en/DOM/HTMLCollection MDC: HTMLCollection
		 * @see http://msdn.microsoft.com/en-us/library/ms536460%28VS.85%29.aspx MSDN: item Method
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-33262535 W3C - DOM HTML: HTMLCollection.item()
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function item(index:Number):Node { return null; };
		
		/**
		 * This method retrieves a Node using a name. With [HTML 4.01] documents, 
		 * it first searches for a Node with a matching id attribute. If it 
		 * doesn't find one, it then searches for a Node with a matching name 
		 * attribute, but only on those elements that are allowed a name attribute. 
		 * With [XHTML 1.0] documents, this method only searches for Nodes with a 
		 * matching id attribute. This method is case insensitive in HTML documents 
		 * and case sensitive in XHTML documents. 
		 * 
		 * <p><strong>Note (IE):</strong> Internet Explorer 8 and later. In IE8 mode, the namedItem method does not return collections if more than one named item is found; instead, it returns the first case-insensitive matched element.</p>
		 * 
		 * <p><strong>Note (IE):</strong> The namedItem method was introduced in Microsoft Internet Explorer 6.</p>
		 * 
		 * @param	name The name of the Node to be fetched.
		 * @return The Node with a name or id attribute whose value corresponds 
		 * to the specified string. Upon failure (e.g., no node with this name 
		 * exists), returns null.
		 * 
		 * @example
		 * The following example shows how to use the namedItem method to retrieve a div and change its innerText property.
		 * <listing>
		 * &lt;div id="oDIV1"&gt;This text will not change.&lt;/div&gt;
		 * &lt;div id="oDIV2"&gt;This text will change.&lt;/div&gt;
		 * &lt;button onclick="document.all.namedItem('oDIV2').innerHTML='Changed!';"&gt;
		 * Change Option
		 * &lt;/button&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/HTMLCollection MDC: HTMLCollection
		 * @see http://msdn.microsoft.com/en-us/library/ms536634%28VS.85%29.aspx MSDN: namedItem Method
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-21069976 W3C - DOM HTML: HTMLCollection.namedItem()
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function namedItem(name:DOMString):Node { return null; };
		
		/**
		 * Retrieves a collection of objects that have the specified HTML tag name. 
		 * 
		 * <p><strong>Note:</strong> Successful execution includes the case where no elements having the given name are found. In this case, a collection containing zero elements is returned.</p>
		 * 
		 * <p><strong>Note:</strong> NULL may be returned in cases where the collection cannot be constructed, such as inability to allocate memory for even a zero-length collection.</p>
		 * 
		 * @param	tag Specifies an HTML tag. It can be any one of the objects exposed by the DHTML Object Model.
		 * @return Returns a collection of element objects if successful, or null otherwise. 
		 * 
		 * @example
		 * This example uses the tags method to retrieve a collection of all p elements in the document, and all body 
		 * elements in the document. It displays some of the properties of the collections that are returned. It then 
		 * displays selected elements of the collection.
		 * 
		 * <p>There are no p elements in the document, and there is one body element in the document. So, this example 
		 * illustrates both the cases where the collection is empty and where the collection is populated.</p>
		 * <listing>
		 * &lt;html&gt;
&lt;head&gt;
&lt;title&gt;document.all.tags example &lt;/title&gt;
&lt;/head&gt;

&lt;body&gt;
&lt;script type="text/jscript" language="jscript"&gt;

document.write("Here is how document.all.tags behaves when no tags are found.&lt;br&gt;");
var coll = document.all.tags("p");
document.write("list 'p' tags" + "&lt;br&gt;");
document.write("coll= " + coll + "&lt;br&gt;");
document.write("coll.length= " + coll.length + "&lt;br&gt;");
if (coll==null){
    document.write( "coll= is null &lt;br&gt;" );
} else {
    document.write( "coll= is not null &lt;br&gt;" );
}


if ( coll[0] != null ){
    document.write( "coll[0].attributes length " + coll[0].attributes.length  + "&lt;br&gt;");

    for ( i = 0; i&lt;coll[0].attributes.length ; i++ ){
        if (( coll[0].attributes[i].value       != "null"  )
           &amp;( coll[0].attributes[i].value.length &gt; 0       ))
        {
            document.write( "coll[0].attributes "        + i + ":"   );
            document.write(  coll[0].attributes[i].name      + ":            "   );
            document.write(  coll[0].attributes[i].value     + "&lt;br&gt;");
        }
    }
}

document.write( "&lt;br&gt;&lt;br&gt;" );
document.write( "Here is how document.all.tags behaves when at least 1 tag is found.&lt;br&gt;" );
var coll = document.all.tags( "body" );
document.write( "list 'body' tags"            + "&lt;br&gt;" );
document.write( "coll= "        + coll        + "&lt;br&gt;" );
document.write( "coll.length= " + coll.length + "&lt;br&gt;" );
if ( coll == null ){
    document.write( "coll= is null &lt;br&gt;" );
} else {
    document.write( "coll= is not null &lt;br&gt;" );
}

if ( coll[0] != null ){
    document.write( "coll[0].attributes length " + coll[0].attributes.length  + "&lt;br&gt;");

    for ( i = 0; i&lt;coll[0].attributes.length ; i++ ){
        if (( coll[0].attributes[i].value       != "null"  )
           &amp;( coll[0].attributes[i].value.length &gt; 0       ))
        {
            document.write( "coll[0].attributes "        + i + ":"   );
            document.write(  coll[0].attributes[i].name      + ":            "   );
            document.write(  coll[0].attributes[i].value     + "&lt;br&gt;");
        }
    }
}

&lt;/script&gt;

&lt;pre&gt;
=================================
== Here is what the above example should display in your browser
=================================
Here is how document.all.tags behaves when no tags are found.
list 'p' tags
coll= [object]
coll.length= 0
coll= is not null


Here is how document.all.tags behaves when at least 1 tag is found.
list 'body' tags
coll= [object]
coll.length= 1
coll= is not null
coll[0].attributes length 98
coll[0].attributes 21:hideFocus: false
coll[0].attributes 45:contentEditable: inherit
coll[0].attributes 59:disabled: false
coll[0].attributes 69:tabIndex: 0
coll[0].attributes 80:bottomMargin: 15
coll[0].attributes 81:noWrap: false
coll[0].attributes 90:leftMargin: 10
coll[0].attributes 92:topMargin: 15
coll[0].attributes 95:rightMargin: 10

&lt;/pre&gt;
&lt;/body&gt;
&lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536776%28VS.85%29.aspx MSDN: tags Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function tags(tag:DOMString):HTMLCollection { return null; };
		
		/**
		 * Retrieves a collection of all objects to which a specified behavior is attached.
		 * 
		 * @param	urn Specifies the behavior's Uniform Resource Name (URN).
		 * @return Returns a collection of objects if successful, or null otherwise.
		 * 
		 * @example
		 * The following example shows how to use the urns method to retrieve a collection of all 
		 * elements currently attached to the specified behavior and then display a comma-delimited 
		 * list of these element IDs in a message box.
		 * <listing>
		 * &lt;script language="JScript"&gt;
		 * 	var coll  = document.all.urns("URN1");
		 * 	var sText = '';
		 * 
		 * 	if (coll != null) {
		 * 		for (i=0; i&lt;coll.length; i++) {
		 * 			sText += coll.item(i).id + ', ';
		 * 		}
		 * 
		 * 		window.alert(sText);
		 * 	}
		 * &lt;/script&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536780%28VS.85%29.aspx MSDN: urns Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function urns(urn:DOMString):HTMLCollection { return null; };
	}
}