package webstorage {
	
	import dom.events.Event;
	import dom.core.types.DOMString;
	import dom.WindowProxy;
	
	/**
	 * Is fired when a storage area changes
	 * 
	 * @playerversion WebStorage 0
	 * @since HTML 5
	 * 
	 * @see http://www.w3.org/TR/webstorage/#the-storage-event W3C Web Storage Specification
	 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: HTML5 compatibility - Local storage and session storage
	 */
	public class StorageEvent extends Event {
		
		/**
		 * The domain the field is stored in.
		 * 
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * 
		 * @playerversion Non-Standard Mozilla
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		public function get domain():DOMString { return null; };
		
		/**
		 * The key being changed.
		 * 
		 * @see http://www.w3.org/TR/webstorage/#the-storage-event  W3C - Web Storage: key Property
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4_no
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		public function get key():DOMString { return null; };
		
		/**
		 * The old value of the key being changed.
		 * 
		 * @see http://www.w3.org/TR/webstorage/#the-storage-event  W3C - Web Storage: oldValue Property
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4_no
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		public function get oldValue():DOMString { return null; };
		
		/**
		 * The new value of the key being changed.
		 * 
		 * @see http://www.w3.org/TR/webstorage/#the-storage-event  W3C - Web Storage: newValue Property
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4_no
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		public function get newValue():DOMString { return null; };
		
		/**
		 * The URL of the page that changed the field.
		 * 
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * 
		 * @playerversion Non-Standard Apple
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4_no
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		public function get uri():DOMString { return null; };
		
		/**
		 * The address of the document whose key changed.
		 * 
		 * @see http://www.w3.org/TR/webstorage/#the-storage-event  W3C - Web Storage: url Property
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		public function get url():DOMString { return null; };
		
		/**
		 * The WindowProxy object of the browsing context of the document whose key changed.
		 * 
		 * @see http://www.w3.org/TR/webstorage/#the-storage-event  W3C - Web Storage: source Property
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4_no
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		public function get source():WindowProxy { return null; };
		
		/**
		 * The Storage object that was affected.
		 * 
		 * @see http://www.w3.org/TR/webstorage/#the-storage-event  W3C - Web Storage: storageArea Property
		 * @see http://quirksmode.org/dom/html5.html#localstorage  Quirksmode: Local storage and session storage
		 * 
		 * @playerversion WebStorage 0
		 * @since HTML 5
		 * 
		 * @productversion IE 5.5_no
		 * @productversion IE 6.0_no
		 * @productversion IE 7.0_no
		 * @productversion IE 8.0_as_IE7_no
		 * @productversion IE 8.0_as_IE8_no
		 * @productversion Firefox 2.0_no
		 * @productversion Firefox 3.0_no
		 * @productversion Firefox 3.5b4_no
		 * @productversion Safari 3.0_no
		 * @productversion Safari 3.1_no
		 * @productversion Safari 4.0_no
		 * @productversion Chrome 1.0_no
		 * @productversion Chrome 2.0_no
		 * @productversion Opera 9.62_no
		 * @productversion Opera 10.0b_no
		 */
		public function get storageArea():Storage { return null; };
		
		/**
		 * Initializes attributes of an Event created through the 
		 * DocumentEvent.createEvent method.
		 * 
		 * @param	typeArgSpecifies Event.type, the local name of the 
		 * event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides 
		 * the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter 
		 * overrides the intrinsic cancelable behavior of the event.
		 * @param	keyArg The key being changed.
		 * @param	oldValueArg The old value of the key being changed.
		 * @param	newValueArg The new value of the key being changed.
		 * @param	urlArg The address of the document whose key changed.
		 * @param	sourceArg The WindowProxy object of the browsing context of the document whose key changed.
		 * @param	storageAreaArg The Storage object that was affected.
		 * 
		 * @see http://www.w3.org/TR/webstorage/#the-storage-event  W3C - Web Storage: initStorageEvent Method
		 * 
		 * @playerversion WebStorage 0
		 * @since DOMEvents 3
		 */
		public function initStorageEvent(typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean, keyArg:DOMString, oldValueArg:DOMString, newValueArg:DOMString, urlArg:DOMString, sourceArg:WindowProxy, storageAreaArg:Storage):void { };
		
		/**
		 * Initializes attributes of a StorageEvent object. This method has 
		 * the same behavior as Event.initEventNS(). 
		 * 
		 * @param	namespaceURIArg Refer to the Event.initEventNS() method for a description of this parameter.
		 * @param	typeArg Refer to the Event.initEventNS() method for a description of this parameter.
		 * @param	canBubbleArg Refer to the Event.initEventNS() method for a description of this parameter.
		 * @param	cancelableArg Refer to the Event.initEventNS() method for a description of this parameter.
		 * @param	keyArg Specifies StorageEvent.key.
		 * @param	oldValueArg Specifies StorageEvent.oldValue.
		 * @param	newValueArg Specifies StorageEvent.newValue.
		 * @param	urlArg Specifies StorageEvent.url.
		 * @param	sourceArg Specifies StorageEvent.source.
		 * @param	storageAreaArg Specifies StorageEvent.storageArea.
		 * 
		 * @see http://www.w3.org/TR/webstorage/#the-storage-event  W3C - Web Storage: initStorageEvent Method
		 * @see dom.events.Event#initEventNS()
		 * 
		 * @playerversion WebStorage 0
		 * @since DOMEvents 3
		 */
		public function initStorageEventNS(namespaceURI:DOMString, typeArg:DOMString, canBubbleArg:Boolean, cancelableArg:Boolean, keyArg:DOMString, oldValueArg:DOMString, newValueArg:DOMString, urlArg:DOMString, sourceArg:WindowProxy, storageAreaArg:Storage):void { };
	}
}