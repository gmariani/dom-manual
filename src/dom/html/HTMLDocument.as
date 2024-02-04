package dom.html {
	
	import dom.core.Document;
	import dom.core.Element;
	import dom.core.Node;
	import dom.core.NodeList;
	import dom.core.types.DOMObject;
	import dom.core.types.DOMString;
	import dom.events.Event;
	import dom.html.HTMLElement;
	import dom.html.objects.HTMLCollection;
	import dom.objects.Location;
	import dom.objects.Selection;
	import dom.Window;
	import dom.xpath.XPathEvaluator;
	import dom.xpath.XPathExpression;
	import dom.xpath.XPathNSResolver;
	import gecko.nsIBoxObject;
	import gecko.nsIURI;
	
	/**
	 * An HTMLDocument is the root of the HTML hierarchy and holds the entire content.
	 * 
	 * <p>Besides providing access to the hierarchy, it also provides some convenience 
	 * methods for accessing certain sets of information from the document.</p>
	 * 
	 * <p>The following properties have been deprecated in favor of the 
	 * corresponding ones for the BODY element:
	 * <ul>
	 * <li>alinkColor</li>
	 * <li>background</li>
	 * <li>bgColor</li>
	 * <li>fgColor</li>
	 * <li>linkColor</li>
	 * <li>vlinkColor</li>
	 * </ul>
	 * </p>
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms531073%28VS.85%29.aspx MSDN - document Object
	 * @see http://msdn.microsoft.com/en-us/library/dd347078%28VS.85%29.aspx MSDN - HTMLDocument Prototype
	 * @see http://developer.mozilla.org/en/DOM/document MDC - Document
	 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-26809268 W3C - HTMLDocument
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 * @modified HTML 5
	 */
	public class HTMLDocument extends Document implements XPathEvaluator {
		
		/**
		 * Returns the currently focused element.
		 * 
		 * <p>If no element in the Document is focused, this will return the body element.</p>
		 * 
		 * <p><strong>Note:</strong> This attribute is part of the in-development HTML 5 specification.</p>
		 * 
		 * <p><strong>Note (IE):</strong> For versions of Microsoft Internet Explorer 5 and later, the activeElement 
		 * property is not defined until a document is loaded. A value of null is given for this property, if it 
		 * is accessed inline during the loading of a document. This property can be accessed in the  onload event 
		 * handler function. </p>
		 * 
		 * <p><strong>Note (IE):</strong> Internet Explorer 4.0 returns  body as the activeElement when it is accessed 
		 * inline during the loading of a document.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533065%28VS.85%29.aspx MSDN - activeElement Property
		 * @see http://developer.mozilla.org/en/DOM/document.activeElement MDC - Document.activeElement
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-document-activeelement WHATWG - HTMLDocument.activeElement
		 * 
		 * @playerversion HTML 5
		 * @since HTML 5
		 */
		public function get activeElement():Element { return null; };
		
		/**
		 * Returns a reference to the collection of elements contained by the object.
		 * 
		 * <p><strong>Note:</strong> The all collection includes one element object for each valid HTML tag. If a valid tag has a 
		 * matching end tag, both tags are represented by the same element object.</p>
		 * 
		 * <p><strong>Note:</strong> The collection returned by the document's all collection always includes a reference to 
		 * the  HTML,  HEAD, and  TITLE objects regardless of whether the tags are present in the document. If the  BODY tag 
		 * is not present, but other HTML tags are, a BODY object is added to the all collection.</p>
		 * 
		 * <p><strong>Note:</strong> If the document contains invalid or unknown tags, the collection includes one element object 
		 * for each. Unlike valid end tags, unknown end tags are represented by their own element objects. The order of the element 
		 * objects is the HTML source order. Although the collection indicates the order of tags, it does not indicate hierarchy.</p>
		 * 
		 * <p><strong>Note:</strong> The  name property only applies to some elements such as  form elements. If the vIndex is set to 
		 * a string matching the value of a name property in an element that the name property does not apply, then that element will 
		 * not be added to the collection.</p>
		 * 
		 * @example
		 * This example, in Microsoft JScript (compatible with ECMA 262 language specification), shows how to display the names of all tags in the document in the order the tags appear in the document.
		 * <listing>
		 * for(i = 0; i &lt; document.all.length; i++) {
		 * 	alert(document.all(i).tagName);
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537434%28VS.85%29.aspx MSDN - all Collection
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get all():HTMLCollection { return null; };
		
		/**
		 * Returns or sets the color of an active link in the document body. A link is active during 
		 * the time between mousedown and mouseup events. 
		 * 
		 * <p><strong>Note:</strong> The color is a string representing the color as a word (e.g., "red") or hexadecimal value (e.g., "#ff0000").</p>
		 * 
		 * <p><strong>Note:</strong> Gecko supports both alinkColor/:active and :focus . Internet Explorer 6 
		 * and 7 support alinkColor/:active only for  HTML anchor (&lt;a&gt;) links and the behavior is the same as 
		 * :focus under Gecko. There is no support for :focus in IE. </p>
		 * 
		 * @default "#0000FF" for IE / "#EE0000" for Mozilla
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533071(VS.85).aspx MSDN - alinkColor Property
		 * @see http://developer.mozilla.org/en/DOM/document.alinkColor MDC - Document.alinkColor
		 * 
		 * @playerversion Deprecated 0
		 * @as-of DOM Level 2 HTML
		 * 
		 * @since DOMCore 0
		 */
		public function get alinkColor():DOMString { return null; };
		public function set alinkColor(value:DOMString):void { };
		
		/**
		 * A collection of all the anchor (A) elements in a document with a 
		 * value for the name attribute.
		 * 
		 * <p><strong>Note:</strong> For reasons of backwards compatibility, the returned 
		 * set of anchors only contains those anchors created with the name attribute, not 
		 * those created with the id attribute. </p>
		 * 
		 * @example
		 * <listing>
		 * if ( document.anchors.length &gt;= 5 ) {
		 * 	dump("dump found too many anchors");
		 * 	window.location = "http://www.google.com";
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537435%28VS.85%29.aspx MSDN - anchors Collection
		 * @see http://developer.mozilla.org/en/DOM/document.anchors MDC - Document.anchors
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-7577272 W3C - HTMLDocument.anchors
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function get anchors():HTMLCollection { return null; };
		
		/**
		 * A collection of all the OBJECT elements that include applets and 
		 * APPLET (deprecated) elements in a document.
		 * 
		 * @example
		 * <listing>
		 * // ( When you know the second applet is the one you want ) 
		 * my_java_app = document.applets[1];</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537436%28VS.85%29.aspx MSDN - applets Collection
		 * @see http://developer.mozilla.org/en/DOM/document.appletsMDC - Document.applets
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-85113862 W3C - HTMLDocument.applets
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function get applets():HTMLCollection { return null; };
		
		/**
		 * URI of the background texture tile image.
		 * 
		 * @playerversion Deprecated 0
		 * @as-of DOM Level 2 HTML
		 * 
		 * @since DOMCore 0
		 */
		public function get background():DOMString { return null; };
		public function set background(value:DOMString):void { };
		
		/**
		 * baseURIObject returns the nsIURI object representing the document's URI. 
		 * 
		 * <p><strong>Note (Mozilla):</strong> This property exists on all nodes (HTML, XUL, SVG, MathML, etc.), 
		 * but only if the script trying to use it has UniversalXPConnect privileges.</p>
		 * 
		 * <p><strong>Note (Mozilla):</strong> This property may only be accessed from privileged code. </p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.baseURIObject MDC - Document.baseURIObject
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get baseURIObject():nsIURI { return null; };
		
		/**
		 * Gets/sets the background color of the current document. 
		 * 
		 * <p><strong>Note:</strong> The color is a string representing the color as a word (e.g., "red") or hexadecimal value (e.g., "#ff0000").</p>
		 * 
		 * @default "#ffffff"
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533506%28VS.85%29.aspx MSDN - bgColor Property
		 * @see http://developer.mozilla.org/en/DOM/document.bgColor MDC - Document.bgColor
		 * 
		 * @playerversion Deprecated 0
		 * @as-of DOM Level 2 HTML
		 * 
		 * @since DOMCore 0
		 */
		public function get bgColor():DOMString { return null; };
		public function set bgColor(value:DOMString):void { };
		
		/**
		 * The element that contains the content for the document. In documents 
		 * with BODY contents, returns the BODY element. In frameset documents, 
		 * this returns the outermost FRAMESET element.
		 * 
		 * <p><strong>Note:</strong> Though body is settable, setting a new body on a document 
		 * will effectively remove all the current children of the existing &lt;/body&gt; element. </p>
		 * 
		 * @example
		 * <listing>
		 * // in HTML: &lt;body id="oldBodyElement"&gt;&lt;/body&gt;
		 * alert(document.body.id); // "oldBodyElement"
		 * var aNewBodyElement = document.createElement("body");
		 * aNewBodyElement.id = "newBodyElement";
		 * document.body = aNewBodyElement;
		 * alert(document.body.id); // "newBodyElement"</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.body MDC - Document.body
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-56360201 W3C - HTMLDocument.body
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function get body():HTMLElement { return null; };
		public function set body(value:HTMLElement):void { };
		
		/**
		 * Returns the character encoding of the current document. 
		 * 
		 * <p><strong>Note:</strong> The character encoding is the character set used for rendering the document, which may be different 
		 * from the encoding specified by the page (the user can override the encoding). </p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.characterSet MDC - Document.characterSet
		 * 
		 * @playerversion DOMCore 0
		 */
		public function get characterSet():DOMString { return null; };
		public function set characterSet(value:DOMString):void { };
		
		/**
		 * Sets or retrieves the character set used to encode the object.
		 * 
		 * <p><strong>Note (IE):</strong> In Microsoft Internet Explorer 6, This property now applies to the  
		 * a,  link, and  script objects. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533553%28VS.85%29.aspx MSDN - charset Property
		 * 
		 * @playerversion HTML 5
		 * @since Non-Standard Microsoft
		 * @modified HTML 5
		 */
		public function get charset():DOMString { return null; };
		public function set charset(value:DOMString):void { };
		
		/**
		 * Retrieves the collection of user agents and versions declared in the X-UA-Compatible  meta tag. 
		 * 
		 * <p><strong>Note (IE):</strong> This method is available in all compatibility modes. </p>
		 * 
		 * @example
		 * The following script iterates through the collection of compatible user agents, and displays each on a separate line. 
		 * <listing>
		 * &lt;meta http-equiv="X-UA-Compatible" content="IE=8;FF=3;OtherUA=4" /&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * window.attachEvent('onload',function(e) {
		 * var a = [];
		 * var compat = document.compatible;
		 * for (var i=0; i&lt;compat.length; i++) {
		 * a.push(compat[i].userAgent + '=' + compat[i].version);
		 * }
		 * var o = document.getElementById('output');
		 * o.innerHTML = a.join('&lt;br/&gt;');
		 * });
		 * &lt;/script&gt;
		 * 
		 * &lt;div id="output"&gt;&lt;/div&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc196984%28VS.85%29.aspx MSDN - compatible Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 * 
		 * @productversion IE 5.5_unknown
		 * @productversion IE 6.0_unknown
		 * @productversion IE 7.0_unknown
		 * @productversion IE 8.0_as_IE7_unknown
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function get compatible():HTMLCollection { return null; };
		
		/**
		 * Indicates whether the document is rendered in Quirks mode or Strict mode. 
		 * 
		 * <p><strong>Note:</strong> Can either be "BackCompat" for Quirks mode or "CSS1Compat" for Strict mode.</p>
		 * 
		 * <p><strong>Note:</strong> There is a third mode, Gecko's "Almost_Standards" Mode, which only differs from 
		 * Strict mode in the layout of images inside table cells. This third mode is reported the same way as 
		 * Strict mode: "CSS1Compat". </p>
		 * 
		 * <p><strong>Note (IE):</strong> The compatMode property is deprecated in Internet Explorer 8 in favor of the  documentMode property.</p>
		 * 
		 * @example
		 * <listing>
		 * if (document.compatMode == "BackCompat") {
		 * 	// use some quirky stuff
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533687%28VS.85%29.aspx MSDN - compatMode Property
		 * @see http://developer.mozilla.org/en/DOM/document.compatMode MDC - Document.compatMode
		 * @see http://developer.mozilla.org/en/Gecko%27s_%22Almost_Standards%22_Mode MDC - Gecko's "Almost Standards" Mode
		 * 
		 * @playerversion HTML 5
		 * @since Non-Standard Microsoft/Mozilla
		 * @modified HTML 5
		 */
		public function get compatMode():DOMString { return null; };
		public function set compatMode(value:DOMString):void { };
		
		/**
		 * Returns the Content-Type from the HTTP headers of the document. 
		 * 
		 * <p><strong>Note (Mozilla):</strong> The property returns the MIME property "Content-Type" set in the HTTP Header and not 
		 * the META property set in the HEAD section of the document. </p>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.contentType MDC - Document.contentType
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get contentType():DOMString { return null; };
		
		/**
		 * Get and set the cookies associated with the current document. 
		 * 
		 * <listing>allCookies = document.cookie;</listing>
		 * 
		 * <p><code>allCookies</code> is a string containing a semicolon-separated list of cookies (i.e. key=value pairs)</p>
		 * 
		 * <listing>document.cookie = updatedCookie;</listing>
		 * 
		 * <p><code>updatedCookie</code> is a string of form key=value. Note that you can only set/update a single cookie at a time using this method.</p>
		 * 
		 * <p>Any of the following cookie attribute values can optionally follow the key-value pair, specifying 
		 * the cookie to set/update, and preceded by a semi-colon separator: 
		 * <ul>
		 * 	<li><code>;path=<em>path</em></code> (e.g., '/', '/mydir') If not specified, defaults to the current path of the current document location.</li>
		 * 	<li><code>;domain=<em>domain</em></code> (e.g., 'example.com', '.example.com' (includes all subdomains), 'subdomain.example.com') If not specified, defaults to the host portion of the current document location.</li>
		 * 	<li><code>;max-age=<em>max-age-in-seconds</em></code> (e.g., 60*60*24*365 for a year)</li>
		 * 	<li><code>;expires=<em>date-in-GMTString-format</em></code> (could use Date.toGMTString; now obsolete) If not specified it wil expire at the end of session.</li>
		 * 	<li><code>;secure</code> (cookie to only be transmitted over secure protocol as http)</li>
		 * </ul>
		 * </p>
		 * 
		 * <p><strong>Note:</strong> The cookie value string can use encodeURIComponent() to ensure that the string 
		 * does not contain any commas, semicolons, or whitespace (which are disallowed in cookie values).</p>
		 * 
		 * @example
		 * <listing>
		 * document.cookie = "name=oeschger";
		 * document.cookie = "favorite_food=tripe";
		 * alert(document.cookie);
		 * // displays: name=oeschger;favorite_food=tripe</listing>
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: If the new value does not adhere to the cookie syntax.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533693%28VS.85%29.aspx MSDN - cookie Property
		 * @see http://developer.mozilla.org/en/DOM/document.cookie MDC - Document.cookie
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-8747038 W3C - HTMLDocument.cookie
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 * @modified DOMHTML 1
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function get cookie():DOMString { return null; };
		public function set cookie(value:DOMString):void { };
		
		/**
		 * Gets the default character set from the current regional language settings.
		 * 
		 * <p><strong>Note (Microsoft):</strong> The value depends on the current regional language settings. 
		 * For typical settings in North America, the value is windows-1252.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533553%28VS.85%29.aspx MSDN - defaultCharset Property
		 * @see http://msdn.microsoft.com/en-us/library/aa752010(VS.85).aspx MSDN - Charsets in Microsoft Internet Explorer 5
		 * 
		 * @playerversion HTML 5
		 * @since Non-Standard Microsoft
		 * @modified HTML 5
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function get defaultCharset():DOMString { return null; };
		
		/**
		 * Sets or gets a value that indicates whether the document can be edited.
		 * 
		 * <p>Values can be:
		 * <ul>
		 * <li>On : Document can be edited. </li>
		 * <li>Off|Inherit : Default. Document cannot be edited. </li>
		 * </ul>
		 * </p>
		 * 
		 * <p><strong>Note (Mozilla):</strong> Gets/sets WYSYWIG editing capability of Midas. It can only be used for HTML documents.</p>
		 * 
		 * <p><strong>Note (Mozilla):</strong> Midas is the code name for Gecko's built-in rich text editor. Midas can be enabled via 
		 * JavaScript on an HTML document. When Midas is enabled, the document becomes editable by the user. Scripting for Midas is based 
		 * on the DHTML commands supported by Internet Explorer.</p>
		 * 
		 * <p><strong>Note (Microsoft):</strong> You can use the designMode property to put Windows Internet 
		 * Explorer into a mode so that you can edit the current document.</p>
		 * 
		 * <p><strong>Note (Microsoft):</strong> While the browser is in design mode, objects enter a UI-activated state when 
		 * the user presses ENTER, clicks an object that has focus, or double-clicks the object. Objects that are
		 * UI-activated have their own window in the document. You can modify the UI only when the object is in a 
		 * UI-activated state.</p>
		 * 
		 * <p><strong>Note (Microsoft):</strong> You cannot execute script when the value of the designMode property is set to On.</p>
		 * 
		 * <p><strong>Note:</strong> Since an entire document becomes editable, authors often load the editable document into an 
		 * IFRAME and do the bulk of the scripting in the parent document.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 	&lt;head&gt;
		 * 		&lt;title&gt;Simple Edit Box&lt;/title&gt;
		 * 	&lt;/head&gt;
		 * 	&lt;body&gt;
		 * 
		 * 		&lt;iframe
		 * 			id="MidasForm"
		 * 			src="about:blank"
		 * 			onload="this.contentDocument.designMode='on';"
		 * 		&gt;&lt;/iframe&gt;
		 * 	&lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533720%28VS.85%29.aspx MSDN - designMode Property
		 * @see http://developer.mozilla.org/en/DOM/document.designMode MDC - Document.designMode
		 * @see http://developer.mozilla.org/en/Midas MDC - Midas
		 * 
		 * @playerversion Non-Standard Microsoft/Mozilla
		 */
		public function get designMode():DOMString { return null; };
		public function set designMode(value:DOMString):void { };
		
		/**
		 * Sets or retrieves a value that indicates the reading order of the object. 
		 * 
		 * <p>Values can be:
		 * <ul>
		 * <li>ltr : Default. Content flows from left to right.</li>
		 * <li>rtl : Content flows from right to left.</li>
		 * </ul>
		 * </p>
		 * 
		 * <p><strong>Note:</strong> The dir property does not affect alphanumeric characters in Latin documents. 
		 * These characters always render ltr. However, the property does affect punctuation characters in Latin 
		 * documents. For example, punctuation marks such as periods and question marks will render to the left 
		 * of a sentence when the dir property is set to rtl.</p>
		 * 
		 * <p><strong>Note:</strong> The value of dir property has no effect on the orientation of coordinates for 
		 * an object's positioning properties. For example, the  left property and the  right property perform the 
		 * same placement in both cases. However, when both the left and right properties are specified, the left 
		 * property takes precedence when the dir property is set to ltr. Likewise, the right property takes precedence 
		 * when the dir property is set to rtl.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533731%28VS.85%29.aspx MSDN - dir Property
		 * @see http://developer.mozilla.org/En/DOM/Document.dir MDC - Document.dir
		 * 
		 * @playerversion Non-Standard Microsoft/Mozilla
		 */
		public function get dir():DOMString { return null; };
		public function set dir(value:DOMString):void { };
		
		/**
		 * Retrieves the document compatibility mode of the document.
		 * 
		 * <p>Possible Values:
		 * <ul>
		 * 	<li>5 - Microsoft Internet Explorer 5 mode (also known as "quirks mode").</li>
		 * 	<li>7 - Internet Explorer 7 Standards mode.</li>
		 * 	<li>8 - Internet Explorer 8 Standards mode.</li>
		 * </ul>
		 * </p>
		 * 
		 * <p><strong>Note (IE):</strong> The document compatibility mode of a Web page determines how Internet Explorer 8 
		 * interprets and renders the page. Page authors generally use  meta elements to specify X-UA-Compatible  
		 * HTTP-EQUIV headers that specify the document compatibility mode. For more information, see  Defining Document 
		 * Compatibility. In versions of Internet Explorer previous to Internet Explorer 8,  compatMode was solely 
		 * determined by  DOCTYPE. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/cc196988%28VS.85%29.aspx MSDN - documentMode Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function get documentMode():Number { return 0; };
		
		/**
		 * Returns an nsIURI object representing the URI of the document. 
		 * 
		 * <p>This only works for privileged (UniversalXPConnect) scripts, including extension code. For web content this 
		 * property doesn't have any special meaning and can be used just like any other custom property. </p>
		 * 
		 * <p>Privileged code must be careful not to try getting or setting this property on a non-wrapped content object 
		 * (e.g. on a wrappedJSObject of an XPCNativeWrapper). See bug 324464's comments for details. </p>
		 * 
		 * @example
		 * <listing>
		 * // Check that the URI scheme of the current tab in Firefox is 'http',
		 * // assuming this code runs in context of browser.xul
		 * var uriObj = content.document.documentURIObject;
		 * var uriPort = uriObj.port;
		 * 
		 * if (uriObj.schemeIs('http')) {
		 * 	...
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.documentURIObject MDC - Document.documentURIObject
		 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=324464 bug 324464
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get documentURIObject():nsIURI { return null; };
		
		/**
		 * Gets/sets the domain of the current document.
		 * 
		 * <p><strong>Note:</strong> This property returns null if the domain of the document cannot be identified.</p>
		 * 
		 * <p><strong>Note:</strong> In the DOM HTML specification, this property is listed as being read-only. However, 
		 * all common browsers including Mozilla will let you set it to a superdomain of the current value. For example, 
		 * on developer.mozilla.org it is possible to set it to "mozilla.org" but not "mozilla.com".</p>
		 * 
		 * <p><strong>Note:</strong> It is not universally possible in all browsers to set document.domain to a top-level 
		 * domain (such as "com" or "org") or to a subdomain of a domain on which registrations are restricted (e.g. "co.uk", 
		 * as registrations on the "uk" domain are restricted).</p>
		 * 
		 * @example
		 * <listing>
		 * // for document www.love.com/good.html,
		 * // this script closes the window
		 * var badDomain = "www.love.com";
		 * if (document.domain == badDomain) {
		 * 	window.close();
		 * }</listing>
		 * 
		 * <listing>
		 * // For the URI http://developer.mozilla.org/en/docs/DOM the
		 * // following sets domain to the string "developer.mozilla.org"
		 * var domain = document.domain;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533740%28VS.85%29.aspx MSDN - domain Property
		 * @see http://developer.mozilla.org/en/DOM/document.domain MDC - Document.domain
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-2250147 W3C - HTMLDocument.domain
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function get domain():DOMString { return null; };
		public function set domain(value:DOMString):void { };
		
		/**
		 * Retrieves a collection of all  embed objects in the document.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537450(VS.85).aspx MSDN - embeds Collection
		 * @see http://developer.mozilla.org/en/DOM/document.embeds MDC - Document.embeds
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get embeds():HTMLCollection { return null; };
		
		/**
		 * Sets or retrieves a value indicating whether arbitrary variables can be created within the object.
		 * 
		 * <p><strong>Note:</strong> You can extend the properties on an object by creating arbitrary properties 
		 * with values. You should be careful, however, because you can unintentionally set a property value when 
		 * scripting in a case-sensitive language such as Microsoft JScript. For example, if the property value 
		 * is borderColor and you type the value "bordercolor = 'blue'", you have, in fact, created another property 
		 * on the style object called bordercolor with the value 'blue'. If you query the value of the property, 
		 * the value "blue" is returned. However, the borders for the element do not turn blue.</p>
		 * 
		 * <p><strong>Note:</strong> Setting the  expando property of the  document object to false precludes the 
		 * functionality of all expandos within the document.</p>
		 * 
		 * @default true
		 * 
		 * @example
		 * The following example demonstrates that, by setting the expando property of the document object to false, 
		 * the document ignores the  UNSELECTABLE expando on the  span and allows you to select the text.
		 * <listing>
		 * &lt;html&gt;
		 * 
		 * &lt;head&gt;
		 * &lt;script type="text/javascript"&gt;
		 * 	//Set the expando property to false.
		 * 	document.expando = false;
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body&gt;
		 * 
		 * &lt;div&gt;
		 * &lt;span id="oSpan" unselectable="on"&gt;This text should be selectable.&lt;/span&gt;
		 * &lt;/div&gt;
		 * 
		 * &lt;/body&gt;
		 * 
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533747%28VS.85%29.aspx MSDN - expando Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function get expando():Boolean { return false; };
		public function set expando(value:Boolean):void { };
		
		/**
		 * Gets/sets the foreground color, or text color, of the current document. 
		 * 
		 * <p><strong>Note:</strong> The color is a string representing the color as a word (e.g., "red") or hexadecimal value (e.g., "#ff0000").</p>
		 * 
		 * @default "#000000"
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533749%28VS.85%29.aspx MSDN - fgColor Property
		 * @see http://developer.mozilla.org/en/DOM/document.fgColor MDC - Document.fgColor
		 * 
		 * @playerversion Deprecated 0
		 * @as-of DOM Level 2 HTML
		 * 
		 * @since DOMCore 0
		 */
		public function get fgColor():DOMString { return null; };
		public function set fgColor(value:DOMString):void { };
		
		/**
		 * Retrieves the date the file was created. For example, Monday, December 08, 1997.
		 * 
		 * @example
		 * This example implements the fileCreatedDate property to count the number of days since the document was created.
		 * <listing>
		 * // Date document was created
		 * var oCreated=new Date(document.fileCreatedDate);
		 * 
		 * // Today's Date
		 * var oToday=new Date();
		 * 
		 * //There are 86400000 milliseconds in a day
		 * var iMilliSeconds=86400000;
		 * var iDaysBetween=(oToday.getTime() - oCreated.getTime()) / iMilliSeconds;	
		 * 
		 * alert("Created: " + oCreated + "\nDays since created: " + parseInt(iDaysBetween));</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533750%28VS.85%29.aspx MSDN - fileCreatedDate Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get fileCreatedDate():DOMString { return null; };
		
		/**
		 * Retrieves the date the file was last modified. For example, Monday, December 08, 1997.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533751%28VS.85%29.aspx MSDN - fileModifiedDate Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get fileModifiedDate():DOMString { return null; };
		
		/**
		 * Retrieves the file size. 
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533752%28VS.85%29.aspx MSDN - fileSize Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get fileSize():DOMString { return null; };
		
		/**
		 * A collection of all the forms of a document.
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 
		 * &lt;head&gt;
		 * 	&lt;title&gt; document.forms example&lt;/title&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body&gt;
		 * &lt;form id="robby"&gt;
		 * 	&lt;input type="button" onclick="alert(document.forms[0].id);" value="robby's form" /&gt;
		 * &lt;/form&gt;
		 * 
		 * &lt;form id="dave"&gt;
		 * 	&lt;input type="button" onclick="alert(document.forms[1].id);" value="dave's form" /&gt;
		 * &lt;/form&gt;
		 * 
		 * &lt;form id="paul"&gt;
		 * 	&lt;input type="button" onclick="alert(document.forms[2].id);" value="paul's form" /&gt;
		 * &lt;/form&gt;
		 * 
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537457%28VS.85%29.aspx MSDN - forms Collection
		 * @see http://developer.mozilla.org/en/DOM/document.forms MDC - Document.forms
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-1689064 W3C - HTMLDocument.forms
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function get forms():HTMLCollection { return null; };
		
		/**
		 * Retrieves a collection of all  window objects defined by the given document or defined by 
		 * the document associated with the given window.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537459%28VS.85%29.aspx MSDN - frames Collection
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get frames():HTMLCollection { return null; };
		
		/**
		 * Returns the height of the body element of the current document. 
		 * 
		 * @example
		 * <listing>
		 * // alert document height
		 * alert(document.height);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.height MDC - Document.height
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get height():Number { return 0; };
		public function set height(value:Number):void { };
		
		/**
		 * A collection of all the IMG elements in a document. The behavior is 
		 * limited to IMG elements for backwards compatibility.
		 * 
		 * <p><strong>Note:</strong> As suggested by HTML 4.01, to include images, authors may use 
		 * the OBJECT element or the IMG element. Therefore, it is recommended 
		 * not to use this attribute to find the images in the document but 
		 * getElementsByTagName with HTML 4.01 or getElementsByTagNameNS with 
		 * XHTML 1.0.</p>
		 * 
		 * @example
		 * <listing>
		 * var ilist = document.images;
		 * for(var i = 0; i &lt; ilist.length; i++) {
		 * 	if(ilist[i] == "banner.gif") {
         * 		// found the banner
		 * 	}
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537461%28VS.85%29.aspx MSDN - images Collection
		 * @see http://developer.mozilla.org/en/DOM/document.images MDC - Document.images
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-90379117 W3C - HTMLDocument.images
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function get images():HTMLCollection { return null; };
		
		/**
		 * Returns a string containing the date and time on which the current document was last modified, in the form "MM/DD/YY hh:mm:ss".
		 * 
		 * <p><strong>Note:</strong> As a string, lastModified cannot easily be used for comparisions between the modified dates of documents. </p>
		 * 
		 * @example
		 * <listing>
		 * dump(document.lastModified); 
		 * // returns: Tuesday, July 10, 2001 10:19:42</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms533946%28VS.85%29.aspx MSDN - lastModified Property
		 * @see http://developer.mozilla.org/en/DOM/document.lastModified MDC - Document.lastModified
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get lastModified():DOMString { return null; };
		
		/**
		 * Gets/sets the color of links within the document. 
		 * 
		 * <p><strong>Note:</strong> The color is a string representing the color as a word (e.g., "red") or hexadecimal value (e.g., "#ff0000").</p>
		 * 
		 * @default "#0000FF" for IE / "#0000EE" for Mozilla
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534117%28VS.85%29.aspx MSDN - linkColor Property
		 * @see http://developer.mozilla.org/en/DOM/document.linkColor MDC - Document.linkColor
		 * 
		 * @playerversion Deprecated 0
		 * @as-of DOM Level 2 HTML
		 * 
		 * @since DOMCore 0
		 */
		public function get linkColor():DOMString { return null; };
		public function set linkColor(value:DOMString):void { };
		
		/**
		 * A collection of all AREA elements and anchor (A) elements in a document 
		 * with a value for the href attribute.
		 * 
		 * @example
		 * <listing>
		 * var links = document.links;
		 * for(var i = 0; i &lt; links.length; i++) {
		 * 	var linkHref = document.createTextNode(links[i].href);
		 * 	var lineBreak = document.createElement("br");
		 * 	document.body.appendChild(linkHref);
		 * 	document.body.appendChild(lineBreak);
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537465%28VS.85%29.aspx MSDN - links Collection
		 * @see http://developer.mozilla.org/en/DOM/document.links MDC - Document.links
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-7068919 W3C - HTMLDocument.links
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function get links():HTMLCollection { return null; };
		
		/**
		 * Returns a Location object, which contains information about the URL of the document and provides 
		 * methods for changing that URL. In Gecko browsers you can also assign to this property to load another URL. 
		 * 
		 * <p><strong>Note:</strong> Location objects have a toString method returning the current URL. You can also 
		 * assign a string to document.location. This means that you can work with document.location as if it were a 
		 * string in most cases. Sometimes, for example when you need to call a String method on it, you have to 
		 * explicitly call toString: 
		 * 
		 * <listing>alert(document.location.toString().charAt(17))</listing>
		 * </p>
		 * 
		 * <p><strong>Note:</strong> document.location was originally a read-only property, although Gecko browsers allow 
		 * you to assign to it as well. For cross-browser safety, use window.location instead. </p>
		 * 
		 * <p><strong>Note:</strong> To retrieve just the URL as a string, the read-only document.URL property can be used. </p>
		 * 
		 * @example
		 * <listing>
		 * dump(document.location); 
		 * // Prints a string like
		 * // "http://www.example.com/juicybits.html" to the console</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535866%28VS.85%29.aspx MSDN - location Object
		 * @see http://developer.mozilla.org/en/DOM/document.location MDC - Document.location
		 * @see dom.html.Window#location()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get location():Location { return null; };
		
		/**
		 * Retrieves a collection of namespace objects.
		 * 
		 * INCOMPLETE
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537470%28VS.85%29.aspx MSDN - namespaces Collection
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get namespaces():HTMLCollection { return null; };
		
		/**
		 * Gets a reference to the container object of the window.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534331%28VS.85%29.aspx MSDN - parentWindow Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get parentWindow():Window { return null; };
		
		/**
		 * Sets or retrieves the protocol portion of a URL. 
		 * 
		 * <p><strong>Note:</strong> The protocol property specifies how to transfer information from the host to the 
		 * client. Windows Internet Explorer supports several  predefined protocols, including  http and  ftp.</p>
		 * 
		 * <p><strong>Note:</strong> The  document,  img, and  location objects expose the protocol property as read-only. 
		 * location.protocol property returns the initial substring of a URL, including the first colon (for example, 
		 * http:). However, document.protocol returns the expanded text of the protocol acronym. For example, it returns 
		 * the http protocol as Hypertext Transfer Protocol.</p>
		 * 
		 * @example
		 * This example function returns the protocol property of the current page location.
		 * <listing>
		 * function getProtocol() {
		 * 	return document.location.protocol;
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534353%28VS.85%29.aspx MSDN - protocol Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get protocol():DOMString { return null; };
		public function set protocol(value:DOMString):void { };
		
		/**
		 * Returns an HTMLCollection object containing one or more HTMLEmbedElements or null which represent the &lt;embed&gt; elements in the current document. 
		 * 
		 * <p><strong>Note:</strong> For a list of installed plugins, use navigator.plugins instead.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537477%28VS.85%29.aspx MSDN - plugins Collection
		 * @see http://developer.mozilla.org/en/DOM/document.plugins MDC - Document.plugins
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get plugins():HTMLCollection { return null; };
		
		/**
		 * Retrieves a value that indicates the current state of the object.
		 * 
		 * <table class="innertable">
		 * 	<tr><th>State</th><th>Description</th></tr>
		 * 	<tr>
		 * 		<td>uninitialized</td><td>Object is not initialized with data.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>loading</td><td>Object is loading its data.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>loaded</td><td>Object has finished loading its data.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>interactive</td><td>User can interact with the object even though it is not fully loaded.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>complete</td><td>Object is completely initialized.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * <p><strong>Note:</strong> An object's state is initially set to uninitialized, and then to loading. When data 
		 * loading is complete, the state of the link object passes through the loaded and interactive states to reach the 
		 * complete state. </p>
		 * 
		 * <p><strong>Note:</strong> The states through which an object passes are determined by that object; an object 
		 * can skip certain states (for example, interactive) if the state does not apply to that object.</p>
		 * 
		 * <p><strong>Note:</strong> Data source objects and databound elements are normally populated asynchronously, and 
		 * certain programmatic operations can only be performed reliably on databound objects when they are ready for use.
		 * Therefore, the appropriate code should be written to confirm the readyState of objects prior to performing 
		 * certain operations on them. For example, walking the rows of a  table should not be attempted until after the 
		 * table has reached the complete state.</p>
		 * 
		 * <p><strong>Note:</strong> The readyState property enables the status of an object to be tested. The correct place 
		 * to test the readyState property is in the event handler for  onreadystatechange. Similarly, a data source object 
		 * (DSO) fires the  ondatasetcomplete event to notify the Web page that the dataset is ready for programmatic operation.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534359%28VS.85%29.aspx MSDN - readyState Property
		 * @see http://developer.mozilla.org/en/DOM/document.readyState MDC - Document.readyState
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-document-readystate WHATWG - HTMLDocument.readyState
		 * 
		 * @playerversion HTML 5
		 * @since Non-Standard Microsoft
		 * @modified HTML 5
		 */
		public function get readyState():DOMString { return null; };
		
		/**
		 * Returns the URI of the page that linked to this page. 
		 * The value is an empty string if the user navigated to the page directly 
		 * (not through a link, but, for example, via a bookmark).
		 * 
		 * <p><strong>Note:</strong> This property returns a value only when the user reaches the current page through a 
		 * link from the previous page. Otherwise, document. referrer returns an empty string; it also returns an empty 
		 * string when the link is from a secure site.</p>
		 * 
		 * <p><strong>Note:</strong> For example, if PageA.htm includes a link to PageB.htm, and the user clicks that 
		 * link, the document.referrer on PageB.htm returns "PageA.htm." However, if the user is on PageA.htm and types 
		 * PageB.htm into the address line or chooses the Open command from the File menu to get to PageB.htm, the 
		 * document.referrer returns an empty string.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534365%28VS.85%29.aspx MSDN - referrer Property
		 * @see http://developer.mozilla.org/en/DOM/document.referrer MDC - Document.referrer
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-95229140 W3C - HTMLDocument.referrer
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function get referrer():DOMString { return null; };
		
		/**
		 * Returns an HTMLCollection object containing one or more HTMLScriptElements or null which represent the &lt;script&gt; elements in the current document. 
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms537487%28VS.85%29.aspx MSDN - scripts Collection
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-document-scripts WHATWG - HTMLDocument.scripts
		 * 
		 * @playerversion HTML 5
		 * @since Non-Standard Microsoft
		 * @modified HTML 5
		 */
		public function get scripts():HTMLCollection { return null; };
		
		/**
		 * Represents the active selection, which is a highlighted block of text or other elements in the document 
		 * that a user or a script can carry out some action on.
		 * 
		 * <p><strong>Note (IE):</strong> You can use the selection object as input from the user to identify which portion 
		 * of the document to act on, or as output to the user to show the results of an action.</p>
		 * 
		 * <p><strong>Note (IE):</strong> Users and scripts can create selections. Users create selections by dragging the 
		 * mouse over a portion of the document. Scripts create selections by calling the  select method on a text range 
		 * or similar object. To get the active selection, apply the selection keyword to the document object. To carry 
		 * out work on a selection, create a text range object from the selection using the  createRange method. </p>
		 * 
		 * <p><strong>Note:</strong> A document can have only one selection at a time. The selection has a type that 
		 * determines whether it is empty or contains a block of text or elements. Although an empty selection contains 
		 * nothing, you can use it to mark a position in the document.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535869%28VS.85%29.aspx MSDN - selection Object
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get selection():Selection { return null; };
		
		/**
		 * Gets or sets the title of the document. 
		 * 
		 * <p><strong>Note:</strong> The initial value of document.title is the text content of the &lt;title&gt; element.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * 	&lt;title&gt;Hello World!&lt;/title&gt; 
		 * &lt;/head&gt;
		 * &lt;body&gt;
		 * 	&lt;script&gt;
		 * 		alert(document.title); // displays "Hello World!"
		 * 		document.title = "Goodbye World!";
		 * 		alert(document.title); // displays "Goodbye World!"
		 * 	&lt;/script&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.title MDC - Document.title
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-18446827 W3C - HTMLDocument.title
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function get title():DOMString { return null; };
		public function set title(value:DOMString):void { };
		
		/**
		 * Retrieves an autogenerated, unique identifier for the object. 
		 * 
		 * <p><strong>Note (IE):</strong> When you apply this property to the  document object, the browser automatically 
		 * generates a new ID that you can assign to an element's  id property.</p>
		 * 
		 * <p><strong>Note (IE):</strong> A new ID is generated and assigned to the element the first time the property is retrieved. 
		 * Every subsequent access to the property on the same element returns the same ID.</p>
		 * 
		 * <p><strong>Note (IE):</strong> The unique ID generated is not guaranteed to be the same every time the page is loaded.</p>
		 * 
		 * @example
		 * This example uses the uniqueID property to show how the browser can autogenerate a unique ID for an element inserted into the page by a behavior.
		 * <listing>
		 * // Specifying an ID=document.uniqueID ensures that a unique identifier
		 * // will be assigned to the element being inserted into the page by
		 * // the behavior.
		 * newTextAreaID = element.document.uniqueID;
		 * element.document.body.insertAdjacentHTML ("beforeEnd",
		 * "<P><TEXTAREA STYLE='height: 200 ;"+
		 * "width: 350' ID= " + newTextAreaID + "></TEXTAREA></P>");</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534704%28VS.85%29.aspx MSDN - uniqueID Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get uniqueID():DOMString { return null; };
		
		/**
		 * Returns the URL of the current document. 
		 * 
		 * <p><strong>Note:</strong> URL is a replacement for the DOM Level 0 document.location.href property. 
		 * However document.URL is not settable, unlike document.location.href. </p>
		 * 
		 * @example
		 * <listing>var currentURL = document.URL; alert(currentURL);</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534708%28VS.85%29.aspx MSDN - URL Property
		 * @see http://developer.mozilla.org/en/DOM/document.URL MDC - Document.URL
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-46183437 W3C - HTMLDocument.URL
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function get URL():DOMString { return null; };
		
		/**
		 * Gets the URL for the  document, stripped of any character encoding.
		 * 
		 * @example
		 * The following illustrates the difference between the value returned by the URLUnencoded property and the value returned by the  URL property of the document.
		 * <listing>
		 * &lt;script&gt;
		 * function window.onload() {
		 * 	oURL.innerText = document.URL;
		 * 	oURL2.innerText = document.URLUnencoded;
		 * }			
		 * &lt;/script&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534709%28VS.85%29.aspx MSDN - URLUnencoded Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get URLUnencoded():DOMString { return null; };
		
		/**
		 * Gets/sets the color of links that the user has visited in the document. 
		 * 
		 * <p><strong>Note:</strong> The color is a string representing the color as a word (e.g., "red") or hexadecimal value (e.g., "#ff0000").</p>
		 * 
		 * @default "#800080" for IE / "#551A8B" for Mozilla
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535139%28VS.85%29.aspx MSDN - vlinkColor Property
		 * @see http://developer.mozilla.org/en/DOM/document.vlinkColor MDC - Document.vlinkColor
		 * 
		 * @playerversion Deprecated 0
		 * @as-of DOM Level 2 HTML
		 * 
		 * @since DOMCore 0
		 */
		public function get vlinkColor():DOMString { return null; };
		public function set vlinkColor(value:DOMString):void { };
		
		/**
		 * Returns the width of the body element of the current document in pixels. 
		 * 
		 * <p><strong>Note:</strong> Not supported by IE.</p>
		 * 
		 * @example
		 * <listing>
		 * function init() {
		 * 	alert("The width of the document is " + document.width + " pixels.");
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.width MDC - Document.width
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get width():Number { return 0; };
		public function set width(value:Number):void { };
		
		/**
		 * Retrieves a reference to the top-level node of the Extensible Stylesheet Language (XSL) document.
		 * 
		 * <p><strong>Note (IE):</strong> You can use the XSLDocument property to access the Document Object Model (DOM) for the 
		 * XSL style sheet. For more information, refer to the  XML DOM overview. </p>
		 * 
		 * @example
		 * This example uses the XSLDocument property to access the DOM for the XSL and change attributes representing sort keys.
		 * <listing>
		 * function sort(key) {
		 * 	// Find the "order-by" attributes in the style sheet.
		 * 	var s = document.XSLDocument.selectNodes("~~/xsl:template[&amp;64;match='menu']
		 * 	                                          //xsl:apply-templates/&amp;64;order-by");
		 * 
		 * 	// Replace the values with the new sort key.
		 * 	for (var i = s.nextNode(); i != null; i = s.nextNode()) {
		 * 		i.value = key;
		 * 	}
		 * 
		 * 	// Find the subset of the document we need to update.
		 * 	var d = document.XMLDocument.selectSingleNode("story/menu");
		 * 
		 * 	// Apply the style sheet to the subset, and update the display.
		 * 	menu.innerHTML = d.transformNode(document.XSLDocument);
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535163%28VS.85%29.aspx MSDN - XSLDocument Property
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function get XSLDocument():DOMObject { return null; };
		
		/**
		 * Instructs the browser to grab events of a specific type before they reach their intended target document objects. 
		 * The object invoking this method must then have event handlers defined for the given event types to process the event. 
		 * 
		 * @param	eventTypeList A comma-separated list of case-sensitive event types as derived from the available 
		 * Event object constants, such as Event.CLICK or Event.MOUSEMOVE.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.captureEvents MDC - Document.captureEvents()
		 * 
		 * @playerversion Non-Standard Mozilla
		 * @playerversion Obsolete 0
		 */
		public function captureEvents(eventTypeList:DOMString):void { };
		
		/**
		 * This method used to clear the whole specified document in early (pre-1.0) 
		 * versions of Mozilla.
		 * 
		 * <p>In recent versions of Mozilla-based applications as well as in Internet 
		 * Explorer and Netscape 4 this method does nothing. </p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536361%28VS.85%29.aspx MSDN - clear Method
		 * @see http://developer.mozilla.org/en/DOM/document.clear MDC - Document.clear()
		 * 
		 * @playerversion Deprecated 0
		 * @since DOMCore 0
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5_no
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function clear():void { };
		
		/**
		 * Closes a document stream opened by open() and forces rendering. 
		 * 
		 * @example
		 * <listing>
		 * // open a document to write to it.
		 * // write the content of the document.
		 * // close the document.
		 * document.open();
		 * document.write("&lt;p&gt;The one and only content.&lt;/p&gt;");
		 * document.close();</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536369%28VS.85%29.aspx MSDN - close Method
		 * @see http://developer.mozilla.org/en/DOM/document.close MDC - Document.close()
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-98948567 W3C - HTMLDocument.close()
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function close():void { };
		
		/**
		 * When an HTML document has been switched to designMode, the document object exposes the execCommand 
		 * method which allows one to run commands to manipulate the contents of the editable region. Most 
		 * commands affect the document's selection (bold, italics, etc), while others insert new elements 
		 * (adding a link) or affect an entire line (indenting). When using contentEditable, calling execCommand 
		 * will affect the currently active editable element.
		 * 
		 * @param	aCommandName The name of the command 
		 * @param	aShowDefaultUI Whether the default user interface should be shown. This is not implemented in Mozilla.
		 * @param	aValueArgument Some commands (such as insertimage) require an extra value argument (the image's url). 
		 * Pass an argument of null if no argument is needed.
		 * @return True if successful, or an error value otherwise.
		 * 
		 * @example
		 * <listing>
		 * //HTML:
		 * &lt;button onclick="doRichEditCommand('bold')" style="font-weight:bold;"&gt;B&lt;/button&gt;
		 * 
		 * //JavaScript:
		 * function doRichEditCommand(aName, aArg){
		 * 	getIFrameDocument('editorWindow').execCommand(aName,false, aArg);
		 * 	document.getElementById('editorWindow').contentWindow.focus()
		 * }</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa752577%28VS.85%29.aspx MSDN - IHTMLDocument2::execCommand Method
		 * @see http://developer.mozilla.org/En/Document.execCommand MDC - Document.execCommand()
		 * @see http://msdn.microsoft.com/en-us/library/ms533049%28VS.85%29.aspx MSDN - Command Identifiers
		 * @see http://developer.mozilla.org/en/Rich-Text_Editing_in_Mozilla#Executing_Commands MDC - Executing Commands
		 * @see http://developer.mozilla.org/en/Midas#Supported_Commands MDC - Supported Commands
		 * 
		 * @playerversion Non-Standard Microsoft/Mozilla
		 */
		public function execCommand(aCommandName:DOMString, aShowDefaultUI:Boolean, aValueArgument:DOMString):Boolean { return false; };
		
		/**
		 * Displays help information for the given command identifier.
		 *  
		 * @param	aCommandName Contains an identifier of a command. It can be any command identifier given in the list of  Command Identifiers.
		 * @return True if successful, or an error value otherwise.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa752578%28VS.85%29.aspx MSDN - IHTMLDocument2::execCommandShowHelp Method
		 * @see http://developer.mozilla.org/En/DOM/document.execCommandShowHelp MDC - Document.execCommandShowHelp()
		 * @see http://msdn.microsoft.com/en-us/library/ms533049%28VS.85%29.aspx MSDN - Command Identifiers
		 * @see http://developer.mozilla.org/en/Rich-Text_Editing_in_Mozilla#Executing_Commands MDC - Executing Commands
		 * @see http://developer.mozilla.org/en/Midas#Supported_Commands MDC - Supported Commands
		 * 
		 * @playerversion Non-Standard Microsoft/Mozilla
		 */
		public function execCommandShowHelp(aCommandName:DOMString):Boolean { return false; };
		
		/**
		 * Fires a specified event on the object.
		 * 
		 * <p>If the event being fired cannot be cancelled, fireEvent always returns true.</p>
		 * 
		 * <p>Regardless of their values specified in the event object, the values of the 
		 * four event properties—cancelBubble, returnValue, srcElement, and type—are 
		 * automatically initialized to the values shown in the following table.</p> 
		 * 
		 * <ul>
		 * <li>cancelBubble : false</li>
		 * <li>returnValue : true</li>
		 * <li>srcElement : element on which the event is fired</li>
		 * <li>type : name of the event that is fired</li>
		 * </ul>
		 * 
		 * @param	type String that specifies the name of the event to fire.
		 * @param	event Object that specifies the event object from which to obtain event object properties.
		 * @return Event fired successfully
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536423%28VS.85%29.aspx MSDN - fireEvent Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function fireEvent(type:DOMString, event:Object = null):Boolean { return false; };
		
		/**
		 * Causes the element to receive the focus and executes the code specified by the  onfocus event. 
		 * 
		 * <p><strong>Note (IE):</strong> This method raises the onfocus event. The effect depends on the object calling 
		 * the method. When called for child windows (such as those created with the  open method of a  window object), 
		 * focus brings the target window to the foreground.</p>
		 * 
		 * <p><strong>Note (IE):</strong> Windows Internet Explorer 8 and later. The focus method no longer brings child windows 
		 * (such as those created with the open method) to the foreground. Child windows now request focus from the user, 
		 * usually by flashing the title bar. To directly bring the window to the foreground, add script to the child window 
		 * that calls the focus method of its window object.</p>
		 * 
		 * <p><strong>Note:</strong> Internet Explorer 7 and later. For security reasons, child windows will only respond to 
		 * the focus method when the following conditions are true:
		 * <ul>
		 * <li>The child window does not have multiple tabs open.</li>
		 * <li>The focus method was not triggered by a double-click action.</li>
		 * </ul>
		 * If any of these conditions are true, the child window ignores the focus event.
		 * </p>
		 * 
		 * <p><strong>Note:</strong> As of Microsoft Internet Explorer 5, elements that expose the focus method must have the TABINDEX attribute set.</p>
		 * 
		 * <p><strong>Note:</strong> Elements cannot receive focus until the document finishes loading.</p>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536425%28VS.85%29.aspx MSDN - focus Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function focus():void { };
		
		/**
		 * This particular method was a way for XUL elements to efficiently determine their position, amongst other things. 
		 * A couple of years ago this feature started to be used by the general web-developer world. This was quickly 
		 * realized to be a major mistake.
		 * 
		 * @param	element Target element
		 * @return	The dimensions of the element
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.getBoxObjectFor MDC - Document.getBoxObjectFor()
		 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=340571 Bug 340571
		 * @see http://ejohn.org/blog/the-getboxobjectfor-apocalypse/ John Resig - The getBoxObjectFor Apocalypse
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function getBoxObjectFor(element:Element):nsIBoxObject { return null; };
		
		/**
		 * Returns a set of elements with the given class name. When called on the document object, the 
		 * complete document is searched, including the root node. You may also call getElementsByClassName 
		 * on any element; it will return only elements under the specified root element with the given class name. 
		 * 
		 * @param	classNames An unordered set of unique space-separated tokens representing classes.
		 * @return A live NodeList object containing all the elements in the document, in tree order, that have 
		 * all the classes specified in that argument, having obtained the classes by splitting a string on spaces. 
		 * If there are no tokens specified in the argument, then returns an empty NodeList.
		 * 
		 * @example
		 * <p>Get all elements that have a class of 'test'</p>
		 * 
		 * <listing>document.getElementsByClassName('test')</listing>
		 * 
		 * <p>Get all elements that have a class of 'red' and 'test'</p>
		 * 
		 * <listing>document.getElementsByClassName('red test')</listing>
		 * 
		 * <p>Get all elements that have a class of 'test', inside of an element that has the ID of 'main'</p>
		 * 
		 * <listing>document.getElementById('main').getElementsByClassName('test')</listing>
		 * 
		 * <p>And if we go ahead and add in <a rel="internal" href="http://developer.mozilla.org/en/New_in_JavaScript_1.6">JavaScript 1.6</a>'s Array extras, we can do some really-cool matches.</p>
		 * 
		 * <p>Find all div elements that have a class of 'test'</p>
		 * 
		 * <listing>
		 * Array.filter( document.getElementsByClassName('test'), function(elem) {
		 * 	return elem.nodeName == 'DIV';
		 * });</listing>
		 * 
		 * <p>Find all elements that have a class of 'test' (as do their parent element)</p>
		 * 
		 * <listing>
		 * var test = document.getElementsByClassName('test');
		 * Array.filter( test, function(elem){
		 * 	return Array.indexOf( test, elem.parentNode ) &gt; -1;
		 * });</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.getElementsByClassName MDC - Document.getElementsByClassName()
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-document-getelementsbyclassname WHATWG - HTMLDocument.getElementsByClassName()
		 * 
		 * @playerversion HTML 5
		 * @since HTML 5
		 */
		public function getElementsByClassName(classNames:DOMString):NodeList { return null; };
		
		/**
		 * Returns a list of elements with a given name in the (X)HTML document. 
		 * 
		 * @param	elementName The name attribute value for an element.
		 * @return The matching elements.
		 * 
		 * @example
		 * <listing>// return some of the forms 
		 * //&lt;form name="up"&gt;&lt;input type="text"/&gt;&lt;/form&gt; 
		 * //&lt;form name="up"&gt;&lt;input type="text"/&gt;&lt;/form&gt; 
		 * //&lt;form name="down"&gt;&lt;input type="text"/&gt;&lt;/div&gt; 
		 * //&lt;form name="down"&gt;&lt;input type="text"/&gt;&lt;/div&gt; 
		 * 
		 * up_forms = document.getElementsByName("up"); 
		 * dump(up_forms.item(0).tagName); // returns "div"</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536438%28VS.85%29.aspx MSDN - getElementsByName Method
		 * @see http://developer.mozilla.org/en/DOM/document.getElementsByName MDC - Document.getElementsByName()
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-71555259 W3C - HTMLDocument.getElementsByName()
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function getElementsByName(elementName:DOMString):NodeList { return null; };
		
		/**
		 * Return the contents of selected text in the current document.
		 * 
		 * @return The selected text
		 * 
		 * @example
		 * <listing>
		 * &lt;INPUT TYPE="BUTTON" NAME="selectString" VALUE="Show <br>
		 * any highlighted text" onClick="alert('The following text is <br>
		 * selected:\n'+document.getSelection());"&gt; </listing>
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.getSelection MDC - Document.getSelection()
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function getSelection():DOMString { return null; };
		
		/**
		 * The hasFocus method returns true if the focus is currently located anywhere inside the specified document.
		 * 
		 * @return Returns true if the document has focus; otherwise, returns false.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536447%28VS.85%29.aspx MSDN - hasFocus Method
		 * @see http://developer.mozilla.org/en/DOM/document.hasFocus MDC - Document.hasFocus()
		 * @see http://www.whatwg.org/specs/web-apps/current-work/#dom-document-hasfocus WHATWG - HTMLDocument.hasFocus()
		 * 
		 * @playerversion HTML 5
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0b_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0a_unknown
		 */
		public function hasFocus():Boolean { return false; };
		
		/**
		 * The opposite of document.captureEvents( ), this method turns off event capture at the document level for 
		 * one or more specific events named in the parameter list.
		 * 
		 * @param	eventTypeList A comma-separated list of case-sensitive event types as derived from the available 
		 * Event object constants, such as Event.CLICK or Event.MOUSEMOVE.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.releaseEvents MDC - Document.releaseEvents()
		 * 
		 * @playerversion Non-Standard Mozilla
		 * @playerversion Obsolete 0
		 */
		public function releaseEvents(eventTypeList:DOMString):void { };
		
		/**
		 * Used inside an event handler function, this method lets the event pass to its intended target object.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/document.routeEvent MDC - Document.routeEvent()
		 * 
		 * @playerversion Non-Standard Mozilla
		 * @playerversion Obsolete 0
		 */
		public function routeEvent(event:Event):void { };
		
		/**
		 * Open a document stream for writing. If a document exists in the target, 
		 * this method clears it.
		 * 
		 * <p><strong>Note (IE):</strong> All params are for IE only</p>
		 * 
		 * <p><strong>Note:</strong> This method and the ones following allow a user to add to or 
		 * replace the structure model of a document using strings of unparsed 
		 * HTML. At the time of writing alternate methods for providing similar 
		 * functionality for both HTML and XML documents were being considered.</p>
		 * 
		 * <p><strong>Note (Mozilla):</strong> Also, an automatic document.open() call happens when 
		 * document.write() is called after the page has loaded, but that's not defined in the W3C specification. </p>
		 * 
		 * <p><strong>IE Style</strong></p>
		 * 
		 * <p>Opens a new window and loads a document specified by a given URL. Also, opens a new window that uses the 
		 * <code>url</code> parameter and the <code>name</code> parameter to collect the output of the  write method and the  writeln method.</p>
		 * 
		 * @param	url When a new document is opened, <code>url</code> is a String that specifies a MIME type for the document. 
		 * When a new window is opened, <code>url</code> is a String that specifies the URL to render in the new window. If a <code>url</code> 
		 * is not specified, a new window with about:blank is displayed.
		 * @default text/html (Currently the only MIME type supported for this method.)
		 * @param	name 	Optional. When a new document is opened, specify the String replace for <code>name</code> to specify 
		 * that the new document replaces the current document in the history list. If the replace value is not specified 
		 * when you open a document, a new entry is added to the history list. When a window is opened, this is a String 
		 * that specifies the name of the window. The value of this parameter can be specified as the value of the  TARGET 
		 * attribute for a  form or an  a element. This value defines this new window as the location to load a document. 
		 * <table class="innertable">
		 * 	<tr><th>Value</th><th>Description</th></tr>
		 * 	<tr>
		 * 		<td>replace</td><td>This value is only used to open a new document, and specifies that the new document replaces the current entry in the history list. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>_blank</td><td>When a window is opened, the <code>url</code> is loaded into a new, unnamed window.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>_parent</td><td>When a new window is opened, the <code>url</code> is loaded into the current frame's parent. If the frame has no parent, this value acts as the value _self. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>_search</td><td>Disabled in Windows Internet Explorer 7, see  Security and Compatibility in Internet Explorer 7 for details. Otherwise, when a window is opened, the <code>url</code> is opened in the browser's search pane in Microsoft Internet Explorer 5 or later. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>_self</td><td>When a window id opened, the current document is replaced with the specified <code>url</code>.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>_top</td><td><code>url</code> replaces any framesets that are loaded. If there are no framesets defined, this value acts as the _self value.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>_media</td><td>The <code>url</code> is loaded in the Media Bar in Internet Explorer 6. Windows XP Service Pack 2 (SP2) and later. This feature is no longer supported. By default the <code>url</code> is loaded into a new browser window or tab.</td>
		 * 	</tr>
		 * </table>
		 * @param	features 	Optional. A list of comma-separated items. Each item consists of an option and a value, separated 
		 * by an equals sign (=), for example, "fullscreen=yes, toolbar=yes". The following features are supported.
		 * <table class="innertable">
		 * 	<tr><th>Value</th><th>Description</th></tr>
		 * 	<tr>
		 * 		<td>channelmode = { yes | no | 1 | 0 }</td><td>Specifies whether to display the window in theater mode. The default is no. Internet Explorer 7. channelmode = { yes | 1 } overrides the height value, the width value, the top value, and the left value. When active, the Navigation Bar is hidden, and the Title Bar is visible. The Channel Band is no longer supported in Internet Explorer 7. Prior to Internet Explorer 7 channelmode = { yes | 1 } displays the Channel Band in theatre mode. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>directories = { yes | no | 1 | 0 }</td><td>Specifies whether to add directory buttons. The default is yes. Internet Explorer 7. This feature is no longer supported. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>fullscreen = { yes | no | 1 | 0 }</td><td>Specifies whether to display the browser in full-screen mode. The default is no. Use full-screen mode carefully. Because this mode hides the browser's title bar and menus, you should always provide a button or other visual clue to help the user close the window. ALT+F4 closes the new window. Internet Explorer 7. A window in full-screen mode does not have to be in theatre mode. Prior to Internet Explorer 7, a window in full-screen mode must in theater mode (channelmode).</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>height = number</td><td>Internet Explorer 7. Sets the height of the window in pixels. The minimum value is 150, and specifies the minimum height of the browser content area. Prior to Internet Explorer 7, the minimum height value is 100. </td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>left = number</td><td>Specifies the left position, in pixels. This value is relative to the upper-left corner of the screen. The value must be greater than or equal to zero.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>location = { yes | no | 1 | 0 }</td><td>Internet Explorer 7. Specifies whether to display the navigation bar. The default is yes. Prior to Internet Explorer 7, this feature specifies whether to display the address bar. The Back command, the Forward command, and the Stop command are now located in the Navigation bar. Prior to Internet Explorer 7, navigation commands were located in the toolbar.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>menubar = { yes | no | 1 | 0 }</td><td>Specifies whether to display the menu bar. The default is yes. Internet Explorer 7. By default the menu bar is hidden, unless it is revealed by the ALT key. menubar = { no | 0 } prohibits the menubar from appearing even when the ALT key is pressed. The combination of menubar = { no | 0 } and toolbar = { no | 0 } hides the toolbar and disables any additional third-party user interfaces. </td>
		 * 	</tr>
		 * <tr>
		 * 		<td>resizable = { yes | no | 1 | 0 }</td><td>Specifies whether to display resize handles at the corners of the window. The default is yes. Internet Explorer 7. resizable = { no | 0 } disables tabs in a new window.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>scrollbars = { yes | no | 1 | 0 }</td><td>Specifies whether to display horizontal and vertical scroll bars. The default is yes.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>status = { yes | no | 1 | 0 }</td><td>Specifies whether to add a Status Bar at the bottom of the window. The default is yes.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>titlebar = { yes | no | 1 | 0 }</td><td>Specifies whether to display a Title Bar for the window. The default is yes. Internet Explorer 5.5 and later. This feature is no longer supported. The Title Bar remains visible unless the fullscreen sFeature is active. This parameter is ignored prior to Internet Explorer 5.5. It applies only if the calling application is an HTML Application or a trusted dialog box.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>toolbar = { yes | no | 1 | 0 }</td><td>Internet Explorer 7. Specifies whether to display the browser command bar, making buttons such as Favorites Center, Add to Favorites, and Tools available. The default is yes. The combination of menubar = { no | 0 } and toolbar = { no | 0 } turns off the Toolbar and any additional third-party user interfaces. Prior to Internet Explorer 7, the toolbar sFeature specifies whether to display the browser toolbar, making buttons such as Back, Forward, and Stop available. </td>
		 * 	</tr>
		 * <tr>
		 * 		<td>top = number</td><td>Specifies the top position, in pixels. This value is relative to the upper-left corner of the screen. The value must be greater than or equal to zero.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>width = number</td><td>Internet Explorer 7. Sets the width of the window in pixels. The minimum value is 250, and specifies the minimum width of the browser content area. Prior to Internet Explorer 7, the minimum height value is 100. </td>
		 * 	</tr>
		 * </table>
		 * @param	replace Optional. When the <code>url</code> is loaded into the same window, this Boolean parameter specifies whether the <code>url</code> creates a new entry or replaces the current entry in the window's history list. 
		 * @return Returns a reference to the new  document object or the  window object. Use this reference to access properties and methods of the new document or window.
		 * 
		 * @example
		 * W3C / Mozilla Example
		 * <listing>
		 * // In this example, the document contents are 
		 * // overwritten as the document 
		 * // is reinitialized on open(). 
		 * document.write("&lt;html&gt;&lt;p&gt;remove me&lt;/p&gt;&lt;/html&gt;"); 
		 * document.open(); 
		 * // document is empty.</listing>
		 * 
		 * <p><strong>IE Style</strong></p>
		 * <p>The following example shows how to use the open method to replace the current document with a new document and display the HTML markup contained in the variable sMarkup. </p>
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;First Document&lt;/title&gt;
		 * &lt;script&gt;
		 * function replace(){
		 * 	var oNewDoc = document.open("text/html", "replace");
		 * 	var sMarkup = "&lt;html&gt;&lt;head&gt;&lt;title&gt;New Document&lt;/title&gt;&lt;/head&gt;&lt;body&gt;Hello, world&lt;/body&gt;&lt;/html&gt;";
		 * 	oNewDoc.write(sMarkup);
		 * 	oNewDoc.close();
		 * }
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * &lt;body&gt;
		 * &lt;h1&gt;I just want to say&lt;/h1&gt;&lt;br&gt;
		 * &lt;!--Button will call the replace function and replace the current page with a new one--&gt;
		 * &lt;input type ="button" value = "Finish Sentence" onclick="replace();"&gt;
		 * &lt;/body&gt;
		 * 
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536652%28VS.85%29.aspx MSDN - open Method
		 * @see http://developer.mozilla.org/en/DOM/document.open MDC - Document.open()
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-72161170 W3C - HTMLDocument.open()
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function open(url:DOMString, name:DOMString, features:DOMString, replace:Boolean):* { };
		
		/**
		 * Determines whether the given command can be executed on the document in its current state. 
		 * 
		 * <p><strong>Note (IE):</strong> Using  queryCommandEnabled ("delete") on a  TextRange object returns true, while  
		 * queryCommandEnabled ("delete") on a  document object returns false. However,  execCommand ("delete") can still 
		 * be used to delete the selected text. </p>
		 * 
		 * @param cmdId Specifies a command identifier.
		 * @return True if successful, or an error value otherwise.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536676%28VS.85%29.aspx MSDN - queryCommandEnabled Method
		 * @see http://developer.mozilla.org/en/Document.queryCommandEnabled MDC - Document.queryCommandEnabled()
		 * @see http://msdn.microsoft.com/en-us/library/ms533049%28VS.85%29.aspx MSDN - Command Identifiers
		 * @see http://developer.mozilla.org/en/Rich-Text_Editing_in_Mozilla#Executing_Commands MDC - Executing Commands
		 * @see http://developer.mozilla.org/en/Midas#Supported_Commands MDC - Supported Commands
		 * 
		 * @playerversion Non-Standard Microsoft/Mozilla
		 */
		public function queryCommandEnabled(cmdId:DOMString):Boolean { return false; };
		
		/**
		 * Determines whether the current selection is in an indetermined state. 
		 * 
		 * @param cmdId Specifies a command identifier.
		 * @return True if successful, or an error value otherwise.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa752630%28VS.85%29.aspx MSDN - IHTMLDocument2::queryCommandIndeterm Method
		 * @see http://developer.mozilla.org/en/Document.queryCommandEnabled MDC - Document.queryCommandIndeterm()
		 * @see http://msdn.microsoft.com/en-us/library/ms533049%28VS.85%29.aspx MSDN - Command Identifiers
		 * @see http://developer.mozilla.org/en/Rich-Text_Editing_in_Mozilla#Executing_Commands MDC - Executing Commands
		 * @see http://developer.mozilla.org/en/Midas#Supported_Commands MDC - Supported Commands
		 * 
		 * @playerversion Non-Standard Microsoft/Mozilla
		 */
		public function queryCommandIndeterm(cmdId:DOMString):Boolean { return false; };
		
		/**
		 * Determines whether the given command has been executed on the current selection. 
		 * 
		 * @param cmdId Specifies a command identifier.
		 * @return True if the command has been completed; false if the command has not completed; null if the state cannot be accurately determined.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa752631%28VS.85%29.aspx MSDN - IHTMLDocument2::queryCommandState Method
		 * @see http://developer.mozilla.org/en/Document.queryCommandEnabled MDC - Document.queryCommandState()
		 * @see http://msdn.microsoft.com/en-us/library/ms533049%28VS.85%29.aspx MSDN - Command Identifiers
		 * @see http://developer.mozilla.org/en/Rich-Text_Editing_in_Mozilla#Executing_Commands MDC - Executing Commands
		 * @see http://developer.mozilla.org/en/Midas#Supported_Commands MDC - Supported Commands
		 * 
		 * @playerversion Non-Standard Microsoft/Mozilla
		 */
		public function queryCommandState(cmdId:DOMString):Boolean { return false; };
		
		/**
		 * Returns a Boolean value that indicates whether the current command is supported on the current range.
		 * 
		 * @param cmdId Specifies a command identifier.
		 * @return True if successful, or an error value otherwise.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa752632%28VS.85%29.aspx MSDN - IHTMLDocument2::queryCommandSupported Method
		 * @see http://developer.mozilla.org/en/Document.queryCommandEnabled MDC - Document.queryCommandSupported()
		 * @see http://msdn.microsoft.com/en-us/library/ms533049%28VS.85%29.aspx MSDN - Command Identifiers
		 * @see http://developer.mozilla.org/en/Rich-Text_Editing_in_Mozilla#Executing_Commands MDC - Executing Commands
		 * @see http://developer.mozilla.org/en/Midas#Supported_Commands MDC - Supported Commands
		 * 
		 * @playerversion Non-Standard Microsoft/Mozilla
		 */
		public function queryCommandSupported(cmdId:DOMString):Boolean { return false; };
		
		/**
		 * Retrieves the string associated with a command.
		 * 
		 * @param cmdId Specifies a command identifier.
		 * @return The text associated with the command will be stored. 
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa752633%28VS.85%29.aspx MSDN - IHTMLDocument2::queryCommandText Method
		 * @see http://developer.mozilla.org/en/Document.queryCommandEnabled MDC - Document.queryCommandText()
		 * @see http://msdn.microsoft.com/en-us/library/ms533049%28VS.85%29.aspx MSDN - Command Identifiers
		 * @see http://developer.mozilla.org/en/Rich-Text_Editing_in_Mozilla#Executing_Commands MDC - Executing Commands
		 * @see http://developer.mozilla.org/en/Midas#Supported_Commands MDC - Supported Commands
		 * 
		 * @playerversion Non-Standard Microsoft/Mozilla
		 */
		public function queryCommandText(cmdId:DOMString):DOMString { return null; };
		
		/**
		 * Determines the current value of the document, range, or current selection for the given command. 
		 * 
		 * @param cmdId Specifies a command identifier.
		 * @return True if successful, or an error value otherwise.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/aa752634%28VS.85%29.aspx MSDN - IHTMLDocument2::queryCommandValue Method
		 * @see http://developer.mozilla.org/en/Document.queryCommandEnabled MDC - Document.queryCommandValue()
		 * @see http://msdn.microsoft.com/en-us/library/ms533049%28VS.85%29.aspx MSDN - Command Identifiers
		 * @see http://developer.mozilla.org/en/Rich-Text_Editing_in_Mozilla#Executing_Commands MDC - Executing Commands
		 * @see http://developer.mozilla.org/en/Midas#Supported_Commands MDC - Supported Commands
		 * 
		 * @playerversion Non-Standard Microsoft/Mozilla
		 */
		public function queryCommandValue(cmdId:DOMString):* { return null; };
		
		/**
		 * Recalculates all dynamic properties in the current document.
		 * 
		 * <p><strong>Note:</strong> Implicit dependencies, internal property changes, and related properties can cause 
		 * some expressions not to recalculate, even though the referenced properties might have changed. For example, 
		 * resizing the main window changes the  clientWidth property. Expressions that reference  clientWidth might not 
		 * be recalculated, because the change might not be recognized.</p>
		 * 
		 * <p><strong>Note:</strong> Implicit dependencies refer to properties that can be modified by changes in other 
		 * properties. For example, the  height property of a  div object implicitly depends on the  innerHTML property of 
		 * the div object. However, if an expression references the height property, a change in the innerHTML property, 
		 * which might modify the height, does not cause a recalculation of the expression on a subsequent call to recalc.</p>
		 * 
		 * <p><strong>Note:</strong> Related properties can access or manipulate data or behaviors through one or more other 
		 * properties. For example,  pixelLeft and  posLeft can set or get the left position of the element. However, if an 
		 * expression that references pixelLeft and posLeft is modified, the expression might not be recalculated on subsequent 
		 * calls to recalc.</p>
		 * 
		 * <p><strong>Note:</strong> Related properties that can cause this behavior include the following:  clientHeight,  
		 * clientLeft,  clientTop, clientWidth, height,  left,  offsetHeight,  offsetLeft,  offsetTop,  offsetWidth,  
		 * pixelHeight, pixelLeft,  pixelTop,  pixelWidth,  posHeight, posLeft,  posTop,  posWidth, and  top.</p>
		 * 
		 * <p><strong>Note:</strong> To force the recalculation of all expressions, refer to the same property name or manually 
		 * call recalc(true).</p>
		 * 
		 * @param forceAll Optional. A Boolean that specifies one of the following values. 
		 * @default false
		 * 
		 * @example
		 * The following example uses the recalc method in HTML and script to help create a timer. If the calls to recalc are commented out, the timer does not work correctly.
		 * <listing>
		 * &lt;HTML&gt;
		 * &lt;HEAD&gt; 
		 * &lt;TITLE&gt;Recalc Example&lt;/TITLE&gt;
		 * &lt;STYLE&gt;
		 * BUTTON {font-size:14;width:150}
		 * &lt;/STYLE&gt;
		 * &lt;SCRIPT&gt;
		 * 
		 * 
		 * var timerID = null;
		 * var seconds = 0;
		 * 
		 * //
		 * // This function is called when the page loads. 
		 * // It sets up a couple of expressions.
		 * //
		 * function init() {
		 * 	A.style.setExpression("width","seconds*10");
		 * 	B.setExpression("innerText","seconds.toString()");
		 * }
		 * 
		 * //
		 * // This function gets calls once a second and updates the seconds
		 * // variable. Notice that without recalc, the expressions aren't
		 * // updated until the mouse is moved.
		 * //
		 * function timer() {
		 * 	seconds++;
		 * 	document.recalc();
		 * }
		 * 
		 * //
		 * // starts the timer
		 * //
		 * function starttimer() {
		 * 	if (timerID == null) {
		 * 		timerID = setInterval("timer()", 1000);
		 * 		startButton.disabled = true;
		 * 		stopButton.disabled = false;
		 * 	}
		 * }
		 * 
		 * //
		 * // stops the timer
		 * //
		 * function stoptimer() {
		 * 	if (timerID != null) {
		 * 		clearInterval(timerID);
		 * 		timerID = null;
		 * 		startButton.disabled = false;
		 * 		stopButton.disabled = true;
		 * 	}
		 * }
		 * 
		 * //
		 * //  resets the timer
		 * //
		 * function resettimer() {
		 * 	seconds = 0;
		 * }
		 * 
		 * &lt;/SCRIPT&gt;
		 * &lt;/HEAD&gt;
		 * &lt;BODY onload="init()"&gt;
		 * 
		 * &lt;DIV id=A style="background-color:lightblue" &gt;&lt;/DIV&gt;
		 * &lt;DIV id=B style="color:hotpink;font-weight:bold"&gt;&lt;/DIV&gt;
		 * 
		 * &lt;BR&gt;
		 * 
		 * &lt;BUTTON id="startButton" onclick="starttimer()"&gt;Start the Timer&lt;/BUTTON&gt;&lt;/BR&gt;
		 * &lt;BUTTON id="stopButton" DISABLED="true" onclick="stoptimer()"&gt;Stop the Timer&lt;/BUTTON&gt;&lt;BR&gt;
		 * &lt;BUTTON id="resetButton" onclick="resettimer()"&gt;Reset the Timer&lt;/BUTTON&gt;&lt;BR&gt;
		 * 
		 * &lt;P style="width:320;color:peru;background-color:wheat"&gt;
		 * 
		 * This example illustrates the use of document.recalc().  If the calls
		 * to recalc are omitted in this example, expressions will not be updated 
		 * until the mouse is moved.
		 * &lt;/P&gt;
		 * 
		 * &lt;/BODY&gt;
		 * &lt;/HTML&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536689%28VS.85%29.aspx MSDN - releaseCapture Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0b_unknown
		 */
		public function recalc(forceAll:Boolean):void { };
		
		/**
		 * Removes mouse capture from the object in the current document.
		 * 
		 * <p>For releaseCapture to have an effect, you must set mouse capture through 
		 * the setCapture method.</p>
		 * 
		 * <p>You can invoke the releaseCapture method on the document object. The 
		 * releaseCapture method makes it unnecessary to determine which element 
		 * has capture to programmatically release it. Other actions that release 
		 * document capture include displaying a modal dialog box and switching 
		 * focus to another application or browser window.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;BODY onload="oOwnCapture.setCapture();" onclick="document.releaseCapture();">
		 * &lt;DIV ID=oOwnCapture onmousemove="oWriteLocation.value = event.clientX + event.clientY"; onlosecapture="alert(event.srcElement.id + ' has lost mouse capture.')">
		 * &lt;TEXTAREA ID=oWriteLocation COLS=2>&lt;/TEXTAREA>
		 * &lt;/DIV>
		 * &lt;HR>
		 * &lt;DIV ID=oNoCapture>
		 * &lt;P>Click the document to invoke the releaseCapture method.&lt;/P>
		 * &lt;/DIV>
		 * &lt;/BODY></listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536689%28VS.85%29.aspx MSDN - releaseCapture Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * 
		 * @productversion IE 5.5
		 * @productversion IE 6.0
		 * @productversion IE 7.0
		 * @productversion IE 8.0_as_IE7
		 * @productversion IE 8.0_as_IE8
		 * @productversion Firefox 2.0_unknown
		 * @productversion Firefox 3.0_unknown
		 * @productversion Firefox 3.5_unknown
		 * @productversion Safari 3.0_unknown
		 * @productversion Safari 3.1_unknown
		 * @productversion Safari 4.0_unknown
		 * @productversion Chrome 1.0_unknown
		 * @productversion Chrome 2.0_unknown
		 * @productversion Opera 9.62_unknown
		 * @productversion Opera 10.0b_unknown
		 */
		public function releaseCapture():void { };
		
		/**
		 * Removes the object from the document hierarchy.
		 * 
		 * <p>This property is accessible at run time. If elements are removed at 
		 * run time, before the closing tag is parsed, areas of the document 
		 * might not render.</p>
		 * 
		 * @param	removeChildren If the childNodes collection of the object is removed
		 * @return	Returns a reference to the object that is removed.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536708%28VS.85%29.aspx MSDN - removeNode Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function removeNode(removeChildren:Boolean = false):Node { return null; };
		
		/**
		 * Replaces the object with another element.
		 * 
		 * <p>When a node is replaced, all values that are associated with the 
		 * replaced object are removed. For example, if a b object is replaced 
		 * with an i object, any attributes and text between the opening and 
		 * closing tags are also replaced. To preserve these values, copy them 
		 * to the new element before the original object is replaced.</p>
		 * 
		 * <p>This method is accessible at run time. If elements are removed at run 
		 * time before the closing tag is parsed, areas of the document might 
		 * not render.</p>
		 * 
		 * @param	newNode Specifies the new element to replace the object.
		 * @return Returns a reference to the object that is replaced.
		 * @example
		 * <listing>
		 * &lt;SCRIPT>
		 * function fnReplace() {
		 * var sPreserve = oList.innerHTML;
		 * var oNewNode = document.createElement("OL");
		 * oList.replaceNode(oNewNode);
		 * oNewNode.innerHTML = sPreserve;
		 * }
		 * &lt;/SCRIPT>
		 * 
		 * &lt;UL ID = oList>
		 * &lt;LI>List Item 1
		 * &lt;LI>List Item 2
		 * &lt;LI>List Item 3
		 * &lt;LI>List Item 4
		 * &lt;/UL>
		 * &lt;INPUT TYPE = button VALUE = "Replace List" onclick = "fnReplace()"></listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536719%28VS.85%29.aspx MSDN - replaceNode Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function replaceNode(newNode:Node):Node { return null; };
		
		/**
		 * Exchanges the location of two objects in the document hierarchy.
		 * 
		 * <p>This method is accessible at run time. If elements are removed at 
		 * run time, before the closing tag is parsed, areas of the document 
		 * might not render.</p>
		 * 
		 * @param	node Specifies the existing element.
		 * @return Returns a reference to the object that invoked the method.
		 * @example
		 * <listing>
		 * &lt;script&gt;
		 * 		function fnSwap() {
		 * 			oList.children(0).swapNode(oList.children(1));
		 * 		}
		 * &lt;/script&gt;
		 * 
		 * &lt;ul ID = oList&gt;
		 * 		&lt;li&gt;List Item 1&lt;/li&gt;
		 * 		&lt;li&gt;List Item 2&lt;/li&gt;
		 * 		&lt;li&gt;List Item 3&lt;/li&gt;
		 * 		&lt;li&gt;List Item 4&lt;/li&gt;
		 * &lt;/ul&gt;
		 * &lt;input type=button value="Swap List" onclick="fnSwap()"&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536774%28VS.85%29.aspx MSDN - swapNode Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function swapNode(node:Node):Node { return null; };
		
		/**
		 * Write a string of text to a document stream opened by open(). Note that 
		 * the function will produce a document which is not necessarily driven by 
		 * a DTD and therefore might be produce an invalid result in the context 
		 * of the document.
		 * 
		 * <p><strong>Note (Mozilla):</strong> Writing to a document that has already loaded without calling 
		 * document.open() will automatically perform a document.open call. Once you have finished 
		 * writing, it is recommended to call document.close(), to tell the browser to finish loading 
		 * the page. The text you write is parsed into the document's structure model. In the example 
		 * above, the h1 element becomes a node in the document.</p>
		 * 
		 * <p><strong>Note (Mozilla):</strong> If the document.write() call is embedded directly in the HTML code, 
		 * then it will not call document.open(). For example:
		 * <listing>
		 * &lt;div&gt; 
		 * 	&lt;script type="text/javascript"&gt; 
		 * 		document.write("&lt;h1&gt;Main title&lt;/h1&gt;") 
		 * 	&lt;/script&gt; 
		 * &lt;/div&gt;</listing>
		 * </p>
		 * 
		 * @param	text The string to be parsed into some structure in the 
		 * document structure model.
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * 
		 * &lt;head&gt;
		 * &lt;title&gt;write example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function newContent() {
		 * 	alert("load new content");
		 * 	document.open();
		 * 	document.write("&lt;h1&gt;Out with the old - in with the new!&lt;/h1&gt;");
		 * 	document.close();
		 * }
		 * 
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onload="newContent();"&gt;
		 * 	&lt;p&gt;Some original document content.&lt;/p&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536782%28VS.85%29.aspx MSDN - write Method
		 * @see http://developer.mozilla.org/en/DOM/document.write MDC - Document.write()
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-75233634 W3C - HTMLDocument.write()
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function write(text:DOMString):void { };
		
		/**
		 * Write a string of text followed by a newline character to a document 
		 * stream opened by open(). Note that the function will produce a 
		 * document which is not necessarily driven by a DTD and therefore 
		 * might be produce an invalid result in the context of the document.
		 * 
		 * <p><strong>Note:</strong> document.writeln is the same as document.write but adds a newline. </p>
		 * 
		 * @param	text The string to be parsed into some structure in the 
		 * document structure model.
		 * 
		 * @example
		 * <listing>document.writeln("&lt;p&gt;enter password:&lt;/p&gt;"); </listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536783%28VS.85%29.aspx MSDN - writeln Method
		 * @see http://developer.mozilla.org/en/DOM/document.writeln MDC - Document.writeln()
		 * @see http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-35318390 W3C - HTMLDocument.writeln()
		 * 
		 * @playerversion DOMHTML 1
		 * @since DOMHTML 1
		 */
		public function writeln(text:DOMString):void { };
		
		/* INTERFACE dom.xpath.XPathEvaluator */
		
		/**
		 * @inheritDoc
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.createExpression MDC - Document.createExpression()
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathEvaluator-createExpression W3C - XPathEvaluator.createExpression()
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function createExpression(expression:DOMString, resolver:XPathNSResolver):XPathExpression { return null; };
		
		/**
		 * @inheritDoc 
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.createNSResolver MDC - Document.createNSResolver()
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathEvaluator-createNSResolver W3C - XPathEvaluator.createNSResolver()
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function createNSResolver(nodeResolver:Node):XPathNSResolver { return null; };
		
		/**
		 * @inheritDoc 
		 * 
		 * @example
		 * <listing>
		 * var headings = document.evaluate("//h2", document, null, XPathResult.ANY_TYPE, null); 
		 * /~~ Search the document for all h2 elements.  
		 *  ~~ The result will likely be an unordered node iterator. ~~/
		 * var thisHeading = headings.iterateNext(); 
		 * var alertText = "Level 2 headings in this document are:\n";
		 * while (thisHeading) {
		 * 	alertText += thisHeading.textContent + "\n";
		 * 	thisHeading = headings.iterateNext();
		 * }
		 * alert(alertText); // Alerts the text of all h2 elements</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/document.evaluate MDC - Document.evaluate()
		 * @see http://www.w3.org/TR/DOM-Level-3-XPath/xpath.html#XPathEvaluator-evaluate W3C - XPathEvaluator.evaluate()
		 * 
		 * @playerversion DOMXPath 3
		 * @since DOMXPath 3
		 */
		public function evaluate(expression:DOMString, contextNode:Node, resolver:XPathNSResolver, type:Number, result:DOMObject):DOMObject { return null; };
	}
}