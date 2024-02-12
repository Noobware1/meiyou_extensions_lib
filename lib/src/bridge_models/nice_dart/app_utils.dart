import 'package:nice_dart/nice_dart.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/nice_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/video/subtitle_format.dart';
import 'package:meiyou_extensions_lib/src/extenstions/duration.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/subtitle_format.dart';
import 'package:meiyou_extensions_lib/src/utils/js_unpacker.dart';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

/// A utility class for performing common tasks.
///
/// The `AppUtils` class provides static methods for tasks such as sending HTTP requests, encoding query strings, parsing HTML and other utility functions.
///
/// This class cannot be instantiated. All its methods are static and should be called directly on the class.
///
class AppUtils {
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
    final endWith =
        runCatching(() => url.substring(url.length - 4)).getOrDefault('');
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
    return value != null && value != $null();
  }

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

/// dart_eval bimodal wrapper for [AppUtils]
class $AppUtils implements AppUtils, $Instance {
  /// Configure the [$AppUtils] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'AppUtils.', __$AppUtils$new.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'AppUtils.encode', __$static$method$encode.call);
    runtime.registerBridgeFunc($type.spec!.library, 'AppUtils.toDateTime',
        __$static$method$toDateTime.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'AppUtils.httpify', __$static$method$httpify.call);
    runtime.registerBridgeFunc(
        $type.spec!.library,
        'AppUtils.getBackgroundImage',
        __$static$method$getBackgroundImage.call);
    runtime.registerBridgeFunc($type.spec!.library, 'AppUtils.getMonthByName',
        __$static$method$getMonthByName.call);
    runtime.registerBridgeFunc(
        $type.spec!.library,
        'AppUtils.getSubtitleFormatFromUrl',
        __$static$method$getSubtitleFormatFromUrl.call);
    runtime.registerBridgeFunc($type.spec!.library, 'AppUtils.isNotNull',
        __$static$method$isNotNull.call);
    runtime.registerBridgeFunc($type.spec!.library, 'AppUtils.tryParseDuration',
        __$static$method$tryParseDuration.call);
    runtime.registerBridgeFunc($type.spec!.library, 'AppUtils.parseDuration',
        __$static$method$parseDuration.call);
    runtime.registerBridgeFunc($type.spec!.library, 'AppUtils.unpackJS',
        __$static$method$unpackJS.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(nice_dartTypes.appUtils);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {},
    fields: {},
    methods: {
      'encode': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'query',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'replaceWith',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'toDateTime': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'year',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [
              BridgeParameter(
                  'month',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'day',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'hour',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'minute',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'second',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'millisecond',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'microsecond',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: true),
      'httpify': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'getBackgroundImage': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'style',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'getMonthByName': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'getSubtitleFormatFromUrl': BridgeMethodDef(
          BridgeFunctionDef(
            returns:
                BridgeTypeAnnotation($SubtitleFormat.$type, nullable: true),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'isNotNull': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'evalAndStatements': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'statements',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.bool, []),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'evalOrStatements': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'statements',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.bool, []),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'tryParseDuration': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'format',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'parseDuration': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'format',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'unpackJS': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'packedJS',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [AppUtils] in an [$AppUtils]
  $AppUtils.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  AppUtils get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final AppUtils $value;

  static const __$static$method$encode = $Function(_$static$method$encode);
  static $Value? _$static$method$encode(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final query = args[0]?.$reified as String;
    final replaceWith = args[1]?.$reified as String? ?? '%20';
    final $result = AppUtils.encode(query, replaceWith);
    return $String($result);
  }

  static const __$static$method$toDateTime =
      $Function(_$static$method$toDateTime);
  static $Value? _$static$method$toDateTime(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final year = args[0]?.$reified as int;
    final month = args[1]?.$reified as int?;
    final day = args[2]?.$reified as int?;
    final hour = args[3]?.$reified as int?;
    final minute = args[4]?.$reified as int?;
    final second = args[5]?.$reified as int?;
    final millisecond = args[6]?.$reified as int?;
    final microsecond = args[7]?.$reified as int?;
    final $result = AppUtils.toDateTime(
      year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
      microsecond: microsecond,
    );
    return $DateTime.wrap($result);
  }

  static const __$static$method$httpify = $Function(_$static$method$httpify);
  static $Value? _$static$method$httpify(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$reified as String;
    final $result = AppUtils.httpify(url);
    return $String($result);
  }

  static const __$static$method$getBackgroundImage =
      $Function(_$static$method$getBackgroundImage);
  static $Value? _$static$method$getBackgroundImage(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final style = args[0]?.$reified as String;
    final $result = AppUtils.getBackgroundImage(style);
    return $String($result);
  }

  static const __$static$method$getMonthByName =
      $Function(_$static$method$getMonthByName);
  static $Value? _$static$method$getMonthByName(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$reified as String;
    final $result = AppUtils.getMonthByName(name);
    return $int($result);
  }

  static const __$static$method$getSubtitleFormatFromUrl =
      $Function(_$static$method$getSubtitleFormatFromUrl);
  static $Value? _$static$method$getSubtitleFormatFromUrl(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$reified as String;
    final $result = AppUtils.getSubtitleFormatFromUrl(url);
    return $result == null ? $null() : $SubtitleFormat.wrap($result);
  }

  static const __$static$method$isNotNull =
      $Function(_$static$method$isNotNull);
  static $Value? _$static$method$isNotNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = args[0]?.$reified as dynamic;
    final $result = AppUtils.isNotNull(value);
    return $bool($result);
  }

  static const __$static$method$tryParseDuration =
      $Function(_$static$method$tryParseDuration);
  static $Value? _$static$method$tryParseDuration(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = args[0]?.$reified as String;
    final format = args[1]?.$reified as String;
    final $result = AppUtils.tryParseDuration(value, format);
    return $result == null ? $null() : $Duration.wrap($result);
  }

  static const __$static$method$parseDuration =
      $Function(_$static$method$parseDuration);
  static $Value? _$static$method$parseDuration(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = args[0]?.$reified as String;
    final format = args[1]?.$reified as String;
    final $result = AppUtils.parseDuration(value, format);
    return $Duration.wrap($result);
  }

  static const __$static$method$unpackJS = $Function(_$static$method$unpackJS);
  static $Value? _$static$method$unpackJS(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final packedJS = args[0]?.$reified as String;
    final $result = AppUtils.unpackJS(packedJS);
    return $result == null ? $null() : $String($result);
  }

  static const __$AppUtils$new = $Function(_$AppUtils$new);
  static $Value? _$AppUtils$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $AppUtils.wrap(AppUtils());
  }
}
