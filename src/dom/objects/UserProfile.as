package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * Provides methods that allow a script to request read access to and perform read actions on a user's profile information.
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms535915%28VS.85%29.aspx MSDN - userProfile Object
	 * 
	 * @playerversion Non-Standard Microsoft
	 * @playerversion Obsolete IE7
	 */
	public class UserProfile {
		
		/**
		 * Adds an entry to the queue for read requests.
		 * 
		 * <p><strong>Note:</strong> This method appends a vCard name to the read-requests queue. The
		 * read-requests queue is a list of read requests waiting to be initiated. To initiate the accumulated, 
		 * or compound, read requests in the queue, call doReadRequest. To clear the queue, call clearRequest. </p>
		 *  
		 * @param	attributeName Specifies one of the standard vCard names. If anything else is used, the request is ignored and nothing is added to the read-requests queue.
		 * @param	reserved Windows Internet Explorer currently ignores this parameter.
		 * @return True if the request has been successfully added to the queue. False if the attribute name was not recognized or the attribute already appeared in the request queue.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms535929%28VS.85%29.aspx MSDN - addReadRequest Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * @playerversion Obsolete IE7
		 */
		public function addReadRequest(attributeName:DOMString, reserved:* = null):Boolean { return false; };
		
		/**
		 * Clears all requests in the read-requests queue to prepare for new profile-information requests.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536355%28VS.85%29.aspx MSDN - clearRequest Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * @playerversion Obsolete IE7
		 */
		public function clearRequest():void { };
		
		/**
		 * Performs all requests located in the read-requests queue.
		 * 
		 * @param	usageCode Specifies the code that notifies the user of the type of access requested. This usage 
		 * code should be one of the following 13 codes defined by the Internet Privacy Working Group (IPWG).
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>0</td><td>Used for system administration.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>1</td><td>Used for research and product development.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>2</td><td>Used for completion and support of the current transaction.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>3</td><td>Used to customize the content and design of a site.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>4</td><td>Used to improve the content of a site that includes advertisements.</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>5</td><td>Used for notifying visitors about updates to the site.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>6</td><td>Used for contacting visitors for marketing of services or products.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>7</td><td>Used for linking other collected information.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>8</td><td>Used by a site for other purposes.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>9</td><td>Disclosed to others for customization or improvement of the content and design of the site.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>10</td><td>Disclosed to others, who may contact the user, for marketing of services or products.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>11</td><td>Disclosed to others, who may contact the user, for marketing of services or products. The user can ask a site not to do this.</td>
		 * 	</tr>
		 * <tr>
		 * 		<td>12</td><td>Disclosed to others for any other purpose.</td>
		 * 	</tr>
		 * </table>
		 * @param	friendlyName Specifies the display name of the party requesting access to private information. 
		 * For security reasons, it is not sufficient for the user agent to show this display name to the user. In addition 
		 * to display name, the user agent must display the URL that originates the script requesting profile access. If 
		 * this script originates from a secure connection (for example, SSL), the Web author can use the SSL certificate 
		 * to reliably identify the party requesting access.
		 * @param	domain Specifies the pages that the user's choice will apply to in addition to the current page. 
		 * The specification follows the cookie standard.
		 * @param	path Specifies the path to the domain server requesting access. When vExpiration is set, the path is saved with the requested attributes.
		 * @param	expiration Specifies the amount of time the site has requested access to these attributes. This is currently ignored by Windows Internet Explorer.
		 * @param	reserved This parameter is reserved.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536413%28VS.85%29.aspx MSDN - doReadRequest Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * @playerversion Obsolete IE7
		 */
		public function doReadRequest(usageCode:Number, friendlyName:DOMString = null, domain:DOMString = null, path:DOMString = null, expiration:* = null, reserved:* = null):void { };
		
		/**
		 * Returns the value of the named attribute from the userProfile object.
		 * 
		 * <p><strong>Note:</strong> The following schema is used for the field names of the user data store. These names are 
		 * specified when you use the getAttribute method on the userProfile object. Note that the format has changed from 
		 * vCard_xxx to vCard.xxx, and that the older format no longer is supported.</p>
		 * 
		 * <p><strong>Note:</strong> An asterisk (*) denotes extensions to the vCard schema. Extensions are referenced 
		 * as X- elements, as defined in the vCard schema.</p>
		 * 
		 * <table class="innertable">
		 * <tr>
		 * <th colspan="3">vCard Names</th>
		 * </tr>
		 * <tr>
		 * <td>vCard.Business.City</td>
		 * <td>vCard.Business.Country</td>
		 * <td>vCard.Business.Fax</td>
		 * </tr>
		 * <tr>
		 * <td>vCard.Business.Phone</td>
		 * <td>vCard.Business.State</td>
		 * <td>vCard.Business.StreetAddress</td>
		 * </tr>
		 * <tr>
		 * <td>vCard.Business.URL</td>
		 * <td>vCard.Business.Zipcode</td>
		 * <td>vCard.Cellular</td>
		 * </tr>
		 * <tr>
		 * <td>vCard.Company</td>
		 * <td>vCard.Department</td>
		 * <td>vCard.DisplayName</td>
		 * </tr>
		 * <tr>
		 * <td>vCard.Email</td>
		 * <td>vCard.FirstName</td>
		 * <td>vCard.Gender~~</td>
		 * </tr>
		 * <tr>
		 * <td>vCard.Home.City</td>
		 * <td>vCard.Home.Country</td>
		 * <td>vCard.Home.Fax</td>
		 * </tr>
		 * <tr>
		 * <td>vCard.Home.Phone</td>
		 * <td>vCard.Home.State</td>
		 * <td>vCard.Home.StreetAddress</td>
		 * </tr>
		 * <tr>
		 * <td>vCard.Home.Zipcode</td>
		 * <td>vCard.Homepage</td>
		 * <td>vCard.JobTitle</td>
		 * </tr>
		 * <tr>
		 * <td>vCard.LastName</td>
		 * <td>vCard.MiddleName</td>
		 * <td>vCard.Notes</td>
		 * </tr>
		 * <tr>
		 * <td>vCard.Office</td>
		 * <td>vCard.Pager</td>
		 * <td/>
		 * </tr>
		 * </table>
		 * 
		 * @param attributeName One of the standard vCard names listed in Remarks. If one of these names is not used, the request is ignored.
		 * @return Returns a null value if read access for this attribute is not available.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536431%28VS.85%29.aspx MSDN - getAttribute Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * @playerversion Obsolete IE7
		 */
		public function getAttribute(attributeName:DOMString):void { };
		
		/**
		 * Sets the value of the specified attribute.
		 * 
		 * <p><strong>Note (IE8):</strong>  Internet Explorer 8 and later. IE8 mode enables several enhancements to the setAttribute, getAttribute, and 
		 * removeAttribute methods that are not available when pages are displayed in earlier document modes. 
		 * 
		 * <ul>
		 * <li>The attrName parameter requires the name of the desired content attribute and not the Document Object Model (DOM) attribute. 
		 * For example, in IE8 mode, this method no longer requires attrName to be "className" when setting, getting, or removing a CLASS attribute. 
		 * Earlier versions of Internet Explorer and Internet Explorer 8 in compatibility mode still require attrName to specify the corresponding 
		 * DOM property name. </li>
		 * <li>The attrName parameter is not case sensitive. As a result, the iCaseSensitive parameter is no longer supported and should not be used.</li>
		 * <li>The methods support event handlers. For example, the following code example defines an event handler to call a function called SomeFunction 
		 * when the body of the page is loaded. 
		 * <listing>document.body.setAttribute('onload', 'SomeFunction()');</listing></li>
		 * </ul>
		 * 
		 * If the specified attribute is not already present, the setAttribute method adds the attribute to the object and sets the value.
		 * </p>
		 * 
		 * <p><strong>Note:</strong> If your pages are displayed in IE5 mode or IE7 mode, be careful when spelling attribute names. If you 
		 * set caseSensitive to 1 and the attrName parameter does not have the same uppercase and lowercase letters as the attribute, a new 
		 * attribute is created for the object. If two or more attributes have the same name, differing only in case, and caseSensitive is 
		 * set to 0, this method assigns values only to the first attribute created with this name. All other attributes of the same name are ignored.</p>
		 * 
		 * <p><strong>Note (IE8):</strong> Internet Explorer 8 and later. When pages are displayed in IE8 mode, the value parameter only supports 
		 * string values. Non-string values are not automatically converted to string values. For best results, formally convert values to 
		 * strings before using them as parameter values. For example, do not attempt to pass an object directly to the value parameter; 
		 * call the object's toString method instead.</p>
		 * 
		 * @param	attrName The name of the attribute.
		 * @param	value The string, number, or Boolean to assign to the attribute. 
		 * @param	caseSensitive Whether to use a case-sensitive search to locate the attribute. Can be one of the following values: 
		 * <ul>
		 * <li>1 - The case of attrName is respected. </li>
		 * <li>0 - TMatch attrName regardless of case. </li>
		 * </ul>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536431%28VS.85%29.aspx MSDN - getAttribute Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 * @playerversion Obsolete IE7
		 */
		public function setAttribute(attrName:DOMString, value:*, caseSensitive:Number = NaN):void { };
	}
}