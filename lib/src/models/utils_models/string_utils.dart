import 'package:meiyou_extenstions/src/extenstions/string.dart';

class StringUtils {
  static num toNum(String str) => str.toNum();

  static num? toNumOrNull(String str) => str.toNumOrNull();

  static int toInt(String str) => str.toInt();

  static int? toIntOrNull(String str) => str.toIntOrNull();

  static double toDouble(String str) => str.toDouble();

  static double? toDoubleOrNull(String str) => str.toDoubleOrNull();

  static String trimNewLines(String str) => str.trimNewLines();

  // List<int> decodeHex() {
  //   assert(length % 2 == 0, "Must have an even length");
  //   return RegExp('.{1,2}').allMatches(this).map((match) {
  //     return int.parse(match.group(0)!, radix: 16);
  //   }).toList();
  // }

  static String substringBefore(String str, String pattern) =>
      str.substringBefore(pattern);

  static String substringAfter(String str, String pattern) =>
      str.substringAfter(pattern);

  static String substringBeforeLast(String str, String pattern) =>
      str.substringBeforeLast(pattern);

  static String substringAfterLast(String str, String pattern) =>
      str.substringAfterLast(pattern);

  static String toUpperCaseFirst(String str) => str.toUpperCaseFirst();

  static String substringSafe(String str, int start, [int? end]) =>
      str.substringSafe(start, end);

  static String trim(String str) => str.trim();

  static String trimAllSides(String str) => str.trim().trimLeft().trimRight();

  static String valueToString(dynamic value) => value.toString();
}
