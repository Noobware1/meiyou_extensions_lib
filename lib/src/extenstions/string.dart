// import 'dart:convert';
import 'dart:convert';
import 'dart:typed_data';

extension StringExtenstions on String {
  Uint8List decodeBase64() => base64Decode(this);

  num toNum() => num.parse(this);

  num? toNumOrNull() => num.tryParse(this);

  int toInt() => int.parse(this);

  int? toIntOrNull() => int.tryParse(this);

  double toDouble() => double.parse(this);

  double? toDoubleOrNull() => double.tryParse(this);

  String trimNewLines() {
    return replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  // Uint8List decodeBase64() => base64.decode(this);

  Uint8List toUint8List() => Uint8List.fromList(codeUnits);

  // List<int> decodeHex() {
  //   assert(length % 2 == 0, "Must have an even length");
  //   return RegExp('.{1,2}').allMatches(this).map((match) {
  //     return int.parse(match.group(0)!, radix: 16);
  //   }).toList();
  // }

  String substringBefore(String pattern) {
    int i;
    i = indexOf(pattern);
    if (i == -1) {
      return '';
    } else {
      return substring(0, i);
    }
  }

  String substringAfter(String pattern) {
    int i;
    i = indexOf(pattern);
    final len = i + pattern.length;
    if (i == -1) return this;

    return substring(len, length).trim();
  }

  String substringBeforeLast(String pattern) {
    int i;
    i = lastIndexOf(pattern);
    if (i == -1) return this;
    return substring(0, i);
  }

  String substringAfterLast(String pattern) {
    int i;
    i = lastIndexOf(pattern);
    final len = i + pattern.length;
    if (i == -1) return this;

    return substring(len, length).trim();
  }

  String toUpperCaseFirst() {
    final upper = this[0].toUpperCase();
    return upper + substring(1, length).toLowerCase();
  }

  String substringSafe(int start, [int? end]) {
    try {
      return substring(start, end);
    } catch (_) {
      return '';
    }
  }
}
