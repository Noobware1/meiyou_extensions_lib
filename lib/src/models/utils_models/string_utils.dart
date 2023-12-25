import 'package:meiyou_extensions_lib/src/extenstions/string.dart';

/// A class that provides utility functions for strings.
class StringUtils {
  /// turns a `String` to `Num`
  static num toNum(String str) => str.toNum();

  /// turns a `String` to `Num` but returns `null` if the string is not a valid number
  static num? toNumOrNull(String? str) => str?.toNumOrNull();

  /// turns a `String` to `int`
  static int toInt(String str) => str.toInt();

  /// turns a `String` to `int` but returns `null` if the string is not a valid number
  static int? toIntOrNull(String? str) => str?.toIntOrNull();

  /// turns a `String` to `double`
  static double toDouble(String str) => str.toDouble();

  /// turns a `String` to `double` but returns `null` if the string is not a valid number
  static double? toDoubleOrNull(String? str) => str?.toDoubleOrNull();

  /// trims all new lines from a string
  static String trimNewLines(String str) => str.trimNewLines();

  /// Returns a substring before the first occurrence of [pattern].
  /// If [pattern] is not found, returns the original string.
  static String substringBefore(String str, String pattern) =>
      str.substringBefore(pattern);

  /// Returns a substring after the first occurrence of [pattern].
  /// If [pattern] is not found, returns the original string.
  static String substringAfter(String str, String pattern) =>
      str.substringAfter(pattern);

  /// Returns a substring before the last occurrence of [pattern].
  /// If [pattern] is not found, returns the original string.
  static String substringBeforeLast(String str, String pattern) =>
      str.substringBeforeLast(pattern);

  /// Returns a substring after the last occurrence of [pattern].
  /// If [pattern] is not found, returns the original string.
  static String substringAfterLast(String str, String pattern) =>
      str.substringAfterLast(pattern);

  /// Truns the first letter of a string to upper case
  static String toUpperCaseFirst(String str) => str.toUpperCaseFirst();

  /// Uses the substring method to get a substring from a string but returns original string on error.
  static String substringSafe(String str, int start, [int? end]) =>
      str.substringSafe(start, end);

  /// trims all sides of a string
  static String trimAllSides(String str) => str.trim().trimLeft().trimRight();

  /// Turns any value to a string
  static String valueToString(dynamic value) => value.toString();
}
