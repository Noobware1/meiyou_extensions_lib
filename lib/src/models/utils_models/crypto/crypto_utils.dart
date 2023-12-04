import 'package:crypto_dart/crypto_dart.dart';
import 'package:meiyou_extenstions/src/extenstions/iterable.dart';
import 'package:meiyou_extenstions/src/extenstions/string.dart';
import 'package:meiyou_extenstions/src/models/utils_models/crypto/crypto_options.dart';

Encoder getEncoder(String? encoding) {
  final enc = CryptoDart.enc;
  switch (encoding) {
    case 'base64':
      return enc.base64;
    case 'hex':
      return enc.hex;
    case 'utf16':
      return enc.utf16;
    default:
      return enc.utf8;
  }
}

class CryptoUtils {
  static String cryptoJsAes({
    required String ciphertext,
    required String key,
    String? iv,
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
          .encrypt(ciphertext, key, iv: iv, options: cipherOptions)
          .toString(getEncoder(options?.encoding));
    }

    return CryptoDart.AES
        .decrypt(ciphertext, key, iv: iv, options: cipherOptions)
        .convertToString(getEncoder(options?.encoding ?? 'utf8'));
  }
}
