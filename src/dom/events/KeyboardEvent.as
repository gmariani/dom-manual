package dom.events {
	
	import dom.core.types.DOMString;
	import dom.events.UIEvent;
	import dom.views.AbstractView;
	
	/**
	 * The KeyboardEvent interface provides specific contextual information 
	 * associated with keyboard devices. Each keyboard event references a key 
	 * using an identifier. Keyboard events are commonly directed at the 
	 * element that has the focus.
	 * 
	 * <p>The KeyboardEvent interface provides convenient attributes for some common 
	 * modifiers keys: KeyboardEvent.ctrlKey, KeyboardEvent.shiftKey, 
	 * KeyboardEvent.altKey, KeyboardEvent.metaKey. These attributes are equivalent 
	 * to using the method KeyboardEvent.getModifierState(keyIdentifierArg) with 
	 * "Control", "Shift", "Alt", or "Meta" respectively.</p>
	 * 
	 * <p>To create an instance of the KeyboardEvent interface, use the 
	 * DocumentEvent.createEvent("KeyboardEvent") method call.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-KeyboardEvent W3C - DOM 3 Events: KeyboardEvent
	 * 
	 * @playerversion DOMEvents 3
	 * @since DOMEvents 3
	 */
	public class KeyboardEvent extends UIEvent {
		
		// Types
		/**
		 * A key is pressed down. 
		 * 
		 * <p>This event type is device dependent and relies on the capabilities of the input devices 
		 * and how they are mapped in the operating system. This event type is generated after the keyboard mapping but 
		 * before the processing of an input method editor. This event should logically happen before the event keyup is 
		 * produced. Whether a keydown contributes or not to the generation of a text event is implementation dependent.</p>
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>Namespace</td><td><code>None</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Cancelable</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Bubbles</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Target</td><td><code>Element</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Context info</td><td>UIEvent.view, KeyboardEvent.keyIdentifier, KeyboardEvent.keyLocation, 
		 * KeyboardEvent.altKey, KeyboardEvent.shiftKey, KeyboardEvent.ctrlKey, and KeyboardEvent.metaKey are in use.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-keydown W3C - DOM 3 Events: KeyboardEvent.keydown
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public static const keydown:String ="keydown";
		
		/**
		 * A key is released. 
		 * 
		 * <p>This event type is device dependent and relies on the capabilities of the input devices and 
		 * how they are mapped in the operating system. This event type is generated after the keyboard mapping but before 
		 * the processing of an input method editor. This event should logically happen after the event keydown is produced.
		 * Whether a keyup contributes or not to the generation of a text event is implementation dependent.</p>
		 * 
		 * <table class="innertable">
		 * 	<tr><th>Title</th><th>Value</th></tr>
		 * 	<tr>
		 * 		<td>Namespace</td><td><code>None</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Cancelable</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Bubbles</td><td>Yes</td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Target</td><td><code>Element</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Context info</td><td>UIEvent.view, KeyboardEvent.keyIdentifier, and KeyboardEvent.keyLocation are in use. 
		 * KeyboardEvent.altKey, KeyboardEvent.shiftKey, KeyboardEvent.ctrlKey, and KeyboardEvent.metaKey are in use unless the 
		 * KeyboardEvent.keyIdentifier corresponds to the key modifier itself.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-keyup W3C - DOM 3 Events: KeyboardEvent.keyup
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public static const keyup:String ="keyup";
		
		/**
		 * The key activation is not distinguished as the left or right version 
		 * of the key, and did not originate from the numeric keypad (or did 
		 * not originate with a virtual key corresponding to the numeric keypad). 
		 * Example: the 'Q' key on a PC 101 Key US keyboard.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#DOM_KEY_LOCATION_STANDARD W3C - DOM 3 Events: KeyboardEvent.DOM_KEY_LOCATION_STANDARD
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public static const DOM_KEY_LOCATION_STANDARD:Number = 0;
		
		/**
		 * The key activated is in the left key location (there is more than one 
		 * possible location for this key). Example: the left Shift key on a PC 
		 * 101 Key US keyboard.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#DOM_KEY_LOCATION_LEFT W3C - DOM 3 Events: KeyboardEvent.DOM_KEY_LOCATION_LEFT
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public static const DOM_KEY_LOCATION_LEFT:Number = 1;
		
		/**
		 * The key activation is in the right key location (there is more than one 
		 * possible location for this key). Example: the right Shift key on a PC 
		 * 101 Key US keyboard.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#DOM_KEY_LOCATION_RIGHT W3C - DOM 3 Events: KeyboardEvent.DOM_KEY_LOCATION_RIGHT
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public static const DOM_KEY_LOCATION_RIGHT :Number = 2;
		
		/**
		 * The key activation originated on the numeric keypad or with a virtual key 
		 * corresponding to the numeric keypad. Example: the '1' key on a PC 101 Key 
		 * US keyboard located on the numeric pad.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#DOM_KEY_LOCATION_NUMPAD W3C - DOM 3 Events: KeyboardEvent.DOM_KEY_LOCATION_NUMPAD
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public static const DOM_KEY_LOCATION_NUMPAD:Number = 3;
		
		/**
		 * If the alternative (Alt) key modifier is activated.
		 * 
		 * <p><strong>Note:</strong> The Option key modifier on Macintosh systems must be represented 
		 * using this key modifier.</p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;altKey example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function showChar(e){
		 * 	alert(
		 * 		"Key Pressed: " + String.fromCharCode(e.charCode) + "\n"
		 * 		+ "charCode: " + e.charCode + "\n"
		 * 		+ "ALT key pressed: " + e.altKey + "\n"
		 * 	);
		 * }
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onkeypress="showChar(event);"&gt;
		 * &lt;p&gt;
		 * Press any character key,
		 * with or without holding down the ALT key.&lt;br /&gt;
		 * You can also use the SHIFT key together with the ALT key.
		 * &lt;/p&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.altKey  MDC - event.altKey
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-KeyboardEvent-altKey W3C - DOM 3 Events: KeyboardEvent.altKey
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get altKey():Boolean { return false; };
		
		/**
		 * Returns the Unicode value of a character key pressed during a keypress event.
		 * 
		 * <p>For constants equivalent to these numeric codes, see KeyEvent.</p>
		 * 
		 * <p><strong>Note:</strong> In a keypress event, the Unicode value of the key pressed is stored in either the 
		 * keyCode or charCode property, never both. If the key pressed generates a character (e.g. 'a'), charCode is 
		 * set to the code of that character, respecting the letter case. (i.e. charCode takes into account whether the 
		 * shift key is held down). Otherwise, the code of the pressed key is stored in keyCode.</p>
		 * 
		 * <p><strong>Note:</strong> charCode is never set in the keydown and keyup events. In these cases, keyCode is 
		 * set instead.</p>
		 * 
		 * <p><strong>Note:</strong> To get the code of the key regardless of whether it was stored in keyCode or 
		 * charCode, query the which property.</p>
		 * 
		 * <p><strong>Note:</strong> Characters entered through an IME do not register through keyCode or charCode. </p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;charCode example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function showChar(e) {
		 * 	alert("Key Pressed: " + String.fromCharCode(e.charCode) + "\n"
		 * 	+ "charCode: " + e.charCode);
		 * }
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onkeypress="showChar(event);"&gt;
		 * &lt;p&gt;Press any 'character' type key.&lt;/p&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.charCode MDC - event.charCode
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get charCode():Boolean { return false; };
		
		/**
		 * If the control (Ctrl) key modifier is activated.
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;ctrlKey example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function showChar(e) {
		 * 	alert(
		 * 		"Key Pressed: " + String.fromCharCode(e.charCode) + "\n"
		 * 		+ "charCode: " + e.charCode + "\n"
		 * 		+ "CTRL key pressed: " + e.ctrlKey + "\n"
		 * 	);
		 * }
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onkeypress="showChar(event);"&gt;
		 * &lt;p&gt;Press any character key, with or without holding down the CTRL key.&lt;br /&gt;
		 * You can also use the SHIFT key together with the CTRL key.&lt;/p&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.ctrlKey  MDC - event.ctrlKey
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-KeyboardEvent-ctrlKey W3C - DOM 3 Events: KeyboardEvent.ctrlKey
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get ctrlKey():Boolean { return false; };
		
		/**
		 * Returns the Unicode value of a non-character key in a keypress event or any key in any other type of keyboard event.
		 * 
		 * <p>For constants equivalent to these numeric codes, see KeyEvent.</p>
		 * 
		 * <p><strong>Note:</strong> In a keypress event, the Unicode value of the key pressed is stored in either the keyCode or 
		 * charCode property, never both. If the key pressed generates a character (e.g. 'a'), charCode is set to the code of that 
		 * character, respecting the letter case. (i.e. charCode takes into account whether the shift key is held down). Otherwise, 
		 * the code of the pressed key is stored in keyCode.</p>
		 * 
		 * <p><strong>Note:</strong> keyCode is always set in the keydown and keyup events. In these cases, charCode is never set.</p>
		 * 
		 * <p><strong>Note:</strong> To get the code of the key regardless of whether it was stored in keyCode or charCode, query the which property.</p>
		 * 
		 * <p><strong>Note:</strong> Characters entered through an IME do not register through keyCode or charCode. </p>
		 * 
		 * @example
		 * <listing>
		 * &lt;html&gt;
		 * &lt;head&gt;
		 * &lt;title&gt;keyCode example&lt;/title&gt;
		 * 
		 * &lt;script type="text/javascript"&gt;
		 * 
		 * function showKeyCode(e) {
		 * 	alert("keyCode for the key pressed: " + e.keyCode + "\n");
		 * }
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * 
		 * &lt;body onkeydown="showKeyCode(event);"&gt;
		 * &lt;p&gt;Press any key.&lt;/p&gt;
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/DOM/event.keyCode MDC - event.keyCode
		 * @see dom.events.KeyEvent
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get keyCode():DOMString { return null; };
		
		/**
		 * Holds the identifier of the key. The key identifiers are defined in 
		 * Appendix A.2 "Key identifiers set". Implementations that are unable 
		 * to identify a key must use the key identifier "Unidentified".
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-KeyboardEvent-keyIdentifier W3C - DOM 3 Events: KeyboardEvent.keyIdentifier
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/keyset.html#KeySet-Set Key identifiers set
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get keyIdentifier():DOMString { return null; };
		
		/**
		 * The keyLocation attribute contains an indication of the location of 
		 * they key on the device, as described in Keyboard event types.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-KeyboardEvent-keylocation W3C - DOM 3 Events: KeyboardEvent.keyLocation
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#ID-KeyboardEvent-KeyLocationCode Keyboard event types
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get keyLocation():Number { return 0; };
		
		/**
		 * If the meta (Meta) key modifier is activated.
		 * 
		 * <p><strong>Note:</strong> The Command key modifier on Macintosh systems must be represented 
		 * using this key modifier.</p>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-KeyboardEvent-metaKey W3C - DOM 3 Events: KeyboardEvent.metaKey
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get metaKey():Boolean { return false; };
		
		/**
		 * If the shift (Shift) key modifier is activated.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-KeyboardEvent-shiftKey W3C - DOM 3 Events: KeyboardEvent.shiftKey
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get shiftKey():Boolean { return false; };
		
		/**
		 * Queries the state of a modifier using a key identifier.
		 * 
		 * @param	keyIdentifierArg A modifier key identifier. Common modifier 
		 * keys are "Alt", "AltGraph", "CapsLock", "Control", "Meta", "NumLock", 
		 * "Scroll", or "Shift".
		 * 
		 * <p><strong>Note:</strong> If an application wishes to distinguish between right and left 
		 * modifiers, this information could be deduced using keyboard events 
		 * and KeyboardEvent.keyLocation.</p>
		 * 
		 * @return If it is a modifier key and the modifier is activated
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-KeyboardEvent-getModifierState W3C - DOM 3 Events: KeyboardEvent.getModifierState()
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/keyset.html#Modifiers Modifier Keys
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function getModifierState(keyIdentifierArg:DOMString):Boolean { return false; };
		
		/**
		 * Initializes attributes of a KeyboardEvent object. This method has the 
		 * same behavior as UIEvent.initUIEvent(). The value of UIEvent.detail 
		 * remains undefined.
		 * 
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	viewArg Specifies UIEvent.view. This value may be null.
		 * @param	keyIdentifierArg Specifies KeyboardEvent.keyIdentifier.
		 * @param	keyLocationArg Specifies KeyboardEvent.keyLocation.
		 * @param	modifiersListArg A white space separated list of modifier key 
		 * identifiers to be activated on this object. As an example, "Control Alt" 
		 * will mark the control and alt modifiers as activated.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-KeyboardEvent-initKeyboardEvent W3C - DOM 3 Events: KeyboardEvent.initKeyboardEvent()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initKeyboardEvent(typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean, viewArg:AbstractView, keyIdentifierArg:DOMString, keyLocationArg:Number, modifiersListArg:DOMString):void { };
		
		/**
		 * Initializes attributes of a KeyboardEvent object. This method has the 
		 * same behavior as UIEvent.initUIEventNS(). The value of UIEvent.detail 
		 * remains undefined. 
		 * 
		 * @param	namespaceURIArg Specifies Event.namespaceURI, the namespace URI associated with this event, or null if no namespace.
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	viewArg Specifies UIEvent.view. This value may be null.
		 * @param	keyIdentifierArg Specifies KeyboardEvent.keyIdentifier.
		 * @param	keyLocationArg Specifies KeyboardEvent.keyLocation.
		 * @param	modifiersListArg A white space separated list of modifier key 
		 * identifiers to be activated on this object. As an example, "Control Alt" 
		 * will mark the control and alt modifiers as activated.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-KeyboardEvent-initKeyboardEventNS W3C - DOM 3 Events: KeyboardEvent.initKeyboardEventNS()
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initKeyboardEventNS(namespaceURI:DOMString, typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean, viewArg:AbstractView, keyIdentifierArg:DOMString, keyLocationArg:Number, modifiersListArg:DOMString):void { }; 
	}
}