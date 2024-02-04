package dom.events {
	
	import dom.core.types.DOMString;
	import dom.events.UIEvent;
	import dom.events.EventTarget;
	import dom.events.MouseEvent;
	import dom.views.AbstractView;
	
	/**
	 * The MouseWheelEvent interface provides specific contextual information 
	 * associated with mouse wheel events.
	 * 
	 * <p>To create an instance of the MouseWheelEvent interface, use the 
	 * DocumentEvent.createEvent("MouseWheelEvent") method call.</p>
	 * 
	 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MouseWheelEvent W3C - DOM 3 Events: MouseWheelEvent
	 * 
	 * @playerversion DOMEvents 3
	 * @since DOMEvents 3
	 */
	public class MouseWheelEvent extends MouseEvent {
		
		// Types
		/**
		 * Refer to Activation requests and behavior.
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
		 * 		<td>Target</td><td><code>Document, Element</code></td>
		 * 	</tr>
		 * 	<tr>
		 * 		<td>Context info</td><td>MouseWheelEvent.wheelDelta, MouseEvent.altKey, MouseEvent.ctrlKey, MouseEvent.shiftKey, 
		 * MouseEvent.metaKey, and UIEvent.view are in use. MouseEvent.screenX, MouseEvent.screenY, MouseEvent.clientX, 
		 * MouseEvent.clientY, and MouseEvent.button are in use if the wheel is associated to a pointing device. MouseEvent.relatedTarget 
		 * indicates the event target the pointing device is pointing at, if any. UIEvent.detail is not in use.</td>
		 * 	</tr>
		 * </table>
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#event-mousewheel W3C - MouseWheelEvent.mousewheel
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public static const mousewheel:String ="mousewheel";
		
		/**
		 * The distance the wheel has rotated around the y-axis.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-MouseWheelEvent-wheelDelta W3C - MouseWheelEvent.wheelDelta
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function get wheelDelta():Number { return 0; };
		
		/**
		 * Initializes attributes of a MouseWheelEvent object. This method 
		 * has the same behavior as MouseEvent.initMouseEventNS(). 
		 * 
		 * @param	namespaceURIArg Specifies Event.namespaceURI, the namespace URI associated with this event, or null if no namespace.
		 * @param	typeArg Specifies Event.type, the local name of the event type.
		 * @param	canBubbleArg Specifies Event.bubbles. This parameter overrides the intrinsic bubbling behavior of the event.
		 * @param	cancelableArg Specifies Event.cancelable. This parameter overrides the intrinsic cancelable behavior of the event.
		 * @param	viewArg Specifies UIEvent.view. This value may be null.
		 * @param	detailArg Specifies UIEvent.detail.
		 * @param	screenXArg Refer to the MouseEvent.initMouseEventNS() method for a description of this parameter.
		 * @param	screenYArg Refer to the MouseEvent.initMouseEventNS() method for a description of this parameter.
		 * @param	clientXArg Refer to the MouseEvent.initMouseEventNS() method for a description of this parameter.
		 * @param	clientYArg Refer to the MouseEvent.initMouseEventNS() method for a description of this parameter.
		 * @param	buttonArg Refer to the MouseEvent.initMouseEventNS() method for a description of this parameter.
		 * @param	relatedTargetArg Refer to the MouseEvent.initMouseEventNS() method for a description of this parameter.
		 * @param	modifiersListArg Refer to the MouseEvent.initMouseEventNS() method for a description of this parameter.
		 * @param	wheelDeltaArg Specifies MouseWheelEvent.wheelDelta.
		 * 
		 * @see http://www.w3.org/TR/DOM-Level-3-Events/events.html#Events-Event-initMouseWheelEventNS W3C - MouseWheelEvent.initMouseWheelEventNS
		 * 
		 * @playerversion DOMEvents 3
		 * @since DOMEvents 3
		 */
		public function initMouseWheelEventNS(namespaceURIArg:DOMString, 
											typeArg:DOMString, 
											canBubbleArg:Boolean, 
											cancelableArg:Boolean, 
											viewArg:AbstractView, 
											detailArg:Number, 
											screenXArg:Number, 
											screenYArg:Number, 
											clientXArg:Number, 
											clientYArg:Number, 
											buttonArg:Number, 
											relatedTargetArg:EventTarget,
											modifiersListArg:DOMString,
											wheelDeltaArg:Number):void { };
	}
}