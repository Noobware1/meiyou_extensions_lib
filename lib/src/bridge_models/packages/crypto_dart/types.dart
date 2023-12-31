import 'package:dart_eval/dart_eval_bridge.dart';

class CryptoDartTypes {
  static const cipherParams =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'CipherParams');

  static const cipherOptions =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'CipherOptions');

  static const cryptoDart =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'CryptoDart');

  static const mode =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'Mode');

  static const padding =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'Padding');

  //Block ciphers
  static const blockCipher =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'BlockCipher');

  static const aes =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'AES');

  static const tripleDes =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'TripleDES');

  //Hashers
  static const hasher =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'Hasher');

  static const md2 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'MD2');

  static const md4 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'MD4');

  static const md5 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'MD5');

  static const ripemd160 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'RIPEMD160');

  static const sha1 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'SHA1');

  static const sha3 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'SHA3');

  static const sha224 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'SHA224');

  static const sha256 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'SHA256');

  static const sha384 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'SHA384');

  static const sha512 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'SHA512');

  static const tiger =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'TIGER');

  static const whirlpool =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'WHIRLPOOL');

  //Encoders
  static const encoder =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'Encoder');

  static const encoders =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'Encoders');

  static const base64 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'Base64');

  static const hex =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'Hex');

  static const utf8 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'Utf8');

  static const utf16 =
      BridgeTypeSpec('package:meiyou_extensions_lib/meiyou_extensions_lib.dart', 'Utf16');
  // static const cipherParams = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/cipher_params.dart',
  //     'CipherParams');

  // static const cipherOptions = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/cipher_options.dart',
  //     'CipherOptions');

  // static const cryptoDart = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/crypto_dart.dart',
  //     'CryptoDart');

  // static const mode = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/mode.dart', 'Mode');

  // static const padding = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/padding.dart',
  //     'Padding');

  // //Block ciphers
  // static const blockCipher = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/block_ciphers/block_cipher.dart',
  //     'BlockCipher');

  // static const aes = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/block_ciphers/aes.dart',
  //     'AES');

  // static const tripleDes = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/block_ciphers/triple_des.dart',
  //     'TripleDES');

  // //Hashers
  // static const hasher = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/hasher.dart',
  //     'Hasher');

  // static const md2 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/md2.dart',
  //     'MD2');

  // static const md4 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/md4.dart',
  //     'MD4');

  // static const md5 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/md5.dart',
  //     'MD5');

  // static const ripemd160 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/ripemd160.dart',
  //     'RIPEMD160');

  // static const sha1 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/sha1.dart',
  //     'SHA1');

  // static const sha3 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/sha3.dart',
  //     'SHA3');

  // static const sha224 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/sha224.dart',
  //     'SHA224');

  // static const sha256 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/sha256.dart',
  //     'SHA256');

  // static const sha384 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/sha384.dart',
  //     'SHA384');

  // static const sha512 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/sha512.dart',
  //     'SHA512');

  // static const tiger = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/tiger.dart',
  //     'TIGER');

  // static const whirlpool = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/hashers/whirlpool.dart',
  //     'WHIRLPOOL');

  // //Encoders
  // static const encoder = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/encoders/encoder.dart',
  //     'Encoder');

  // static const encoders = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/encoders/encoders.dart',
  //     'Encoders');

  // static const base64 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/encoders/base64.dart',
  //     'Base64');

  // static const hex = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/encoders/hex.dart',
  //     'Hex');

  // static const utf8 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/encoders/utf8.dart',
  //     'Utf8');

  // static const utf16 = BridgeTypeSpec(
  //     'package:meiyou_extensions_lib/packages/crypto_dart/encoders/utf16.dart',
  //     'Utf16');
}
