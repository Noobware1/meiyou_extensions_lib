import 'package:dart_eval/dart_eval_bridge.dart';

class CryptoDartTypes {
  /// Bridge type spec for [$HashAlgorithms]
  static const hashAlgorithms = BridgeTypeSpec(
      'package:crypto_dart/src/hash_algorithms.dart', 'HashAlgorithms');

  static const cipherParams = BridgeTypeSpec(
      'package:crypto_dart/src/cipher_params.dart', 'CipherParams');

  static const cipherOptions = BridgeTypeSpec(
      'package:crypto_dart/src/cipher_options.dart', 'CipherOptions');

  static const cryptoDart =
      BridgeTypeSpec('package:crypto_dart/src/crypto_dart.dart', 'CryptoDart');

  static const mode =
      BridgeTypeSpec('package:crypto_dart/src/mode.dart', 'Mode');

  static const padding =
      BridgeTypeSpec('package:crypto_dart/src/padding/padding.dart', 'Padding');

  //Block ciphers
  static const blockCipher = BridgeTypeSpec(
      'package:crypto_dart/src/block_cipher.dart', 'BlockCipher');

  static const aes = BridgeTypeSpec('package:crypto_dart/src/aes.dart', 'AES');

  static const tripleDes =
      BridgeTypeSpec('package:crypto_dart/src/tripledes.dart', 'TripleDES');

  //Hashers
  static const hasher =
      BridgeTypeSpec('package:crypto_dart/src/hashers/hasher.dart', 'Hasher');

  static const md2 =
      BridgeTypeSpec('package:crypto_dart/src/hashers/md2.dart', 'MD2');

  static const md4 =
      BridgeTypeSpec('package:crypto_dart/src/hashers/md4.dart', 'MD4');

  static const md5 =
      BridgeTypeSpec('package:crypto_dart/src/hashers/md5.dart', 'MD5');

  static const ripemd160 = BridgeTypeSpec(
      'package:crypto_dart/src/hashers/ripemd160.dart', 'RIPEMD160');

  static const sha1 =
      BridgeTypeSpec('package:crypto_dart/src/hashers/sha1.dart', 'SHA1');

  static const sha3 =
      BridgeTypeSpec('package:crypto_dart/src/hashers/sha3.dart', 'SHA3');

  static const sha224 =
      BridgeTypeSpec('package:crypto_dart/src/hashers/sha224.dart', 'SHA224');

  static const sha256 =
      BridgeTypeSpec('package:crypto_dart/src/hashers/sha256.dart', 'SHA256');

  static const sha384 =
      BridgeTypeSpec('package:crypto_dart/src/hashers/sha384.dart', 'SHA384');

  static const sha512 =
      BridgeTypeSpec('package:crypto_dart/src/hashers/sha512.dart', 'SHA512');

  static const tiger =
      BridgeTypeSpec('package:crypto_dart/src/hashers/tiger.dart', 'TIGER');

  static const whirlpool = BridgeTypeSpec(
      'package:crypto_dart/src/hashers/whirlpool.dart', 'WHIRLPOOL');

  //Encoders
  static const encoder =
      BridgeTypeSpec('package:crypto_dart/src/enc.dart', 'Encoder');

  static const encoders =
      BridgeTypeSpec('package:crypto_dart/src/encoders.dart', 'Encoders');

  static const base64 =
      BridgeTypeSpec('package:crypto_dart/src/encoders/base64.dart', 'Base64');

  static const hex =
      BridgeTypeSpec('package:crypto_dart/src/encoders/hex.dart', 'Hex');

  static const utf8 =
      BridgeTypeSpec('package:crypto_dart/src/encoders/utf8.dart', 'Utf8');

  static const utf16 =
      BridgeTypeSpec('package:crypto_dart/src/encoders/utf16.dart', 'Utf16');
}
