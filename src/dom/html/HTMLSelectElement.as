package dom.html {
	
	import dom.core.types.DOMString;
	import dom.html.objects.HTMLOptionsCollection;
	import dom.html.HTMLFormElement;
	
	/**
	 * The select element allows the selection of an option. The contained options 
	 * can be directly accessed through the select element as a collection. See 
	 * the SELECT element definition in HTML 4.01.
	 * 
	 * http://www.w3.org/TR/DOM-Level-2-HTML/html.html#ID-40676705
	 */
	public class HTMLSelectElement extends HTMLElement {
		
		/**
		 * The control is unavailable in this context. See the disabled attribute 
		 * definition in HTML 4.01.
		 */
		public function get disabled():Boolean { return false; };
		public function set disabled(value:Boolean):void { };
		
		/**
		 * Returns the FORM element containing this control. Returns null if this 
		 * control is not within the context of a form.
		 */
		public function get form():HTMLFormElement { return null; };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * The number of options in this SELECT.
		 * 
		 * @throws dom.core.DOMException NOT_SUPPORTED_ERR: if setting the length 
		 * is not allowed by the implementation.
		 */
		public function get length():Number { return 0; };
		public function set length(value:Number):void { };
		
		/**
		 * If true, multiple OPTION elements may be selected in this SELECT. See 
		 * the multiple attribute definition in HTML 4.01.
		 */
		public function get multiple():Boolean { return false; };
		public function set multiple(value:Boolean):void { };
		
		/**
		 * Form control or object name when submitted with a form. See the name 
		 * attribute definition in HTML 4.01.
		 */
		public function get name():DOMString { return null; };
		public function set name(value:DOMString):void { };
		
		/**
		 * The onblur event occurs when an element loses focus either by the pointing device or by tabbing navigation.
		 */
		public function get onblur():Function { return null; };
		public function set onblur(value:Function):void { };
		
		/**
		 * The onchange event occurs when a control loses the input focus and its value has been modified since gaining focus.
		 */
		public function get onchange():Function { return null; };
		public function set onchange(value:Function):void { };
		
		/**
		 * The onfocus event occurs when an element receives focus either by the pointing device or by tabbing navigation.
		 */
		public function get onfocus():Function { return null; };
		public function set onfocus(value:Function):void { };
		
		/**
		 * Modified in DOM Level 2
		 * 
		 * The collection of OPTION elements contained by this element.
		 */
		public function get options():HTMLOptionsCollection { return null; };
		
		/**
		 * The ordinal index of the selected option, starting from 0. The value 
		 * -1 is returned if no element is selected. If multiple options are 
		 * selected, the index of the first selected option is returned.
		 */
		public function get selectedIndex():Number { return 0; };
		public function set selectedIndex(value:Number):void { };
		
		/**
		 * Number of visible rows. See the size attribute definition in HTML 4.01.
		 */
		public function get size():Number { return 0; };
		public function set size(value:Number):void { };
		
		/**
		 * Gets/sets the tab order of the current element. 
		 * 
		 * @example
		 * b1 = document.getElementById("button1"); 
		 * b1.tabIndex = 1;
		 */
		public function get tabIndex():Number { return 0; };
		public function set tabIndex(value:Number):void { };
		
		/**
		 * The type of this form control. This is the string "select-multiple" when 
		 * the multiple attribute is true and the string "select-one" when false.
		 */
		public function get type():DOMString { return null; };
		
		/**
		 * The current form control value (i.e. the value of the currently selected 
		 * option), if multiple options are selected this is the value of the first 
		 * selected option.
		 */
		public function get value():DOMString { return null; };
		public function set value(value:DOMString):void { };
		
		/**
		 * Add a new element to the collection of OPTION elements for this SELECT. 
		 * This method is the equivalent of the appendChild method of the Node 
		 * interface if the before parameter is null. It is equivalent to the 
		 * insertBefore method on the parent of before in all other cases. This 
		 * method may have no effect if the new element is not an OPTION or 
		 * an OPTGROUP. 
		 * 
		 * @throws dom.core.DOMException NOT_FOUND_ERR: Raised if before is not a 
		 * descendant of the SELECT element.
		 * 
		 * @param	element The element to add.
		 * @param	before The element to insert before, or null for the tail 
		 * of the list.
		 */
		public function add(element:HTMLElement, before:HTMLElement):void { };
		
		/**
		 * Causes the element to lose focus and fires the onblur event.
		 * 
		 * This method shifts focus away from the element it is applied 
		 * to but does not set focus on the next element in the tab order.
		 * 
		 * <strong>IE</strong>
		 * In Microsoft Internet Explorer 5 and greater, elements that expose 
		 * the blur method must have the TABINDEX attribute set.
		 */
		public function blur():void { };
		
		/**
		 * Causes the element to receive the focus and executes the code specified 
		 * by the onfocus event.
		 * 
		 * This method fires the onfocus event.
		 * 
		 * As of Microsoft Internet Explorer 5, elements that expose the focus method 
		 * must have the TABINDEX attribute set.
		 * 
		 * Elements cannot receive focus until the document finishes loading.
		 */
		public function focus():void { };
		
		/**
		 * Remove an element from the collection of OPTION elements for this 
		 * SELECT. Does nothing if no element has the given index. 
		 * 
		 * @param	index The index of the item to remove, starting from 0.
		 */
		public function remove(index:Number):void { };
	}
}