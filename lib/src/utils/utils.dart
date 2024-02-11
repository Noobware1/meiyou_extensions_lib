import 'package:crypto_dart/hashers.dart';

int generateId(String name, String lang, int versionId) {
  final key = "${name.toLowerCase()}/$lang/$versionId";
  final bytes = MD5(key.codeUnits).bytes;
  return List.generate(8, (index) => (bytes[index] & 0xFF) << (8 * (7 - index)))
          .reduce((value, element) => value | element) &
      0x7FFFFFFFFFFFFFFF;
}

