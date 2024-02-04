package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * Contains a list of Plugins objects loaded in the browser. 
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms537477%28VS.85%29.aspx# MSDN - plugins Collection
	 * @see http://developer.mozilla.org/en/Navigator.plugins MDC - window.navigator.plugins
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 */
	public class PluginArray {
		
		/**
		 * The number of Plugins in the array.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms534101%28VS.85%29.aspx MSDN - length Property
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function get length():Number { return 0; };
		
		/**
		 * Retrieves a Plugins by index.
		 * 
		 * @param	index Index of the Plugins
		 * @return The specified Plugins
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536460%28VS.85%29.aspx MSDN - item Method
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function item(index:Number):Plugin { return null; };
		
		/**
		 * Retrives a Plugins by name.
		 * 
		 * @param	name Name of the Plugins
		 * @return The specified Plugins
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536634%28VS.85%29.aspx MSDN - namedItem Method
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function nameItem(name:DOMString):Plugin { return null; };
		
		/**
		 * Undocumented
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function refresh():void {  };
		
		/**
		 * Retrieves a collection of objects that have the specified HTML tag name. 
		 * 
		 * @example
		 * <listing>var coll = document.all.tags("p");</listing>
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms536776%28VS.85%29.aspx MSDN - tags Method
		 * 
		 * @playerversion Non-Standard Microsoft
		 */
		public function tags():void {  };
	}
}