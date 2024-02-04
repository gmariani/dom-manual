package dom {
	
	/**
	 * Must proxy all operations to the Window object of the browsing context's active document.
	 * 
	 * It is indistinguishable from that Window object in every way, except that it is not equal to it.
	 * 
	 * @see http://www.whatwg.org/specs/web-apps/current-work/#windowproxy
	 */
	public class WindowProxy extends Window { }
}