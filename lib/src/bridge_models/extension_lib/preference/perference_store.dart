import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/perference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/preference/perference.dart';

import 'package:meiyou_extensions_lib/src/preference/perference_store.dart';

/// dart_eval bimodal wrapper for [PreferenceStore]
class $PreferenceStore implements PreferenceStore, $Instance {
  /// Configure the [$PreferenceStore] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.preferenceStore);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {},
    fields: {},
    methods: {
      'getString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.preference, [
                  BridgeTypeRef(CoreTypes.string, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'key',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getInt': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.preference, [
                  BridgeTypeRef(CoreTypes.int, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'key',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getDouble': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.preference, [
                  BridgeTypeRef(CoreTypes.double, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'key',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                      nullable: false),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getBool': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.preference, [
                  BridgeTypeRef(CoreTypes.bool, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'key',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getStringSet': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.preference, [
                  BridgeTypeRef(CoreTypes.iterable, [
                    BridgeTypeRef(CoreTypes.string, []),
                  ]),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'key',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: false),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getObject': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.preference, [
                  BridgeTypeRef.ref('T', []),
                ]),
                nullable: false),
            generics: {
              'T': BridgeGenericParam(),
            },
            params: [
              BridgeParameter(
                  'key',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'serializer',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'deserializer',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
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

  /// Wrap an [PreferenceStore] in an [$PreferenceStore]
  $PreferenceStore.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'getString':
        return __$getString;
      case 'getInt':
        return __$getInt;
      case 'getDouble':
        return __$getDouble;
      case 'getBool':
        return __$getBool;
      case 'getStringSet':
        return __$getStringSet;
      case 'getObject':
        return __$getObject;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  PreferenceStore get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final PreferenceStore $value;

  @override
  Preference<String> getString(String key, [String defaultValue = ""]) =>
      $value.getString(key, defaultValue);
  static const __$getString = $Function(_$getString);
  static $Value? _$getString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as String? ?? "";
    final $result = obj.getString(key, defaultValue);
    return $Preference.wrap(
        (val) => val is $Value ? val : $String(val as String), $result);
  }

  @override
  Preference<int> getInt(String key, [int defaultValue = 0]) => $value.getInt(
        key,
        defaultValue,
      );
  static const __$getInt = $Function(_$getInt);
  static $Value? _$getInt(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as int? ?? 0;
    final $result = obj.getInt(key, defaultValue);
    return $Preference.wrap(
        (val) => val is $Value ? val : $int(val as int), $result);
  }

  @override
  Preference<double> getDouble(String key, [double defaultValue = 0.0]) =>
      $value.getDouble(
        key,
        defaultValue,
      );
  static const __$getDouble = $Function(_$getDouble);
  static $Value? _$getDouble(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as double? ?? 0.0;
    final $result = obj.getDouble(key, defaultValue);
    return $Preference.wrap(
        (val) => val is $Value ? val : $double(val as double), $result);
  }

  @override
  Preference<bool> getBool(String key, [bool defaultValue = false]) =>
      $value.getBool(key, defaultValue);
  static const __$getBool = $Function(_$getBool);
  static $Value? _$getBool(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as bool? ?? false;
    final $result = obj.getBool(key, defaultValue);
    return $Preference.wrap(
        (val) => val is $Value ? val : $bool(val as bool), $result);
  }

  @override
  Preference<List<String>> getStringSet(String key,
          [List<String> defaultValue = const []]) =>
      $value.getStringSet(key, defaultValue);
  static const __$getStringSet = $Function(_$getStringSet);
  static $Value? _$getStringSet(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$reified as List<String>? ?? const [];
    final $result = obj.getStringSet(key, defaultValue);
    return $Preference.wrap(
        (val) => val is $Value
            ? val
            : $Iterable.wrap(
                (val as Iterable).map(
                  (e) => $String(e),
                ),
              ),
        $result);
  }

  @override
  Preference<T> getObject<T>(String key, T defaultValue,
          String Function(T) serializer, T Function(String) deserializer) =>
      $value.getObject(key, defaultValue, serializer, deserializer);
  static const __$getObject = $Function(_$getObject);
  static $Value? _$getObject(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1];
    final serializer = args[2] as EvalCallable;
    final deserializer = args[3] as EvalCallable;
    final $result = obj.getObject(
      key,
      defaultValue,
      (c) => serializer.call(runtime, null, [c])!.$value as String,
      (e) => deserializer.call(runtime, null, [$String(e)]),
    );
    return $Preference.wrap((val) => val, $result);
  }
}
