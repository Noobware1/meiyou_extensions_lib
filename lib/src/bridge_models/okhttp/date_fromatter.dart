import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

import 'package:okhttp/okhttp.dart';

/// dart_eval bimodal wrapper for [DateFromat]
class $DateFromat implements DateFromat, $Instance {
  /// Configure the [$DateFromat] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'DateFromat.', __$DateFromat$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.dateFromat);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'format',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'format': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [DateFromat] in an [$DateFromat]
  $DateFromat.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'format':
        return $String($value.format);

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  DateFromat get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final DateFromat $value;

  @override
  String get format => $value.format;

  static const __$DateFromat$new = $Function(_$DateFromat$new);
  static $Value? _$DateFromat$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final format = args[0]?.$value;
    return $DateFromat.wrap(DateFromat(format));
  }
}

/// dart_eval bimodal wrapper for [DateFormatter]
class $DateFormatter implements DateFormatter, $Instance {
  /// Configure the [$DateFormatter] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'DateFormatter.', __$DateFormatter$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.dateFormatter);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'date',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'date': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'format': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'dateFromat',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.dateFromat, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'parseWeekDay': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'format',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'parseMonth': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'format',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'parseYear': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'format',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'parseDuration': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'format',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'parseTimeZone': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'format',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [DateFormatter] in an [$DateFormatter]
  $DateFormatter.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'date':
        return $DateTime.wrap($value.date);

      case 'format':
        return __$format;
      case 'parseWeekDay':
        return __$parseWeekDay;
      case 'parseMonth':
        return __$parseMonth;
      case 'parseYear':
        return __$parseYear;
      case 'parseDuration':
        return __$parseDuration;
      case 'parseTimeZone':
        return __$parseTimeZone;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  DateFormatter get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final DateFormatter $value;

  @override
  DateTime get date => $value.date;

  @override
  String format(DateFromat dateFromat) => $value.format(
        dateFromat,
      );
  static const __$format = $Function(_$format);
  static $Value? _$format(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as DateFormatter;
    final dateFromat = args[0]?.$reified as DateFromat;
    final $result = obj.format(
      dateFromat,
    );
    return $String($result);
  }

  @override
  String? parseWeekDay(String format) => $value.parseWeekDay(
        format,
      );
  static const __$parseWeekDay = $Function(_$parseWeekDay);
  static $Value? _$parseWeekDay(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as DateFormatter;
    final format = args[0]?.$reified as String;
    final $result = obj.parseWeekDay(
      format,
    );
    return $result == null ? $null() : $String($result);
  }

  @override
  String? parseMonth(String format) => $value.parseMonth(
        format,
      );
  static const __$parseMonth = $Function(_$parseMonth);
  static $Value? _$parseMonth(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as DateFormatter;
    final format = args[0]?.$reified as String;
    final $result = obj.parseMonth(
      format,
    );
    return $result == null ? $null() : $String($result);
  }

  @override
  String? parseYear(String format) => $value.parseYear(
        format,
      );
  static const __$parseYear = $Function(_$parseYear);
  static $Value? _$parseYear(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as DateFormatter;
    final format = args[0]?.$reified as String;
    final $result = obj.parseYear(
      format,
    );
    return $result == null ? $null() : $String($result);
  }

  @override
  String? parseDuration(String format) => $value.parseDuration(
        format,
      );
  static const __$parseDuration = $Function(_$parseDuration);
  static $Value? _$parseDuration(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as DateFormatter;
    final format = args[0]?.$reified as String;
    final $result = obj.parseDuration(
      format,
    );
    return $result == null ? $null() : $String($result);
  }

  @override
  String? parseTimeZone(String format) => $value.parseTimeZone(
        format,
      );
  static const __$parseTimeZone = $Function(_$parseTimeZone);
  static $Value? _$parseTimeZone(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as DateFormatter;
    final format = args[0]?.$reified as String;
    final $result = obj.parseTimeZone(
      format,
    );
    return $result == null ? $null() : $String($result);
  }

  static const __$DateFormatter$new = $Function(_$DateFormatter$new);
  static $Value? _$DateFormatter$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final date = args[0]?.$value;
    return $DateFormatter.wrap(DateFormatter(date));
  }
}
