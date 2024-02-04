package gecko {
	import dom.core.types.DOMString;
	
	/**
	 * nsIURI is an interface for an uniform resource identifier with 
	 * internationalization support, offering attributes that allow setting 
	 * and querying the basic components of a URI, and methods for 
	 * performing basic operations on URIs.
	 */
	public class nsIURI {
		
		/**
		 * Returns a string representation of the URI. Setting the spec causes 
		 * the new spec to be parsed using the rules for the scheme the URI 
		 * currently has. If the string cannot be parsed as a URI, 
		 * NS_ERROR_MALFORMED_URI thrown.
		 * 
		 * If the URI stores information from the nsIIOService  interface's 
		 * newURI()  call that created it, other than just the parsed string, 
		 * the behavior of this information when setting the spec attribute 
		 * is undefined.
		 */
		public function get spec():DOMString { return null; };
		public function set spec(value:DOMString):void { };
		
		/**
		 * The prePath returns the string before the path (such as 
		 * "scheme://user:password@host : port"). This is useful for authentication 
		 * or managing sessions.
		 * 
		 * Note: Some characters may be escaped.
		 */
		public function get prePath():DOMString { return null; };
		
		/**
		 * The scheme is the protocol to which this URI refers. The scheme is 
		 * restricted to the US-ASCII charset per RFC2396.
		 */
		public function get scheme():DOMString { return null; };
		public function set scheme(value:DOMString):void { };
		
		/**
		 * The "username:password" (or username only if the value doesn't 
		 * contain a ':').
		 * 
		 * Note: Some characters may be escaped.
		 */
		public function get userPass():DOMString { return null; };
		public function set userPass(value:DOMString):void { };
		
		/**
		 * The optional username, assuming the preHost consists of 
		 * "username:password".
		 * 
		 * Note: Some characters may be escaped.
		 */
		public function get username():DOMString { return null; };
		public function set username(value:DOMString):void { };
		
		/**
		 * The optional password, assuming the preHost consists of 
		 * "username:password".
		 * 
		 * Note: Some characters may be escaped.
		 */
		public function get password():DOMString { return null; };
		public function set password(value:DOMString):void { };
		
		/**
		 * The "host : port" part of the URI (or simply the host, if port is -1).
		 * 
		 * Note: Characters are not escaped.
		 */
		public function get hostPort():DOMString { return null; };
		public function set hostPort(value:DOMString):void { };
		
		/**
		 * The host is the Internet domain name to which this URI refers. It 
		 * could be an IPv4 (or IPv6) address literal. If supported, it could 
		 * be a non-ASCII internationalized domain name.
		 * 
		 * Note: Characters are not escaped.
		 */
		public function get host():DOMString { return null; };
		public function set host(value:DOMString):void { };
		
		/**
		 * The URI's port. A port value of -1 corresponds to the protocol's 
		 * default port (eg. -1 implies port 80 for HTTP URIs).
		 */
		public function get port():Number { return 0; };
		public function set port(value:Number):void { };
		
		/**
		 * The path, typically including at least a leading '/' (but may also 
		 * be empty, depending on the protocol).
		 * 
		 * Note: Some characters may be escaped.
		 */
		public function get path():DOMString { return null; };
		public function set path(value:DOMString):void { };
		
		/**
		 * The URI spec with an ASCII compatible encoding. The host portion 
		 * follows the IDNA draft spec. Other parts are URL-escaped per the 
		 * rules of RFC2396. The result is strictly ASCII.
		 */
		public function get asciiSpec():DOMString { return null; };
		
		/**
		 * The URI host with an ASCII compatible encoding. Follows the IDNA 
		 * draft spec for converting internationalized domain names (UTF-8) 
		 * to ASCII for compatibility with existing Internet infrasture.
		 */
		public function get asciiHost():DOMString { return null; };
		
		/**
		 * The charset of the document from which this URI originated. An 
		 * empty value implies UTF-8.
		 * 
		 * If this value is something other than UTF-8 then the URI components 
		 * (e.g., spec, prePath, username, etc.) are all fully URL-escaped. 
		 * Otherwise, the URI components may contain unescaped multibyte 
		 * UTF-8 characters.
		 */
		public function get originCharset():DOMString { return null; };
		
		/**
		 * Clones the URI, returning a new nsIURI object.
		 * 
		 * @return An nsIURI object that represents the same URI as the current 
		 * nsIURI.
		 */
		public function clone():nsIURI { return null; };
		
		/**
		 * Compares the current URI with another URI, returning true if the two 
		 * represent the same location.
		 * 
		 * Note: This is more than a string comparison, as two different URI 
		 * strings can represent the same location.  For example, comparing 
		 * "http://foo.com:80/" and "http://foo.com/" will return true.
		 * 
		 * @param	other Another nsIURI to compare to. 
		 * @return If the two URIs represent the same location
		 */
		public function equals(other:DOMString):Boolean { return false; };
		
		/**
		 * Quickly reports whether the nsIURI represents a URI with the specified 
		 * scheme.  This comparison is case-insensitive.
		 * 
		 * Note: This is an optimization, allowing you to check the scheme of the 
		 * URI without having to get the scheme and do the comparison yourself; 
		 * this saves memory allocations.
		 * 
		 * @param	scheme A string representing the scheme to compare to. 
		 * @return If the URI is for the specified scheme
		 */
		public function schemeIs(scheme:DOMString):Boolean { return false; };
		
		/**
		 * Resolves a relative URI string, using this URI as the base.
		 * 
		 * @param	relativePath The relative path to resolve. 
		 * @return The resolved absolute URI string.
		 */
		public function resolve(relativePath:DOMString):DOMString { return null; };
	}
}