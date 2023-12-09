// ignore_for_file: non_constant_identifier_names

import 'dart:html';

import 'package:crypto_dart/crypto_dart.dart';
import 'package:crypto_dart/hashers.dart';
import 'package:meiyou_extenstions/crypto_dart/padding.dart';
import 'package:meiyou_extenstions/src/extenstions/iterable.dart';
import 'package:meiyou_extenstions/src/extenstions/string.dart';
import 'package:meiyou_extenstions/src/models/utils_models/crypto/crypto_options.dart';

Encoder getEncoder(String? encoding) {
  final enc = CryptoDart.enc;
  switch (encoding) {
    case 'base64':
      return enc.BASE64;
    case 'hex':
      return enc.HEX;
    case 'utf16':
      return enc.UTF16;
    default:
      return enc.UTF8;
  }
}

class CryptoUtils {
  static String AES({
    required String ciphertext,
    required String key,
    required bool encrypt,
    CryptoOptions? options,
  }) {
    final cipherOptions = CipherOptions(
        iv: options?.iv,
        ivEncoding: options?.ivEncoding,
        keyEncoding: options?.keyEncoding,
        textEncoding: options?.textEncoding,
        salt: options?.salt,
        saltEncoding: options?.saltEncoding,
        padding: options?.padding != null
            ? Padding.values.tryfirstWhere((e) =>
                e.toString().substringAfter('Padding.') == options!.padding)
            : null,
        mode: options?.mode == 'ecb' ? Mode.ecb : Mode.cbc);
    if (encrypt) {
      return CryptoDart.AES
          .encrypt(ciphertext, key, options: cipherOptions)
          .toString(getEncoder(options?.encoding));
    }

    return CryptoDart.AES
        .decrypt(ciphertext, key, options: cipherOptions)
        .convertToString(getEncoder(options?.encoding ?? 'utf8'));
  }

  static String HashString(String hasher, dynamic data) {
    final Hasher h;
    switch (hasher.toLowerCase()) {
      case 'md2':
        h = MD2(data);
      case 'md4':
        h = MD4(data);
      case 'md5':
        h = MD5(data);
      case 'ripemd160':
        h = RIPEMD160(data);
      case 'sha1':
        h = SHA1(data);
      case 'sha3':
        h = SHA3(data);
      case 'sha224':
        h = SHA224(data);
      case 'sha256':
        h = SHA256(data);
      case 'sha384':
        h = SHA384(data);
      case 'sha512':
        h = SHA512(data);
      case 'tiger':
        h = TIGER(data);
      case 'whirlpool':
        h = WHIRLPOOL(data);
      default:
        throw Exception('Hasher $hasher not found');
    }
    return h.toString();
  }

  static String TripleDES({
    required String ciphertext,
    required String key,
    required bool encrypt,
    CryptoOptions? options,
  }) {
    final cipherOptions = CipherOptions(
        ivEncoding: options?.ivEncoding,
        keyEncoding: options?.keyEncoding,
        textEncoding: options?.textEncoding,
        salt: options?.salt,
        saltEncoding: options?.saltEncoding,
        padding: options?.padding != null
            ? Padding.values.tryfirstWhere((e) =>
                e.toString().substringAfter('Padding.') == options!.padding)
            : null,
        mode: options?.mode == 'ecb' ? Mode.ecb : Mode.cbc);
    if (encrypt) {
      return CryptoDart.TripleDES.encrypt(ciphertext, key,
              options: cipherOptions)
          .toString(getEncoder(options?.encoding));
    }

    return CryptoDart.TripleDES.decrypt(ciphertext, key, options: cipherOptions)
        .convertToString(getEncoder(options?.encoding ?? 'utf8'));
  }
}
