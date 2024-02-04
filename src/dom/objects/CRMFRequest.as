package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * RFC 4211, the Internet X.509 Public Key Infrastructure Certificate Request Message 
	 * Format (CRMF), defines a certReqMessage. The object returned by generateCRMFRequest() 
	 * contains one of those.
	 * 
	 * @see http://www.ietf.org/rfc/rfc4211.txt Network Working Group - RFC 4211
	 * @see http://mh-in-f132.google.com/search?hl=en&safe=off&num=100&q=cache%3Awww.ietf.org%2Frfc%2Frfc4211.txt+certReqMessage+certRequest+certReq&btnG=Search Network Working Group - certReqMessage
	 * @see http://developer.mozilla.org/en/CRMF_Request_object MDC - CRMF Request object
	 * @see dom.objects.Crypto#generateCRMFRequest()
	 * 
	 * @playerversion Non-Standard Mozilla
	 */
	public class CRMFRequest {
		
		/**
		 * Returns a encrypted string.
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get request():DOMString { return null; };
	}
}