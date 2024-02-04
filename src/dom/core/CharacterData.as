package dom.core {
	
	import dom.core.Node;
	import dom.core.types.DOMString;
	
	//--------------------------------------
    //  Events
    //--------------------------------------
	
	/**
	 * A node has been added as a child of another node or, in case of Attr 
	 * nodes, has been added to an Element. This event is dispatched after 
	 * the insertion has taken place. The target node of this event is the 
	 * node being inserted.
	 *
	 * @eventType DOMNodeInserted
	 */
	[Event(name = "DOMNodeInserted", type = "dom.events.MutationEvent")]
	
	/**
	 * A node is being removed from its parent node or, in case of Attr nodes, 
	 * removed from its ownerElement. This event is dispatched before the 
	 * removal takes place. The target node of this event is the node 
	 * being removed.
	 *
	 * @eventType DOMNodeRemoved
	 */
	[Event(name = "DOMNodeRemoved", type = "dom.events.MutationEvent")]
	
	/**
	 * A node is being removed from a document, either through direct removal 
	 * of the node or removal of a subtree in which it is contained; Attr nodes 
	 * are considered part of an Element's subtree. This event is dispatched 
	 * before the removal takes place. The target node of this event type is 
	 * the node being removed. If the node is being directly removed, the event 
	 * type DOMNodeRemoved occurs before this event type.
	 *
	 * @eventType DOMNodeRemovedFromDocument
	 */
	[Event(name = "DOMNodeRemovedFromDocument", type = "dom.events.MutationEvent")]
	
	/**
	 * A node has been inserted into a document, either through direct insertion 
	 * of the node or insertion of a subtree in which it is contained; Attr nodes 
	 * are considered part of an Element's subtree. This event is dispatched 
	 * after the insertion has taken place. The target node of this event is the 
	 * node being inserted. If the node is being directly inserted, the event type 
	 * DOMNodeInserted occurs before this event type.
	 *
	 * @eventType DOMNodeInsertedIntoDocument
	 */
	[Event(name = "DOMNodeInsertedIntoDocument", type = "dom.events.MutationEvent")]
	
	/**
	 * Occurs after CharacterData.data or ProcessingInstruction.data have been
	 * modified but the node itself has not been inserted or deleted. The target 
	 * node of this event is the CharacterData node or the 
	 * ProcessingInstruction node.
	 *
	 * @eventType DOMCharacterDataModified
	 */
	[Event(name = "DOMCharacterDataModified", type = "dom.events.MutationEvent")]
	
	/**
	 * Provides text manipulation methods that are used by several objects.
	 * 
	 * @see http://msdn.microsoft.com/en-us/library/ms767515%28VS.85%29.aspx MSDN - IXMLDOMCharacterData
	 * @see http://developer.mozilla.org/En/DOM/CharacterData MDC - CharacterData
	 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-FF21A306 W3C - CharacterData
	 * 
	 * @playerversion DOMCore 1
	 * @since DOMCore 1
	 */
	public class CharacterData extends Node {
		
		/**
		 * The character data of the node that implements this interface.
		 * 
		 * <p>The DOM implementation may not put arbitrary limits on the amount of data 
		 * that may be stored in a CharacterData node. However, implementation 
		 * limits may mean that the entirety of a node's data may not fit into 
		 * a single DOMString. In such cases, the user may call substringData 
		 * to retrieve the data in appropriately sized pieces.</p>
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised when 
		 * the node is readonly.
		 * 
		 * @throws dom.core.DOMException DOMSTRING_SIZE_ERR: Raised when it would 
		 * return more characters than fit in a DOMString variable on the 
		 * implementation platform.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms765506%28VS.85%29.aspx MSDN - data Property (IXMLDOMCharacterData)
		 * @see http://developer.mozilla.org/En/DOM/CharacterData.data MDC - CharacterData.data
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-72AB8359 W3C - CharacterData.data
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get data():DOMString { return null; };
		public function set data(value:DOMString):void { };
		
		/**
		 * The number of 16-bit units that are available through data and the 
		 * substringData method below. This may have the value zero, i.e., 
		 * CharacterData nodes may be empty.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms760351%28VS.85%29.aspx MSDN - length Property (IXMLDOMCharacterData)
		 * @see http://developer.mozilla.org/En/DOM/CharacterData.length MDC - CharacterData.length
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-7D61178C W3C - CharacterData.length
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function get length():Number { return 0; };
		
		/**
		 * Append the string to the end of the character data of the node. 
		 * Upon success, data provides access to the concatenation of data and 
		 * the DOMString specified.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @param	arg The DOMString to append.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms756985%28VS.85%29.aspx MSDN - appendData Method
		 * @see http://developer.mozilla.org/En/DOM/CharacterData.appendData MDC - CharacterData.appendData()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-32791A2F W3C - CharacterData.appendData()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function appendData(arg:DOMString):void { };
		
		/**
		 * Remove a range of 16-bit units  from the node. Upon success, data and 
		 * length reflect the change.
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified 
		 * offset is negative or greater than the number of 16-bit units in data,
		 * or if the specified count is negative.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @param	offset The offset from which to start removing.
		 * @param	count The number of 16-bit units to delete. If the sum of offset 
		 * and count exceeds length then all 16-bit units from offset  to the end of 
		 * the data are deleted.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms754600%28VS.85%29.aspx MSDN - deleteData Method
		 * @see http://developer.mozilla.org/En/DOM/CharacterData.deleteData MDC - CharacterData.deleteData()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-7C603781 W3C - CharacterData.deleteData()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function deleteData(offset:Number, count:Number):void { };
		
		/**
		 * Insert a string at the specified 16-bit unit offset.
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified 
		 * offset is negative or greater than the number of 16-bit units in data.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @param	offset The character offset at which to insert.
		 * @param	arg The DOMString to insert.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms762794%28VS.85%29.aspx MSDN - insertData Method
		 * @see http://developer.mozilla.org/En/DOM/CharacterData.insertData MDC - CharacterData.insertData()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-3EDB695F W3C - CharacterData.insertData()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function insertData(offset:Number, arg:DOMString):void { };
		
		/**
		 * Replace the characters starting at the specified 16-bit unit offset 
		 * with the specified string.
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified 
		 * offset is negative or greater than the number of 16-bit units in data, 
		 * or if the specified count is negative.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if 
		 * this node is readonly.
		 * 
		 * @param	offset The offset from which to start replacing.
		 * @param	count The number of 16-bit units to replace. If the sum of 
		 * offset and count exceeds length, then all 16-bit units to the end of 
		 * the data are replaced; (i.e., the effect is the same as a remove 
		 * method call with the same range, followed by an append method invocation).
		 * @param	arg The DOMString with which the range must be replaced.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms766416%28VS.85%29.aspx MSDN - replaceData Method
		 * @see http://developer.mozilla.org/En/DOM/CharacterData.replaceData MDC - CharacterData.replaceData()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-E5CBA7FB W3C - CharacterData.replaceData()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function replaceData(offset:Number, count:Number, arg:DOMString):void { };
		
		/**
		 * Extracts a range of data from the node.
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified 
		 * offset is negative or greater than the number of 16-bit units in data, 
		 * or if the specified count is negative.
		 * 
		 * @throws dom.core.DOMException DOMSTRING_SIZE_ERR: Raised if the specified 
		 * range of text does not fit into a DOMString.
		 * 
		 * @param	offset Start offset of substring to extract.
		 * @param	count The number of 16-bit units to extract.
		 * @return The specified substring. If the sum of offset and count exceeds 
		 * the length, then all 16-bit units to the end of the data are returned.
		 * 
		 * @see http://msdn.microsoft.com/en-us/library/ms755744%28VS.85%29.aspx MSDN - substringData Method
		 * @see http://developer.mozilla.org/En/DOM/CharacterData.substringData MDC - CharacterData.substringData()
		 * @see http://www.w3.org/TR/DOM-Level-3-Core/core.html#ID-6531BCCF W3C - CharacterData.substringData()
		 * 
		 * @playerversion DOMCore 1
		 * @since DOMCore 1
		 */
		public function substringData(offset:Number, count:Number):DOMString { return null; };
	}
}