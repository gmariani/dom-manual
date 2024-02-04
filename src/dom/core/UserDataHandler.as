package dom.core {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	/**
	 * When associating user data with a key on a node, Node.setUserData()
	 * can also accept, in its third argument, a handler which will be 
	 * called when the object is cloned, imported, deleted, renamed, or 
	 * adopted. Per the specification, exceptions should not be thrown in 
	 * a UserDataHandler. In both document.importNode() and Node.cloneNode(), 
	 * although user data is not copied over, the handler will be called. 
	 * 
	 * @see http://developer.mozilla.org/En/DOM/UserDataHandler MDC - UserDataHandler
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#UserDataHandler W3C - UserDataHandler
	 * 
	 * @playerversion DOMCore 3
	 * @since DOMCore 3
	 */
	public class UserDataHandler {
		
		/**
		 * The node is cloned, using Node.cloneNode().
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const NODE_CLONED:Number = 1;
		
		/**
		 * The node is imported, using Document.importNode().
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const NODE_IMPORTED:Number = 2;
		
		/**
		 * The node is deleted.
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const NODE_DELETED:Number = 3;
		
		/**
		 * The node is renamed, using Document.renameNode().
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const NODE_RENAMED:Number = 4;
		
		/**
		 * The node is adopted, using Document.adoptNode().
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public static const NODE_ADOPTED:Number = 5;
		
		/**
		 * This method is called whenever the node for which this handler is 
		 * registered is imported or cloned.
		 * 
		 * @param	operation Specifies the type of operation that is being performed on the node.
		 * @param	key Specifies the key for which this handler is being called. 
		 * @param	data Specifies the data for which this handler is being called. 
		 * @param	src Specifies the node being cloned, adopted, imported, or renamed. This is null when the node is being deleted.
		 * @param	dst Specifies the node newly created if any, or null.
		 * 
		 * @see http://developer.mozilla.org/En/DOM/UserDataHandler.handle MDC - UserDataHandler.handle()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-handleUserDataEvent W3C - UserDataHandler.handle()
		 * 
		 * @playerversion DOMCore 3
		 * @since DOMCore 3
		 */
		public function handle(operation:Number, key:DOMString, data:Object, src:Node, dst:Node):void { };
	}
}