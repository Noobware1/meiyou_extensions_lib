import 'package:crypto_dart/evpkdf.dart';
import 'package:dart_eval/dart_eval_bridge.dart';

final evpkdfSource = DartSource('package:crypto_dart/evpkdf.dart', '''
import 'dart:typed_data';
import 'hashers.dart';
import 'package:crypto_dart/crypto_dart.dart';

List<Uint8List> EvpKDF({
  required Uint8List password,
  required int keySize,
  required int ivSize,
  required Uint8List salt,
  required int iterations,
  required String hasher,
}) {
  return CryptoDart.EvpKDF(
    password: password,
    keySize: keySize,
    ivSize: ivSize,
    salt: salt,
    iterations: iterations,
    hasher: hasher,
  );
}
''');
