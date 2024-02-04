package dom.objects {
	
	import dom.core.types.DOMString;
	
	/**
	 * A plug-in module installed on the client.
	 * 
	 * <p>A plug-in is a software module that the browser can invoke to display specialized types of 
	 * embedded data within the browser. The user can obtain a list of installed plug-ins by choosing 
	 * About Plug-ins from the Help menu.</p>
	 * 
	 * <p>Each Plugin object is itself array containing one element for each MIME type supported by the 
	 * plug-in. Each element of the array is a MimeType object. For example, the following code displays 
	 * the type and description properties of the first Plugin object's first MimeType object.</p>
	 * 
	 * <listing>
	 * myPlugin=navigator.plugins[0]
	 * myMimeType=myPlugin[0]
	 * document.writeln('myMimeType.type is ',myMimeType.type,"&lt;BR&gt;")
	 * document.writeln('myMimeType.description is ',myMimeType.description</listing>
	 * 
	 * <p>The preceding code displays output similar to the following:</p>
	 * 
	 * <listing>
	 * myMimeType.type is video/quicktime
	 * myMimeType.description is QuickTime for Windows </listing>
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 */
	public class Plugin {
		
		/**
		 * A description of the plug-in.
		 * 
		 * @example <listing>3.0.40624.0</listing>
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get description():DOMString { return null; };
		
		/**
		 * Name of the plug-in file on disk.
		 * 
		 * @example <listing>npctrl.dll</listing>
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get filename():DOMString { return null; };
		
		/**
		 * Number of elements in the plug-in's array of MimeType objects.
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get length():DOMString { return null; };
		
		/**
		 * 	Name of the plug-in.
		 * 
		 * @example <listing>Silverlight Plug-In</listing>
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get name():DOMString { return null; };
		
		/**
		 * Retrieves a MimeType by index.
		 * 
		 * @param	index Index of the MimeType
		 * @return The specified MimeType
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536460%28VS.85%29.aspx MSDN - item Method
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function item(index:Number):MimeType { return null; };
		
		/**
		 * Retrives a MimeType by name.
		 * 
		 * @param	name Name of the MimeType
		 * @return The specified MimeType
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536634%28VS.85%29.aspx MSDN - namedItem Method
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function nameItem(name:DOMString):MimeType { return null; };
	}
}