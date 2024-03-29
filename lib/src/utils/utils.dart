import 'dart:convert';

import 'package:crypto_dart/hashers.dart';
import 'package:nice_dart/nice_dart.dart';
import 'package:okhttp/okhttp.dart';

int generateId(String name, String lang, int versionId) {
  final key = "${name.toLowerCase()}/$lang/$versionId";
  final bytes = MD5(key.codeUnits).bytes;
  return List.generate(8, (index) => (bytes[index] & 0xFF) << (8 * (7 - index)))
          .reduce((value, element) => value | element) &
      0x7FFFFFFFFFFFFFFF;
}

String jsonPrettyEncode(Object? object) {
  return JsonEncoder.withIndent('  ').convert(object);
}

Headers headersFromJson(Map<String, dynamic> json) {
  return Headers.Builder().let((it) {
    for (var entry in json.entries) {
      for (var element in (entry.value as List)) {
        it.add(entry.key, element);
      }
    }
    return it.build();
  });
}
