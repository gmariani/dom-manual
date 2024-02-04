package gecko.dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * @internal http://developer.mozilla.org/en/DOM/window.sidebar
	 */
	public class Sidebar {
		
		/**
		 * Note: the third empty parameter is required! 
		 * 
		 * @param	title
		 * @param	contentURL
		 * @param	customizeURL
		 */
		public function addPanel(title:DOMString, contentURL:DOMString, customizeURL:DOMString):void { };
		
		/**
		 * 
		 * @param	title
		 * @param	contentURL
		 * @param	customizeURL
		 */
		public function addPersistentPanel(title:DOMString, contentURL:DOMString, customizeURL:DOMString):void { };
		
		/**
		 * Installs a search engine.
		 * 
		 * @param	engineURL
		 * @param	iconURL
		 * @param	suggestedTitle
		 * @param	suggestedCategory
		 */
		public function addSearchEngine(engineURL:DOMString, iconURL:DOMString, suggestedTitle:DOMString, suggestedCategory:DOMString):void { };
		
		/**
		 * <strong>Firefox 2+</strong>
		 * 
		 * Installs a microsummary generator.
		 * 
		 * @param	generatorURL
		 */
		public function addMicrosummaryGenerator(generatorURL:DOMString):void { };
	}
}