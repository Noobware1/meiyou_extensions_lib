final evpkdfSource =  '''
import 'dart:typed_data';
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
''';