import 'dart:async';

import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/extenstions/duration.dart';
import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:meiyou_extensions_lib/src/extenstions/string.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/subtitle_format.dart';
import 'package:meiyou_extensions_lib/src/utils/js_unpacker.dart';
import 'package:ok_http_dart/dom.dart';
import 'package:ok_http_dart/ok_http_dart.dart';

/// A utility class for performing common tasks.
///
/// The `AppUtils` class provides static methods for tasks such as sending HTTP requests, encoding query strings, parsing HTML and other utility functions.
///
/// This class cannot be instantiated. All its methods are static and should be called directly on the class.
///
class AppUtils {
  /// Returns a list of `ElementObject` objects that match the specified CSS selector.
  /// The `select` function takes the following parameters:
  /// * `selector`: A string representing the CSS selector to match
  /// It returns a list of `ElementObject` objects that match the specified CSS selector.

  static List<String> selectMultiAttr(List<Element> elements, String attr) {
    return elements.mapAsList((it) => it.attr(attr));
  }

  /// Returns a list of `Element` objects that match the specified CSS selector.
  /// The `select` function takes the following parameters:
  /// * `selector`: A string representing the CSS selector to match
  /// It returns a list of `Element` objects that match the specified CSS selector.
  static List<String> selectMultiText(List<Element> elements) {
    return elements.mapAsList((it) => it.text);
  }

  /// Encodes a query string for use in a URL.
  ///
  /// The `encode` function takes the following parameters:
  /// * `query`: A string representing the query to encode.
  /// * `replaceWith`: An optional string representing the character to replace '+' with. The default is '%20'.
  ///
  /// It returns a string representing the encoded query.
  ///
  /// This function uses the `Uri.encodeQueryComponent` method to encode the query, and then replaces '+' with the specified character.

  static String encode(String query, [String replaceWith = '%20']) =>
      Uri.encodeQueryComponent(query).replaceAll('+', replaceWith);

  /// Converts a year, month, and day to a `DateTime` object.
  ///
  /// The `toDateTime` function takes the following parameters:
  /// * `year`: An integer representing the year.
  /// * `month`: An optional integer representing the month. The default is 1.
  /// * `day`: An optional integer representing the day. The default is 1.
  ///
  /// It returns a `DateTime` object representing the specified date.
  ///
  /// This function uses the `DateTime` constructor to create the `DateTime` object.

