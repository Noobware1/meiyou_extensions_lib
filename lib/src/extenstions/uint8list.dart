import 'dart:convert';
import 'dart:typed_data';

extension Uint8ListExtenstions on Uint8List {
  String get decodeToUtf8 => utf8.decode(this, allowMalformed: true);
}
