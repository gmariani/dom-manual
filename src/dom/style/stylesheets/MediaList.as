package dom.style.stylesheets {
	
	import dom.core.types.DOMString;
	
	/**
	 * The MediaList interface provides the abstraction of an ordered collection of media, without 
	 * defining or constraining how this collection is implemented. An empty list is the same as 
	 * a list that contains the medium "all".
	 * 
	 * The items in the MediaList are accessible via an integral index, starting from 0.
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-MediaList W3C - DOM Level 2 Style: MediaList
	 * 
	 * @playerversion DOMStyle 2
	 * @since DOMCore 2
	 */
	public class MediaList {
		
		/**
		 * The number of media in the list. The range of valid media is 0 to length-1 inclusive.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-MediaList W3C - DOM Level 2 Style: length Property
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get length():Number { return 0; };
		
		/**
		 * The parsable textual representation of the media list. This is a comma-separated list of media.
		 * 
		 * @throws dom.core.DOMException SYNTAX_ERR: Raised if the specified string value has a syntax error and is unparsable.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this list is readonly.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-MediaList W3C - DOM Level 2 Style: mediaText Property
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function get mediaText():DOMString { return null; };
		
		/**
		 * Adds the medium newMedium to the end of the list. If the newMedium is already used, it is first removed. 
		 * 
		 * @throws dom.core.DOMException INVALID_CHARACTER_ERR: If the medium contains characters that are 
		 * invalid in the underlying style language.
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this list is readonly.
		 * 
		 * @param	newMedium The new medium to add.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-MediaList W3C - DOM Level 2 Style: appendMedium Method
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function appendMedium(newMedium:DOMString):void { };
		
		/**
		 * Deletes the medium indicated by oldMedium from the list. 
		 * 
		 * @throws dom.core.DOMException NO_MODIFICATION_ALLOWED_ERR: Raised if this list is readonly.
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised if oldMedium is not in the list.
		 * 
		 * @param	oldMedium The medium to delete in the media list.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-2-Style/stylesheets.html#StyleSheets-MediaList W3C - DOM Level 2 Style: deleteMedium Method
		 * 
		 * @playerversion DOMStyle 2
		 * @since DOMCore 2
		 */
		public function deleteMedium(oldMedium:DOMString):void { };
	}
}