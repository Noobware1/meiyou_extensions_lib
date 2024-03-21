import 'package:dart_eval/dart_eval_bridge.dart';

final pkdf2Source = DartSource('package:crypto_dart/pkdf2.dart', '''
import 'dart:typed_data';
import 'package:crypto_dart/crypto_dart.dart';

Uint8List PBKDF2({
  required Uint8List salt,
  required dynamic password,
  String hasher = 'SHA256',
  int iterations = 250000,
  int keySize = 4,
  int? blockLength,
}) {
  return CryptoDart.PBKDF2(
    salt: salt,
    password: password,
    hasher: hasher,
    iterations: iterations,
    keySize: keySize,
    blockLength: blockLength,
  );
}

''');
