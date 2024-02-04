package dom.events {
	
	import dom.core.types.DOMString;
	import dom.views.AbstractView;
	
	/**
	 * The KeyEvent interface provides specific contextual information associated with Key Events.
	 * 
	 * The detail attribute inherited from UIEvent is used to indicated the number of keypresses 
	 * which have occurred during key repetition. If this information is not available this value 
	 * should be 0.
	 * 
	 * <p><strong>Note:</strong> This is from DOM 3 Events Working Draft 10 (April 2001) and has since been deprecated in Working Draft 21 (December 2007)</p>
	 * 
	 * @see http://developer.mozilla.org/en/DOM/Event/UIEvent/KeyEvent MDC - KeyEvent
	 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-KeyEvent W3C - DOM 3 Events: KeyEvent
	 * 
	 * @playerversion DOMEvents 3
	 * @since DOMEvents 3
	 */
	public class KeyEvent extends UIEvent {
		
		// VirtualKeyCode
		/**
		 * Used for key events which do not have a virtual key code available.
		 */
		public static const DOM_VK_UNDEFINED:Number = 0;
		
		/**
		 * This key is a modifier key
		 */
		public static const DOM_VK_RIGHT_ALT:Number = 1;
		
		/**
		 * This key is a modifier key
		 */
		public static const DOM_VK_LEFT_ALT:Number = 2;
		
		/**
		 * This key is a modifier key
		 */
		public static const DOM_VK_LEFT_CONTROL:Number = 3;
		
		/**
		 * This key is a modifier key
		 */
		public static const DOM_VK_RIGHT_CONTROL:Number = 4;
		
		/**
		 * This key is a modifier key
		 */
		public static const DOM_VK_LEFT_SHIFT:Number = 5;
		
		/**
		 * This key is a modifier key
		 */
		public static const DOM_VK_RIGHT_SHIFT:Number = 6;
		
		/**
		 * This key is a modifier key
		 */
		public static const DOM_VK_LEFT_META:Number = 7;
		
		/**
		 * This key is a modifier key
		 */
		public static const DOM_VK_RIGHT_META:Number = 8;
		public static const DOM_VK_CAPS_LOCK:Number = 9;
		public static const DOM_VK_DELETE:Number = 10;
		public static const DOM_VK_END:Number = 11;
		public static const DOM_VK_ENTER:Number = 12;
		public static const DOM_VK_ESCAPE:Number = 13;
		public static const DOM_VK_HOME:Number = 14;
		public static const DOM_VK_INSERT:Number = 15;
		public static const DOM_VK_NUM_LOCK:Number = 16;
		public static const DOM_VK_PAUSE:Number = 17;
		public static const DOM_VK_PRINTSCREEN:Number = 18;
		public static const DOM_VK_SCROLL_LOCK:Number = 19;
		public static const DOM_VK_LEFT:Number = 20;
		public static const DOM_VK_RIGHT:Number = 21;
		public static const DOM_VK_UP:Number = 22;
		public static const DOM_VK_DOWN:Number = 23;
		public static const DOM_VK_PAGE_DOWN:Number = 24;
		public static const DOM_VK_PAGE_UP:Number = 25;
		
		/**
		 * Constant for the F1 function key.
		 */
		public static const DOM_VK_F1:Number = 26;
		
		/**
		 * Constant for the F2 function key.
		 */
		public static const DOM_VK_F2:Number = 27;
		
		/**
		 * Constant for the F3 function key.
		 */
		public static const DOM_VK_F3:Number = 28;
		
		/**
		 * Constant for the F4 function key.
		 */
		public static const DOM_VK_F4:Number = 29;
		
		/**
		 * Constant for the F5 function key.
		 */
		public static const DOM_VK_F5:Number = 30;
		
		/**
		 * Constant for the F6 function key.
		 */
		public static const DOM_VK_F6:Number = 31;
		
		/**
		 * Constant for the F7 function key.
		 */
		public static const DOM_VK_F7:Number = 32;
		
		/**
		 * Constant for the F8 function key.
		 */
		public static const DOM_VK_F8:Number = 33;
		
		/**
		 * Constant for the F9 function key.
		 */
		public static const DOM_VK_F9:Number = 34;
		
		/**
		 * Constant for the F10 function key.
		 */
		public static const DOM_VK_F10:Number = 35;
		
		/**
		 * Constant for the F11 function key.
		 */
		public static const DOM_VK_F11:Number = 36;
		
		/**
		 * Constant for the F12 function key.
		 */
		public static const DOM_VK_F12:Number = 37;
		
		/**
		 * Constant for the F13 function key.
		 */
		public static const DOM_VK_F13:Number = 38;
		
		/**
		 * Constant for the F14 function key.
		 */
		public static const DOM_VK_F14:Number = 39;
		
		/**
		 * Constant for the F15 function key.
		 */
		public static const DOM_VK_F15:Number = 40;
		
		/**
		 * Constant for the F16 function key.
		 */
		public static const DOM_VK_F16:Number = 41;
		
		/**
		 * Constant for the F17 function key.
		 */
		public static const DOM_VK_F17:Number = 42;
		
		/**
		 * Constant for the F18 function key.
		 */
		public static const DOM_VK_F18:Number = 43;
		
		/**
		 * Constant for the F19 function key.
		 */
		public static const DOM_VK_F19:Number = 44;
		
		/**
		 * Constant for the F20 function key.
		 */
		public static const DOM_VK_F20:Number = 45;
		
		/**
		 * Constant for the F21 function key.
		 */
		public static const DOM_VK_F21:Number = 46;
		
		/**
		 * Constant for the F22 function key.
		 */
		public static const DOM_VK_F22:Number = 47;
		
		/**
		 * Constant for the F23 function key.
		 */
		public static const DOM_VK_F23:Number = 48;
		
		/**
		 * Constant for the F24 function key.
		 */
		public static const DOM_VK_F24:Number = 49;
		
		/**
		 * The inputGenerated attribute indicates whether the key event will normally cause visible output. If 
		 * the key event does not generate any visible output, such as the use of a function key or the 
		 * combination of certain modifier keys used in conjunction with another key, then the value will be 
		 * false. If visible output is normally generated by the key event then the value will be true.
		 * 
		 * <p>The value of inputGenerated does not guarantee the creation of a character. If a key event causing 
		 * visible output is cancelable it may be prevented from causing output. This attribute is intended 
		 * primarily to differentiate between keys events which may or may not produce visible output depending 
		 * on the system state.</p>
		 * 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-KeyEvent-inputGenerated W3C - DOM 3 Events: KeyEvent.inputGenerated
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get inputGenerated():Boolean { return false; };
		public function set inputGenerated(value:Boolean):void { };
		
		/**
		 * The value of keyVal holds the value of the Unicode character associated with the depressed key. 
		 * If the key has no Unicode representation or no Unicode character is available the value is 0.
		 * 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-UIEvent-keyVal W3C - DOM 3 Events: KeyEvent.keyVal
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get keyVal():Number { return 0; };
		public function set keyVal(value:Number):void { };
		
		/**
		 * The numPad attribute indicates whether or not the key event was generated on the number pad section 
		 * of the keyboard. If the number pad was used to generate the key event the value is true, otherwise the value is false.
		 * 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-KeyEvent-numPad W3C - DOM 3 Events: KeyEvent.numPad
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get numPad():Boolean { return false; };
		public function set numPad(value:Boolean):void { };
		
		/**
		 * outputString holds the value of the output generated by the key event. This may be a single Unicode 
		 * character or it may be a string. It may also be null in the case where no output was generated by the key event.
		 * 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-UIEvent-outputString W3C - DOM 3 Events: KeyEvent.outputString
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get outputString():DOMString { return null; };
		public function set outputString(value:DOMString):void { };
		
		/**
		 * When the key associated with a key event is not representable via a Unicode character virtKeyVale holds 
		 * the virtual key code associated with the depressed key. If the key has a Unicode representation or no 
		 * virtual code is available the value is DOM_VK_UNDEFINED.
		 * 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-KeyEvent-virtKeyVal W3C - DOM 3 Events: KeyEvent.virtKeyVal
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get virtKeyVal():Number { return 0; };
		public function set virtKeyVal(value:Number):void { };
		
		/**
		 * The CheckModifier method is used to check the status of a single modifier key associated with a KeyEvent. 
		 * The identifier of the modifier in question is passed into the CheckModifier function. If the modifier is 
		 * triggered it will return true. If not, it will return false.
		 * 
		 * <p>The list of keys below represents the allowable modifier paramaters for this method. </p>
		 * <ul>
		 * <li>DOM_VK_LEFT_ALT</li>
		 * <li>DOM_VK_RIGHT_ALT</li>
		 * <li>DOM_VK_LEFT_CONTROL</li>
		 * <li>DOM_VK_RIGHT_CONTROL</li>
		 * <li>DOM_VK_LEFT_SHIFT</li>
		 * <li>DOM_VK_RIGHT_SHIFT</li>
		 * <li>DOM_VK_META</li>
		 * </ul>
		 * 
		 * @param modifer The modifier which the user wishes to query.
		 * 
		 * @return The status of the modifier represented as a boolean.
		 * 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-KeyEvent-checkModifier W3C - DOM 3 Events: KeyEvent.checkModifier()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function checkModifier(modifer:Number):Boolean { return false; };
		
		/**
		 * The initKeyEvent method is used to initialize the value of a MouseEvent created through 
		 * the DocumentEvent interface. This method may only be called before the KeyEvent has been 
		 * dispatched via the dispatchEvent method, though it may be called multiple times during that 
		 * phase if necessary. If called multiple times, the final invocation takes precedence. This 
		 * method has no effect if called after the event has been dispatched. 
		 * 
		 * @param	typeArg Specifies the event type.
		 * @param	canBubbleArg Specifies whether or not the event can bubble.
		 * @param	cancelableArg Specifies whether or not the event's default action can be prevent.
		 * @param	viewArg Specifies the KeyEvent's AbstractView.
		 * @param	detailArg Specifies the number of repeated keypresses, if available.
		 * @param	outputStringArg Specifies the KeyEvent's outputString attribute
		 * @param	keyValArg Specifies the KeyEvent's keyValattribute
		 * @param	virtKeyValArg Specifies the KeyEvent's virtKeyValattribute
		 * @param	inputGeneratedArg Specifies the KeyEvent's inputGeneratedattribute
		 * @param	numPadArg Specifies the KeyEvent's numPadattribute
		 * 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-Event-initKeyEvent W3C - DOM 3 Events: KeyEvent.initKeyEvent()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initKeyEvent(typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean, viewArg:AbstractView, detailArg:Number, outputStringArg:DOMString, keyValArg:Number, virtKeyValArg:Number, inputGeneratedArg:Boolean, numPadArg:Boolean):void { };
		
		/**
		 * The initModifier method is used to initialize the values of any modifiers associated with a KeyEvent 
		 * created through the DocumentEvent interface. This method may only be called before the KeyEvent has 
		 * been dispatched via the dispatchEvent method, though it may be called multiple times during that phase 
		 * if necessary. If called multiple times with the same modifier property the final invocation takes 
		 * precedence. Unless explicitly give a value of true, all modifiers have a value of false. This method 
		 * has no effect if called after the event has been dispatched.
		 * 
		 * <p>The list of keys below represents the allowable modifier paramaters for this method. </p>
		 * 
		 * @param	modifier The modifier which the user wishes to initialize
		 * @param	value The new value of the modifier.
		 * 
		 * @see http://www.w3.org/TR/2001/WD-DOM-Level-3-Events-20010410/DOM3-Events.html#events-Events-KeyEvent-initModifier W3C - DOM 3 Events: KeyEvent.initModifier()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initModifier(modifier:Number, value:Boolean):void { };
	}
}