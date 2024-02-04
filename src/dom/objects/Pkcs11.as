package dom.objects {
	import dom.core.types.DOMString;
	
	/**
	 * PKCS11 modules are external modules which provide access to smart-card readers, biometric security 
	 * devices, or external certificate stores. There are two methods for installing PKCS11 modules into 
	 * Firefox. Users can use the preferences dialog to install or remove PKCS11 module. Extensions can 
	 * programmatically manage PKCS11 modules using the nsIPKCS11 programming interface.
	 * 
	 * <p><strong>Note (Mozilla):</strong> The information in this article is specific to Firefox 3.5 and 
	 * newer, support for window.pkcs11 property was disabled due to security concerns.</p>
	 * 
	 * <p><strong>Mechanism Flag Definitions</strong></p>
	 * 
	 * <p>In general, most tokens should not set any of the cipher flags. Setting these flags means you want 
	 * your token to supply the default implementation for these functions. Normally Mozilla uses its own 
	 * internal module to supply these functions. These flags override that preference. If you choose to 
	 * implement these flags, your module must supply the following additional functions for each flag: </p>
	 * 
	 * <ul>
		<li>PKCS11_MECH_FLAG: must support CKM_RSA_PKCS and CKM_RSA_X_509 and the following functions: C_WRAPKEY, C_ENCRYPT, C_SIGN, C_DECRYPT, C_UNWRAPKEY, C_VERIFYRECOVER, C_VERIFY, C_GENERATEKEYPAIR (2048, 1024, 512) size
		</li>
		<li>PKCS11_MECH_DSA_FLAG: must support CKM_DSA and the following functions: C_SIGN, C_VERIFY, C_GENERATEKEYPAIR
		</li>
		<li>PKCS11_MECH_RC2_FLAG: must support CKM_RC2_CBC and CKM_RC2_ECB and the following functions: C_GENERATEKEY, C_ENCRYPT, C_DECRYPT, C_WRAPKEY, C_UNWRAPKEY
		</li>
		<li>PKCS11_MECH_RC4_FLAG: must support CKM_RC4_CBC and CKM_RC4_ECB and the following functions: C_GENERATEKEY, C_ENCRYPT, C_DECRYPT, C_WRAPKEY, C_UNWRAPKEY
		</li>
		<li>PKCS11_MECH_DES_FLAG: must support CKM_CPMF_CBC, CKM_DES_CBC, CKM_DES3_CBC, CKM_CPMF_ECB, CKM_DES_ECB, CKM_DES3_ECB and the following functions: C_GENERATEKEY, C_ENCRYPT, C_DECRYPT, C_WRAPKEY, C_UNWRAPKEY
		</li>
		<li>PKCS11_MECH_DH_FLAG: must support CKM_DH_PKCS_DERIVE and CKM_DH_KEY_PAIR_GEN and the following functions: C_DERIVEKEY, C_GENERATEKEYPAIR
		</li>
		<li>PKCS11_MECH_MD5_FLAG: Hashing must be able to function without authentication.
		</li>
		<li>PKCS11_MECH_SHA1_FLAG: Hashing must be able to function without authentication.
		</li>
		<li>PKCS11_MECH_MD2_FLAG: Hashing must be able to function without authentication.*
		</li>
		<li>PKCS11_RANDOM_FLAG: Use token's Random Number Generator.
			<ul>
				<li>Warning: Must be able to use without authentication. Many hardware random number generators are not as secure as the Netscape internal one. Do not select this value unless you can show that your random number generator is secure. Even so, it's highly discouraged.
				</li>
			</ul>
		</li>
		<li>PKCS11_PUB_READABLE_CERT_FLAG: This is the only flag most smart tokens should turn on. You can turn this flag on if:
			<ul>
				<li> the certs on your token can be read without authentication and,
				</li>
				<li> the public key on your token can be found by ID, MODULUS, or VALUE and all your private keys have the associated public key.

					<ul>
						<li>Turning this flag on will illuminate a large number of password prompts for your token when looking up certs in Communicator. </li>
					</ul>
				</li>
			</ul>
		</li>
		</ul>
	 * 
	 * @see http://developer.mozilla.org/en/PKCS11 MDC - PKCS11
	 * @see http://developer.mozilla.org/en/DOM/window.pkcs11 MDC - window.pkcs11
	 * @see http://developer.mozilla.org/en/JavaScript_crypto MDC - JavaScript crypto
	 * 
	 * @playerversion DOMCore 0
	 * @since DOMCore 0
	 */
	public class Pkcs11 {
		
		/**
		 * Loads a new PKCS #11 module.
		 * 
		 * <p><strong>Note (Mozilla):</strong> The module will be placed in the NSS secmod.db database and will be loaded
		 * automatically on application restart.</p>
		 * 
		 * @param	moduleName Name of the module.
		 * @param	libraryFullPath The filename of the library prepended with its full path.
		 * @param	cryptoMechanismFlags A bit vector indicating all cryptographic mechanisms should be turned on by default (see above).
		 * @param	cipherFlags A bit vector indicating all SSL or S/MIME cipher functions supported by the module (see above).
		 * @return Unknown
		 * 
		 * @see http://developer.mozilla.org/en/JavaScript_crypto MDC - JavaScript crypto
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function addModule(moduleName:DOMString, libraryFullPath:DOMString, cryptoMechanismFlags:Number, cipherFlags:Number):Number { return 0; };
		
		/**
		 * Removes a PKCS #11 module.
		 * 
		 * <p><strong>Note (Mozilla):</strong> In the delete case, the module is removed from the NSS secmod.db. This function 
		 * will issue a user prompt to confirm the operation before the add or delete actually occurs.</p>
		 * 
		 * @param	moduleName Name of the module.
		 * @return Unknown
		 * 
		 * @see http://developer.mozilla.org/en/JavaScript_crypto MDC - JavaScript crypto
		 * 
		 * @playerversion DOMCore 0
		 * @since DOMCore 0
		 */
		public function deletemodule(moduleName:DOMString):Number { return 0; };
	}
}