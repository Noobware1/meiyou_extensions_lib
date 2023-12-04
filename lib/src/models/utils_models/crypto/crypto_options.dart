class CryptoOptions {
  final String? textEncoding;

  final String? keyEncoding;

  final String? ivEncoding;

  final String? salt;

  final String? saltEncoding;

  final String? mode;

  final String? padding;

  final String? encoding;

  CryptoOptions({
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
    return '''CryptoOptions(
    textEncoding: $textEncoding,
    keyEncoding: $keyEncoding,
    ivEncoding: $ivEncoding,
    salt: $salt,
    saltEncoding: $saltEncoding,
    mode: $mode,
    padding: $padding,
    encoding: $encoding,
  );
''';
  }
}
