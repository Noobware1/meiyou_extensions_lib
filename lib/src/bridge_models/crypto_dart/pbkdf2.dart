import 'package:dart_eval/dart_eval_bridge.dart';

final pkdf2Source = DartSource('package:crypto_dart/pkdf2.dart', '''
import 'dart:typed_data';
import 'package:crypto_dart/crypto_dart.dart';

Uint8List PBKDF2({
  String hasher = 'SHA256',
  int iterations = 250000,
  required int blockLength,
  int keySize = 4,
  required Uint8List salt,
  String keyEncoding = 'utf8',
  required String key,
}) {
  return CryptoDart.PBKDF2(
    hasher: hasher,
    iterations: iterations,
    blockLength: blockLength,
    keySize: keySize,
    salt: salt,
    keyEncoding: keyEncoding,
    key: key,
  );
}

''');
