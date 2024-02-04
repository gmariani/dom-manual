package gecko.events {
	
	import dom.events.MouseEvent;
	
	/**
	 * The DOMMouseScroll event is sent when the mouse wheel is moved. The target of 
	 * this event is the element that was under the mouse pointer when the mouse wheel 
	 * was scrolled, similar to the click event.
	 * 
	 * @see http://developer.mozilla.org/en/Gecko-Specific_DOM_Events
	 */
	public class MouseEvent extends dom.events.MouseEvent {
		
		/**
		 * Unknown value
		 */
		public static const HORIZONTAL_AXIS:Number = 0;
		
		/**
		 * Unknown value
		 */
		public static const VERTICAL_AXIS:Number = 0;
		
		/**
		 * Specifies the number of “ticks” that the mouse wheel moved. 
		 * Positive values mean “down” / “right”, negative “up” / “left”.
		 */
		override public function get detail():Number { return 0; };
		
		/**
		 * Specifies the axis of the scroll gesture (horizontal or vertical). 
		 * This attribute was added in Firefox 3.5
		 * 
		 * @see http://bugzilla.mozilla.org/show_bug.cgi?id=378028 bug 378028
		 */
		public function get axis():Number { return 0; };
		
	}
}