  static DateTime toDateTime(
    int year, {
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return DateTime(year, month ?? 1, day ?? 1, hour ?? 0, minute ?? 0,
        second ?? 0, millisecond ?? 0, microsecond ?? 0);
  }

  /// Converts a URL to HTTP if it starts with '//'.
  ///
  /// The `httpify` function takes a string representing a URL and returns the URL with 'https:' prepended if it starts with '//'.
  static String httpify(String url) =>
      url.startsWith('//') ? 'https:$url' : url;

  /// Extracts the background image URL from a CSS style string.
  ///
  /// The `getBackgroundImage` function takes a string representing a CSS style and returns the URL of the background image.
  static String getBackgroundImage(String style) {
    return RegExp(r"""background-image:\s?url\(['"]?(.*?)['"]?\);""")
            .firstMatch(style)
            ?.group(1)
            ?.replaceAll('&quot;', '')
            .trim() ??
        '';
  }

  /// Converts a month name to a month number.
  ///
  /// The `getMonthByName` function takes a string representing a month name and returns the corresponding month number.
  static int getMonthByName(String name) {
    name = name.substring(0, 3).toLowerCase();

    Map<String, int> months = {
      'jan': 1,
      'feb': 2,
      'mar': 3,
      'apr': 4,
      'may': 5,
      'jun': 6,
      'jul': 7,
      'aug': 8,
      'sep': 9,
      'oct': 10,
      'nov': 11,
      'dec': 12,
    };

    return months[name]!;
  }

  /// Determines the subtitle format based on the URL.
  ///
  /// The `getSubtitleFormatFromUrl` function takes the following parameter:
  /// * `url`: A string representing the URL of the subtitle file.
  ///
  /// It returns a `SubtitleFormat` representing the format of the subtitle file, or `null` if the format could not be determined.
  ///
  /// This function checks the last 4 characters of the URL to determine the format. If the URL ends with '.vtt', '.srt', or '.ass', it returns the corresponding `SubtitleFormat`. Otherwise, it returns `null`.
  static SubtitleFormat? getSubtitleFormatFromUrl(String url) {
    final endWith = url.substringSafe(url.length - 4);
    switch (endWith) {
      case '.vtt':
        return SubtitleFormat.vtt;
      case '.srt':
        return SubtitleFormat.srt;
      case '.ass':
        return SubtitleFormat.ass;
      default:
        return null;
    }
  }

  /// Checks if a value is not null and not empty (if it is a list).
  ///
  /// The `isNotNull` function takes the following parameter:
  /// * `value`: A dynamic value to check.
  ///
  /// It returns a boolean indicating whether the value is not null and not empty (if it is a list).
  ///
  /// This function checks if the value is a list. If it is, it returns whether the list is not empty. Otherwise, it returns whether the value is not null.
  static bool isNotNull(dynamic value) {
    if (value is List) return value.isNotEmpty;
    return value != null && value != const $null();
  }

  /// Evaluates a list of boolean statements using logical AND.
  ///
  /// The `evalAndStatements` function takes the following parameter:
  /// * `statements`: A list of boolean values to evaluate.
  ///
  /// It returns a boolean indicating whether all the statements are `true`.
  ///
  /// This function uses the `List.firstWhere` method to find the first statement that is `false`. If such a statement is found, it returns `false`. Otherwise, it returns `true`.
  static bool evalAndStatements(List<bool> statements) {
    final pass = statements.tryfirstWhere((e) => e == false);
    return pass != null ? false : true;
  }

  /// Evaluates a list of boolean statements using logical OR.
  ///
  /// The `evalOrStatements` function takes the following parameter:
  /// * `statements`: A list of boolean values to evaluate.
  ///
  /// It returns a boolean indicating whether any of the statements are `true`.
  ///
  /// This function uses the `List.firstWhere` method to find the first statement that is `true`. If such a statement is found, it returns `true`. Otherwise, it returns `false`.

  static bool evalOrStatements(List<bool> statements) {
    final pass = statements.tryfirstWhere((e) => e == true);
    return pass != null ? true : false;
  }

  /// Executes a synchronous function and returns its result or null if an exception occurs.
  ///
  /// * `fun`: The synchronous function to execute.
  ///
  /// Returns the result of the function or null if an exception occurs.
  static T? trySync<T>(T Function() fun) {
    try {
      return fun();
    } catch (e) {
      return null;
    }
  }

  // /// Executes an asynchronous function and returns its result or null if an exception occurs.
  // ///
  // /// * `fun`: The asynchronous function to execute.
  // ///
  // /// Returns the result of the function or null if an exception occurs.
  // static Future<T?> tryAsync<T>(Future<T> Function() fun) async {
  //   try {
  //     return await fun();
  //   } catch (e) {
  //     return null;
  //   }
  // }

  /// Attempts to parse a duration from a string using the specified format.
  ///
  /// * `value`: The string representing the duration.
  /// * `format`: The format of the duration string.
  ///
  /// Returns a `Duration` object if parsing is successful, or null if an exception occurs during parsing.
  static Duration? tryParseDuration(String value, String format) {
    return DurationUtils.tryParse(value, format);
  }

  /// Parses a duration from a string using the specified format.
  ///
  /// * `value`: The string representing the duration.
  /// * `format`: The format of the duration string.
  ///
  /// Returns a `Duration` object.
  static Duration parseDuration(String value, String format) {
    return DurationUtils.parse(value, format);
  }

  /// Unpacks JavaScript code from a packed string.
  ///
  /// * `packedJS`: The packed JavaScript code.
  ///
  /// Returns the unpacked JavaScript code as a string, or null if an exception occurs during unpacking.
  static String? unpackJS(String packedJS) {
    return JSUnpacker(packedJS).unpack();
  }
}
