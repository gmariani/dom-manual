package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * Mozilla defines a special JavaScript object to allow web pages access to certain cryptographic related services. 
	 * These services are a balance between the functionality web pages need, and the requirement to protect users from 
	 * malicious web sites. Most of these services are available via the JavaScript window object as window.crypto.
	 * 
	 * @see http://developer.mozilla.org/en/JavaScript_crypto MDC - JavaScript crypto
	 * 
	 * @playerversion Non-Standard Mozilla
	 */
	public class Crypto {
		
		/** 
		 * To enable your document to receive these events, you must first tell the crypto system you are interested. You 
		 * can do this by setting <code>window.crypto.enableSmartCardEvents</code> to <code>true</code>. This tells the 
		 * crypto system that you are interested in listening for these events. You can then register event handlers for 
		 * these events with the document.addEventListener. 
		 * 
		 * @example
		 * With this example, your website will automatically reload anytime a SmartCard is inserted or removed. This 
		 * allows the page to automatically login and logout based on the presence of the SmartCard. 
		 * <listing>
		 * &lt;!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"&gt;
		 * &lt;html&gt;&lt;head&gt; 
		 * ....
		 * &lt;script language="javascript"&gt;
		 * 
		 * function onSmartCardChange() {
		 * 	window.location.reload();
		 * }
		 * function register() {
		 * window.crypto.enableSmartCardEvents=true;
		 * 	document.addEventListener("smartcard-insert",onSmartCardChange,false);
		 * 	document.addEventListener("smartcard-remove",onSmartCardChange,false);
		 * };
		 * function deregister() {
		 * 	document.removeEventListener("smartcard-insert",onSmartCardChange,false);
		 * 	document.removeEventListener("smartcard-remove",onSmartCardChange,false);
		 * };
		 * 
		 * &lt;/script&gt;
		 * &lt;/head&gt;
		 * &lt;body .... onload=register() onunload=deregister()&gt;
		 * 
		 * .....
		 * &lt;/body&gt;
		 * &lt;/html&gt;</listing>
		 * 
		 * @see http://developer.mozilla.org/en/JavaScript_crypto MDC - JavaScript crypto
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get enableSmartCardEvents():Boolean { return false; };
		public function set enableSmartCardEvents(value:Boolean):void { };
		
		/** 
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/en/JavaScript_crypto MDC - JavaScript crypto
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function get version():DOMString { return null; };
		
		/** 
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/en/JavaScript_crypto MDC - JavaScript crypto
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function alert(message:DOMString):void { };
		
		/** 
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/en/JavaScript_crypto MDC - JavaScript crypto
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function disableRightClick():void { };
		
		/**
		 * This method will generate a sequence of CRMF requests that has N requests. One request 
		 * for each key pair that is generated. The first three parameters will be applied to every 
		 * request. The "escrowAuthorityCert" parameter will only be used for requests that pertain 
		 * to a key that is being escrowed. After the "escrowAuthorityCert" parameter, the method 
		 * takes some JavaScript code that is invoked when the CRMF request is ready. Finally, there 
		 * are 1 or more sets of key generation arguments. Each key generation will be associated 
		 * with its own request. All the requests will have the same DN.
		 * 
		 * @param	requestedDN An RFC 1485 formatted DN to include in the certificate request.
		 * @param	regToken A value used to authenticate the user to the RA/CA.
		 * @param	authenticator A value that the user can authenticate with in the future when 
		 * their private key is not available. Can be used for key recovery or revocation requests.
		 * @param	escrowAuthorityCert If this value is NULL, then no key escrow will be performed. 
		 * This value specifies which KRA certificate should be used to wrap the private key being 
		 * escrowed. The user will be prompted for confirmation whenever a key will be escrowed. 
		 * Only key exchange keys will be escrowed. If a dual use key is being generated, it will 
		 * not be escrowed. The value of this argument is a base-64 encoded certificate.
		 * @param	completeHandler This parameter is JavaScript to execute when the CRMF generation is complete.
		 * @param	keySizeN The size in bits of the Nth key to generate
		 * @param	keyParamsN This string is an optional algorithm dependent parameter value. For 
		 * Diffie-Hellman it is used to specify p and g parameters. For DSA, it will be used to 
		 * specify pqg. If the key generation requires parameters and the value passed in is NULL, 
		 * then the client will generate the parameters on its own. Currently, this value is ignored.
		 * @param	keyGenAlgN Which algorithm the generated key will support. Acceptable values are (the 
		 * mentioned values for keyUsage pertain to the keyUsage value of the Certificate Extension that 
		 * will ultimately be in the issued certificate):
		 * <ul>
		 * <li>"rsa-ex" - generate an RSA key for key exchange only (This will have eyEncipherment set for keyUsage.)</li>
		 * <li>"rsa-dual-use" - generate a single RSA key for both signing and encryption. (This will have digitalSignature, keyEncipherment, and nonRepudiation set for keyUsage.)</li>
		 * <li>"rsa-sign" - generate an RSA key for signing only. (This will have digitalSignature set for keyUsage.)</li>
		 * <li>"rsa-nonrepudiation" - generate a single RSA key for nonRepudiation only. (This will have non-repudiation set for keyUsage.)</li>
		 * <li>"rsa-sign-nonrepudiation" - generate a single RSA key use for both signing and nonRepudiation. (This will have both digitalSignature and nonRepudiation set for keyUsage.)</li>
		 * <li>"dsa-sign" - generate a single DSA key for signing only. (This will have digitalSignature set for keyUsage.)</li>
		 * <li>"dsa-nonrepudiation" - generate a single DSA key for nonRepudiation. (This will have nonRepudiation set for keyUsage.)</li>
		 * <li>"dsa-sign-nonrepudiation" - generate a single DSA key for signing and non-repudiation. (This will have digitalSignature and nonRepudiation set for keyUsage.)</li>
		 * <li>"dh-ex"</li>
		 * <li>"ec-ex"</li>
		 * <li>"ec-dual-use"</li>
		 * <li>"ec-sign"</li>
		 * <li>"ec-sign-nonrepudiation"</li>
		 * <li>"ec-nonrepudiation"</li>
		 * </ul>
		 * @return
		 * 
		 * @example
		 * This generates a CRMF object with dummy settings and outputs to Firebug
		 * <listing>
		 * var crmfObject = null;
		 * try {
		 * 	crmfObject = window.crypto.generateCRMFRequest("CN=vvv", "regToken", null, null, 'f' , 1024, null, "rsa-dual-use");
		 * } catch(ex) {
		 * 	console.log("window.crypto.generateCRMFRequest() failed - " + ex + "\n");
		 * }
		 * function f() {
		 * 	console.log("done");
		 * }
		 * console.log(crmfObject);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/GenerateCRMFRequest MDC - crypto.generateCRMFRequest()
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function generateCRMFRequest(requestedDN:DOMString, regToken:DOMString, authenticator:DOMString, escrowAuthorityCert:DOMString, CRMFGenerationDoneCode:DOMString, keySizeN:Number, keyParamsN:DOMString, keyGenAlgN:DOMString):CRMFRequest { return null; };
		
		/**
		 * Imports newly issued certificates for the user. The private key for the certificates must 
		 * already reside in the user's personal private key database.
		 * 
		 * The request ID in the response being imported must match the request ID in the associated 
		 * Certification Request or Recovery Request.
		 * 
		 * @param	nicknameString This is the nickname that will be used to describe the certificate in the 
		 * client's certificate management UI. It should serve to uniquely identify the certificate to the user. 
		 * For example, "John Smith's VeriSign Class 3 Digital ID" or "John Smith's Ford ID Certificate". However, 
		 * if this certificate has the same DN as one or more certificates that already exist in the user's 
		 * certificate store, the nickname associated with the certificate(s) of the same DN in the certificate 
		 * store is used, and the "nicknameString" parameter is ignored. If the string is null and no certificate 
		 * with the same DN exists in the user's certificate store, Personal Security Manager uses the following 
		 * pattern to derive the nickname: &lt;Common Name>'s &lt;Issuer Name> ID.
		 * @param	certString This string is the CMMF Certification Response from the CA that contains the user's certificate(s). The response is base-64 encoded.
		 * @param	forceBackup It allows the CA or RA to indicate to the client whether to force the user to back up a newly issued certificate (PKCS #12).
		 * @return If the import operation succeeds, an empty string will be returned. If it fails, one of 
		 * the following error strings will be returned: 
		 * <ul>
		 * <li>"error:userCancel" -	The user canceled the import operation</li>
		 * <li>"error:invalidCertificate" -	One of the certificate packages was incorrectly formatted</li>
		 * <li>"error:internalError" -	The software encountered some internal error, such as out of memory</li>
		 * <li>"error:invalidRequestID" -	The request ID in the response message does not match any outstanding request</li>
		 * </ul>
		 * 
		 * @see http://developer.mozilla.org/en/ImportUserCertificates MDC - crypto.importUserCertificates()
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function importUserCertificates(nicknameString:DOMString, certString:DOMString, forceBackup:Boolean):DOMString { return null; };
		
		/** 
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/en/JavaScript_crypto MDC - JavaScript crypto
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function logout():void { };
		
		/**
		 * The popChallengeResponse() function returns a proof of key posession signed challenge which a CA can use 
		 * to verify the client has the private key associated with it's claimed public key. 
		 * 
		 * @param	challengeString A base-64 encoded CMMF POPODecKeyChallContent message. The current implementation
		 * does not conform to that defined in the CMMF draft, and we intend to change this implementation to that 
		 * defined in the CMC RFC. See below for the current implementation.
		 * @return The resultString will either be a base-64 encoded POPODecKeyRespContent message, or one of the 
		 * following error strings: 
		 * <ul>
		 * <li>"error:invalidParameter:XXX" 	The parameter XXX was an invalid value.</li>
		 * <li>"error:internalError" 	The software encountered some internal error, such as out of memory</li>
		 * </ul>
		 * 
		 * @example
		 * <listing>
		 * resultString = crypto.popChallengeResponse("challengeString");</listing>
		 * 
		 * @see http://developer.mozilla.org/en/PopChallengeResponse MDC - crypto.popChallengeResponse()
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function popChallengeResponse(challengeString:DOMString):DOMString { return null; };
		
		/** 
		 * Generates a random number of numBytes length.
		 * 
		 * <p><strong>Note (Mozilla):</strong> window.crypto.random() is not yet implemented in Mozilla browsers.</p>
		 * 
		 * @example
		 * To obtain a ten byte random number using the cryptographic engine, simply call: 
		 * <listing>var myrandom = window.crypto.random(10);</listing>
		 * 
		 * @see http://developer.mozilla.org/en/JavaScript_crypto MDC - JavaScript crypto
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function random(numBytes:Number):DOMString { return null; };
		
		/** 
		 * Undocumented
		 * 
		 * @see http://developer.mozilla.org/en/JavaScript_crypto MDC - JavaScript crypto
		 * 
		 * @playerversion Non-Standard Mozilla
		 */
		public function signText(stringToSign:DOMString, caOption:DOMString):DOMString { return null; };
	}
}