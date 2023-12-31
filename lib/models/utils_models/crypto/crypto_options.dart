class CryptoOptions {
  
  /// The initialization vector (IV) to use for the encryption or decryption.
  final String? iv;

  /// The encoding to use for the text to encrypt or decrypt.
  final String? textEncoding;

  /// The encoding to use for the encryption key.
  final String? keyEncoding;

  /// The encoding to use for the IV.
  final String? ivEncoding;

  /// The salt to use for the encryption or decryption.
  final String? salt;

  /// The encoding to use for the salt.
  final String? saltEncoding;

  /// The mode to use for the encryption or decryption.
  final String? mode;

  /// The padding to use for the encryption or decryption.
  final String? padding;

  /// The encoding to use for the encrypted or decrypted text.
  final String? encoding;

  CryptoOptions({
    this.iv,
    this.textEncoding,
    this.keyEncoding,
    this.ivEncoding,
    this.salt,
    this.saltEncoding,
    this.mode,
    this.padding,
    this.encoding,
  });

  @override
  String toString() {
    return '''CryptoOptions(iv: $iv, textEncoding: $textEncoding, keyEncoding: $keyEncoding, ivEncoding: $ivEncoding, salt: $salt, saltEncoding: $saltEncoding, mode: $mode, padding: $padding, encoding: $encoding)''';
  }
}