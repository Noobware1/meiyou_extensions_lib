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
    switch (hasher.toLowerCase()) {
      case 'md2':
        return MD2(data).toString();
      case 'md4':
        return MD4(data).toString();
      case 'md5':
        return MD5(data).toString();
      case 'ripemd160':
        return RIPEMD160(data).toString();
      case 'sha1':
        return SHA1(data).toString();
      case 'sha3':
        return SHA3(data).toString();
      case 'sha224':
        return SHA224(data).toString();
      case 'sha256':
        return SHA256(data).toString();
      case 'sha384':
        return SHA384(data).toString();
      case 'sha512':
        return SHA512(data).toString();
      case 'tiger':
        return TIGER(data).toString();
      case 'whirlpool':
        return WHIRLPOOL(data).toString();
      default:
        throw Exception('Hasher $hasher not found');
    }
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
