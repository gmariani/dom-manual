package dom.core {
	
	import dom.core.CharacterData;
	import dom.core.DOMException;
	import dom.core.types.DOMString;
	
	/**
	 * The Text interface represents the textual content of an Element or Attr.  If an 
	 * element has no markup within its content, it has a single child implementing Text 
	 * that contains the element's text.  However, if the element contains markup, it is 
	 * parsed into information items and Text nodes that form its children.
	 * 
	 * <p>New documents have a single Text node for each block of text.  Over time, more 
	 * Text nodes may be created as the document's content changes.  The Node.normalize() 
	 * method merges adjacent Text objects back into a single node for each block of text.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms757862%28VS.85%29.aspx MSDN - IXMLDOMText
	 * @see http://developer.mozilla.org/En/DOM/Text MDC - Text
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1312295772 W3C - Text
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 * @modified DOMCore 3
	 */
	public class Text extends CharacterData {
		
		/**
		 * Returns a Boolean value indicating whether or not the text node contains whitespace within its content.  
		 * This determination is made during the loading of the document, or if validation occurs when Document.normalizeDocument() is called.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Text.isElementContentWhitespace MDC - Text.isElementContentWhitespace
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Text3-isElementContentWhitespace W3C - Text.isElementContentWhitespace
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function get isElementContentWhitespace():Boolean { return false; };
		
		/**
		 * Returns all text of all Text nodes logically adjacent to this node, concatenated in document order.
		 * 
		 * @example
		 * Suppose you have the following simple paragraph within your webpage (with 
		 * some whitespace added to aid formatting throughout the code samples here), 
		 * whose DOM node is stored in the variable para:
		 * 
		 * <listing>
		 * &lt;p>Thru-hiking is great!  &lt;strong>No insipid election coverage!&lt;/strong>
		 * However, &lt;a href="http://en.wikipedia.org/wiki/Absentee_ballot">casting a  
		 * ballot&lt;/a> is tricky.&lt;/p></listing>
		 * 
		 * <p>You decide you don’t like the middle sentence, so you remove it:</p>
		 * 
		 * <listing>para.removeChild(para.childNodes[1]);</listing>
		 * 
		 * <p>Later, you decide to rephrase things to, “Thru-hiking is great, but casting a 
		 * ballot is tricky.” while preserving the hyperlink. So you try this:</p>
		 * 
		 * <listing>para.firstChild.data = "Thru-hiking is great, but ";</listing>
		 * 
		 * <p>All set, right? Wrong! What happened was you removed the strong element, 
		 * but the removed sentence’s element separated two text nodes, one for the 
		 * first sentence and one for the first word of the last. Instead, you now 
		 * effectively have this:</p>
		 * 
		 * <listing>
		 * &lt;p>Thru-hiking is great, but However, &lt;a href="http://en.wikipedia.org/wiki/Absentee_ballot">
		 * casting a ballot&lt;/a> is tricky.&lt;/p></listing>
		 * 
		 * <p>You’d really prefer to treat all those adjacent text nodes as a single one. 
		 * That’s where wholeText comes in: if you have multiple adjacent text nodes, 
		 * you can access the contents of all of them using wholeText. Let’s pretend 
		 * you never made that last mistake. In that case, we have:</p>
		 * 
		 * <listing>assert(para.firstChild.wholeText == "Thru-hiking is great!    However, ");</listing>
		 * 
		 * <p>wholeText is just a property of text nodes that returns the string of data 
		 * making up all the adjacent (i.e. not separated by an element boundary) 
		 * text nodes together.</p>
		 * 
		 * <p>Now let’s return to our original problem. What we want is to be able to 
		 * replace the whole text with new text. That’s where replaceWholeText() 
		 * comes in:</p>
		 * 
		 * <listing>para.firstChild.replaceWholeText("Thru-hiking is great, but ");</listing>
		 * 
		 * <p>We’re removing every adjacent text node (all the ones that constituted 
		 * the whole text) but the one on which replaceWholeText() is called, and 
		 * we’re changing the remaining one to the new text. What we have now is this:</p>
		 * 
		 * <listing>
		 * &lt;p>Thru-hiking is great, but &lt;a href="http://en.wikipedia.org/wiki/Absentee_ballot">
		 * casting a ballot&lt;/a> is tricky.&lt;/p></listing>
		 * 
		 * <p>Some uses of the whole-text functionality may be better served by using 
		 * Node.textContent or the longstanding innerHTML; that’s fine and probably 
		 * clearer in most circumstances. If you have to work with mixed content 
		 * within an element as here, however, wholeText and replaceWholeText() may be useful.</p>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Text.wholeText MDC - Text.wholeText
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Text3-wholeText W3C - Text.wholeText
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 * @productversion Firefox 3.5+
		 */
		public function get wholeText():DOMString { return null; };
		public function set wholeText(value:DOMString):void { };
		
		/**
		 * Replaces the text of the node and all of its logically adjacent text nodes 
		 * with the specified text.  The replaced nodes are removed, including the 
		 * current node, unless it was the recipient of the replacement text.
		 * 
		 * <p><strong>Note:</strong> This method returns the text node which received the replacement text, or null 
		 * if the replacement text is an empty string.  The returned node is the current 
		 * node unless the current node is read only, in which case the returned node is 
		 * a newly created text node of the same type which has been inserted at the 
		 * location of the replacement.</p>
		 * 
		 * <p><strong>Note (Mozilla):</strong> Firefox's implementation of this method does not yet support EntityReference 
		 * nodes as defined by the specification.</p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR : One of the 
		 * text nodes being replaced is read only.
		 * 
		 * @param	content Specifying the text with which to replace the node's current contents.
		 * @return The Text node created with the specified content.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/Text.replaceWholeText MDC - Text.replacewholeText()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#Text3-replaceWholeText W3C - Text.replacewholeText()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 * @productversion Firefox 3.5+
		 */
		public function replacewholeText(content:DOMString):Text { return null; };
		
		/**
		 * Breaks the Text node into two nodes at the specified offset, keeping both 
		 * nodes in the tree as siblings.
		 * 
		 * <p><strong>Note:</strong> After the split, the current node contains all the content up to the specified 
		 * offset point, and a newly created node of the same type contains the remaining 
		 * text.  The newly created node is returned to the caller.  If the original node 
		 * had a parent, the new node is inserted as the next sibling of the original 
		 * node.  If the offset is equal to the length of the original node, the newly 
		 * created node has no data.</p>
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR : The specified offset is negative or is greater than the number of 16-bit units in the node's text.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR : The node is read only.
		 * 
		 * @param	offset 16-bit integer offset at which to split; the first character in the node is numbered zero.
		 * @return The new node, of the same type as this node.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms753789%28VS.85%29.aspx MSDN - splitText Method
		 * @see http://developer.mozilla.org/En/DOM/Text.splitText MDC - Text.splitText()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-38853C1D W3C - Text.splitText()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function splitText(offset:Number):Text { return null; };
	}
}