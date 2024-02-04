package dom.loadsave {
	
	import dom.core.Document;
	import dom.core.DOMConfiguration;
	import dom.core.Node;
	import dom.core.types.DOMString;
	import dom.loadsave.types.LSInputStream;
	
	/**
	 * An interface to an object that is able to build, or augment, a DOM tree from various input sources. 
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser W3C - LSParser
	 * 
	 * @playerversion DOMLS 3
	 * @since DOMLS 3
	 */
	public class LSParser {
		
		/**
		 * Append the result of the parse operation as children of the context node. For this action to work, 
		 * the context node must be an Element or a DocumentFragment. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-ACTION_APPEND_AS_CHILDREN
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const ACTION_APPEND_AS_CHILDREN:Number = 1;
		
		/**
		 * Insert the result of the parse operation as the immediately following sibling of the context node. 
		 * For this action to work the context node's parent must be an Element or a DocumentFragment. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-ACTION_INSERT_AFTER
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const ACTION_INSERT_AFTER:Number = 4;
		
		/**
		 * Insert the result of the parse operation as the immediately preceding sibling of the context node. 
		 * For this action to work the context node's parent must be an Element or a DocumentFragment.  
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-ACTION_INSERT_BEFORE
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const ACTION_INSERT_BEFORE:Number = 3;
		
		/**
		 * Replace the context node with the result of the parse operation. For this action to work, the 
		 * context node must have a parent, and the parent must be an Element or a DocumentFragment.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-ACTION_REPLACE
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const ACTION_REPLACE:Number = 5;
		
		/**
		 * Replace all the children of the context node with the result of the parse operation. For this 
		 * action to work, the context node must be an Element, a Document, or a DocumentFragment. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-ACTION_REPLACE_CHILDREN
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public static const ACTION_REPLACE_CHILDREN:Number = 2;
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-async
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function get async():Boolean { return false; };
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-busy
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function get busy():Boolean { return false; };
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-config
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function get domConfig():DOMConfiguration { return null; };
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-filter
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function get filter():LSParserFilter { return null; };
		
		/**
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-abort
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function abort():void { };
		
		/**
		 * 
		 * @return
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-parse
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function parse():Document { return null; };
		
		/**
		 * 
		 * @param	input
		 * @param	contextArg
		 * @param	action
		 * @return
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-parseWithContext
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function parseWithContext(input:LSInputStream, contextArg:Node, action:Number):Node { return null; };
		
		/**
		 * 
		 * @param	uri
		 * @return
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-LS/load-save.html#LS-LSParser-parseURI
		 * 
		 * @playerversion DOMLS 3
		 * @since DOMLS 3
		 */
		public function parseURI(uri:DOMString):Document { return null; };
	}
}