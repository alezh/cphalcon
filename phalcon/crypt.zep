
/*
 +------------------------------------------------------------------------+
 | Phalcon Framework                                                      |
 +------------------------------------------------------------------------+
 | Copyright (c) 2011-2013 Phalcon Team (http://www.phalconphp.com)       |
 +------------------------------------------------------------------------+
 | This source file is subject to the New BSD License that is bundled     |
 | with this package in the file docs/LICENSE.txt.                        |
 |                                                                        |
 | If you did not receive a copy of the license and are unable to         |
 | obtain it through the world-wide-web, please send an email             |
 | to license@phalconphp.com so we can send you a copy immediately.       |
 +------------------------------------------------------------------------+
 | Authors: Andres Gutierrez <andres@phalconphp.com>                      |
 |          Eduar Carvajal <eduar@phalconphp.com>                         |
 +------------------------------------------------------------------------+
 */

namespace Phalcon;

/**
 * Phalcon\Crypt
 *
 * Provides encryption facilities to phalcon applications
 *
 *<code>
 *	$crypt = new Phalcon\Crypt();
 *
 *	$key = 'le password';
 *	$text = 'This is a secret text';
 *
 *	$encrypted = $crypt->encrypt($text, $key);
 *
 *	echo $crypt->decrypt($encrypted, $key);
 *</code>
 */
class Crypt implements Phalcon\CryptInterface
{

	protected _key;

	protected _mode = 'cbc';

	protected _cipher = 'rijndael-256';

	/**
	 * Sets the cipher algorithm
	 *
	 * @param string cipher
	 * @return Phalcon\Encrypt
	 */
	public function setCipher(cipher)
	{
		let this->_cipher = cipher;
		return this;
	}

	/**
	 * Returns the current cipher
	 *
	 * @return string
	 */
	public function getCipher()
	{
		return this->_cipher;
	}

	/**
	 * Sets the encrypt/decrypt mode
	 *
	 * @param string cipher
	 * @return Phalcon\Encrypt
	 */
	public function setMode(mode)
	{
		let this->_mode = mode;
		return this;
	}

	/**
	 * Returns the current encryption mode
	 *
	 * @return string
	 */
	public function getMode()
	{
		return this->_mode;
	}

	/**
	 * Sets the encryption key
	 *
	 * @param string key
	 * @return Phalcon\Encrypt
	 */
	public function setKey(key)
	{
		let this->_key = key;
		return this;
	}

	/**
	 * Returns the encryption key
	 *
	 * @return string
	 */
	public function getKey()
	{
		return this->_key;
	}

	/**
	 * Encrypts a text
	 *
	 *<code>
	 *	$encrypted = $crypt->encrypt("Ultra-secret text", "encrypt password");
	 *</code>
	 *
	 * @param string text
	 * @param string key
	 * @return string
	 */
	public function encrypt(text, key=null)
	{

	}

	/**
	 * Decrypts an encrypted text
	 *
	 *<code>
	 *	echo $crypt->decrypt($encrypted, "decrypt password");
	 *</code>
	 *
	 * @param string text
	 * @param string key
	 * @return string
	 */
	public function decrypt(text, key=null)
	{

	}

	/**
	 * Encrypts a text returning the result as a base64 string
	 *
	 * @param string text
	 * @param string key
	 * @return string
	 */
	public function encryptBase64(text, key=null)
	{

	}

	/**
	 * Decrypt a text that is coded as a base64 string
	 *
	 * @param string text
	 * @param string key
	 * @return string
	 */
	public function decryptBase64(text, key=null)
	{

	}

	/**
	 * Returns a list of available cyphers
	 *
	 * @return array
	 */
	public function getAvailableCiphers()
	{
		return mcrypt_list_algorithms();
	}

	/**
	 * Returns a list of available modes
	 *
	 * @return array
	 */
	public function getAvailableModes()
	{
		return mcrypt_list_modes();
	}

}