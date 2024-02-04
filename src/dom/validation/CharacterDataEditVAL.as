package dom.validation {
	
	import dom.core.types.DOMString;
	
	/**
	 * When validating CharacterData nodes, the NodeEditVAL.nodeValidity  operation must find the nearest parent node 
	 * in order to do this; if no parent node is found, VAL_UNKNOWN  is returned. In addition, when VAL_INCOMPLETE  
	 * is passed in as an argument to the NodeEditVAL.nodeValidity operation to operate on such nodes, the operation 
	 * considers all the text and not just some of it. 
	 * 
	 * <p>An object implementing this interface must also implement CharacterData interface.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-CharacterDataEditVAL W3C - CharacterDataEditVAL
	 * 
	 * @playerversion DOMVAL 3
	 * @since DOMVAL 3
	 */
	public interface CharacterDataEditVAL extends NodeEditVAL {
		
		/**
		 * Determines if character data is only whitespace. 
		 * 
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-CharacterDataEditVAL-isWhitespaceOnly W3C - CharacterDataEditVAL.isWhitespaceOnly()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function isWhitespaceOnly():Number;
		
		/**
		 * Determines if character data can be set.
		 * 
		 * @param	arg Argument to be set.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-CharacterDataEditVAL-canSetData W3C - CharacterDataEditVAL.canSetData()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canSetData(arg:DOMString):Number;
		
		/**
		 * Determines if character data can be appended.
		 *  
		 * @param	arg Data to be appended.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-CharacterDataEditVAL-canAppendData W3C - CharacterDataEditVAL.canAppendData()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canAppendData(arg:DOMString):Number;
		
		/**
		 * Determines if character data can be replaced.
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified offset is negative or greater than the number of 16-bit units in data, or if the specified count is negative. 
		 * 
		 * @param	offset Offset.
		 * @param	count Replacement.
		 * @param	arg Argument to be set.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-CharacterDataEditVAL-canReplaceData W3C - CharacterDataEditVAL.canReplaceData()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canReplaceData(offset:Number, count:Number, arg:DOMString):Number;
		
		/**
		 * Determines if character data can be inserted.
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified offset is negative or greater than the number of 16-bit units in data. 
		 * 
		 * @param	offset Offset.
		 * @param	arg Argument to be set.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-CharacterDataEditVAL-canInsertData W3C - CharacterDataEditVAL.canInsertData()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canInsertData(offset:Number, arg:DOMString):Number;
		
		/**
		 * Determines if character data can be deleted.
		 * 
		 * @throws dom.core.DOMException INDEX_SIZE_ERR: Raised if the specified offset is negative or greater than the number of 16-bit units in data, or if the specified count is negative. 
		 * 
		 * @param	offset Offset.
		 * @param	count Number of 16-bit units to delete.
		 * @return A validation state constant. 
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Val/validation.html#VAL-Interfaces-CharacterDataEditVAL-canDeleteData W3C - CharacterDataEditVAL.canDeleteData()
		 * @see dom.validation.ValidationState
		 * 
		 * @playerversion DOMVAL 3
		 * @since DOMVAL 3
		 */
		function canDeleteData(offset:Number, count:Number):Number;
	}
}