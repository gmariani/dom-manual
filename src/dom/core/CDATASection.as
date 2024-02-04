package dom.core {
	
	/**
	 * A CDATA Section can be used within XML to include extended portions of 
	 * unescaped text, such that the symbols &lt; and &amp; do not need escaping as 
	 * they normally do within XML when used as text.
	 * 
	 * <p><strong>Note:</strong> CDATA sections should not be used (without hiding) within HTML.</p>
	 * 
	 * @example
	 * For example:
	 * <listing>&lt;foo&gt;Here is a CDATA section: &lt;![CDATA[  &lt; &gt; &amp; ]]&gt; with all kinds of unescaped text. &lt;/foo&gt;</listing>
	 * The only sequence which is not allowed within a CDATA section is the closing sequence of a CDATA section itself:
	 * <listing>&lt;![CDATA[  ]]&gt; will cause an error   ]]&gt;</listing>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms762780%28VS.85%29.aspx MSDN - IXMLDOMCDATASection
	 * @see http://developer.mozilla.org/en/DOM/CDATASection MDC - CDATASection
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-667469212 W3C - CDATASection
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 */
	public class CDATASection extends Text { }
}