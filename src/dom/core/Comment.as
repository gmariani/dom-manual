package dom.core {
	
	import dom.core.CharacterData;
	
	/**
	 * A comment is used to add notations within markup.
	 * 
	 * <p>Although it is generally not displayed, it is still available to be read in 
	 * the source view. These are represented in HTML and XML as content between 
	 * &lt;!-- and  --&gt; . In XML, the character sequence "--" cannot be used within a comment.</p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms765529%28VS.85%29.aspx MSDN - IXMLDOMComment
	 * @see http://developer.mozilla.org/En/DOM/Comment MDC - Comment
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-1728279322 W3C - DOM 3 Core: Comment
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 */
	public class Comment extends CharacterData { }
}