package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * A MIME type (Multipart Internet Mail Extension) supported by the client.
	 * 
	 * @see http://developer.mozilla.org/en/Navigator.mimeTypes MDC - window.navigator.mimeTypes
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 */
	public class MimeType {
		
		/**
		 * A description of the MIME type.
		 * 
		 * @example <listing>"Adobe Flash movie"</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.mimeTypes MDC - window.navigator.mimeTypes
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get description():DOMString { return null; };
		
		/**
		 * Reference to the Plugin object configured for the MIME type.
		 * 
		 * @example
		 * <listing>
		 * // Can we display Shockwave movies?
		 * var mimetype = navigator.mimeTypes["application/x-director"];
		 * if (mimetype) {
		 * 	// Yes, so can we display with a plug-in?
		 * 	var plugin = mimetype.enabledPlugin;
		 * 	if (plugin) {
		 * 		// Yes, so show the data in-line
		 * 		document.writeln("Here's a movie: &lt;EMBED SRC=mymovie.dir HEIGHT=100 WIDTH=100&gt;");
		 * 	} else {
		 * 		// No, so provide a link to the data
		 * 		document.writeln("&lt;A HREF='mymovie.dir'&gt;Click here&lt;/A&gt; to see a movie.");
		 * 	}
		 * } else {
		 * 	// No, so tell them so
		 * 	document.writeln("Sorry, can't show you this cool movie.");
		 * }</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.mimeTypes MDC - window.navigator.mimeTypes
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get enabledPlugin():Plugin { return null; };
		
		/**
		 * A string listing possible filename extensions for the MIME type, for example "mpeg, mpg, mpe, mpv, vbs, mpegv".
		 * 
		 * @example <listing>"swf"</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.mimeTypes MDC - window.navigator.mimeTypes
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get suffixes():DOMString { return null; };
		
		/**
		 * The name of the MIME type, for example "video/mpeg" or "audio/x-wav".
		 * 
		 * @example <listing>"application/x-shockwave-flash"</listing>
		 * 
		 * @see http://developer.mozilla.org/en/Navigator.mimeTypes MDC - window.navigator.mimeTypes
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get type():DOMString { return null; };
	}
}