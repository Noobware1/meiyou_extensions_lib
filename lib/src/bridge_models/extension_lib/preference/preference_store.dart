import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/preference/preference.dart';

import 'package:meiyou_extensions_lib/src/preference/preference_store.dart';
import 'package:nice_dart/nice_dart.dart';

import 'preference.dart';

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
      'getKeys': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.iterable, [
                  BridgeTypeRef(CoreTypes.string, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
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
                  false)
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
                  false)
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
                  false)
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
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getStringList': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.preference, [
                  BridgeTypeRef(CoreTypes.list, [
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
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: false),
                  false)
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
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function),
                      nullable: false),
                  false),
              BridgeParameter(
                  'deserializer',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      'getEnum': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.preference, [
                  BridgeTypeRef.ref('T', []),
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
                  BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'values',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('T', []),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      'getAll': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeRef(CoreTypes.string, []),
                  BridgeTypeRef(CoreTypes.dynamic, []),
                ]),
                nullable: false),
            params: [],
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
      case 'getKeys':
        return __$getKeys;
      case 'getString':
        return __$getString;
      case 'getInt':
        return __$getInt;
      case 'getDouble':
        return __$getDouble;
      case 'getBool':
        return __$getBool;
      case 'getStringList':
        return __$getStringList;
      case 'getObject':
        return __$getObject;
      case 'getEnum':
        return __$getEnum;
      case 'getAll':
        return __$getAll;
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
  Iterable<String> getKeys() => $value.getKeys();
  static const __$getKeys = $Function(_$getKeys);
  static $Value? _$getKeys(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final $result = obj.getKeys();
    return $Iterable.wrap($result);
  }

  @override
  Preference<String> getString(String key, String defaultValue) =>
      $value.getString(
        key,
        defaultValue,
      );
  static const __$getString = $Function(_$getString);
  static $Value? _$getString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as String;
    final $result = obj.getString(
      key,
      defaultValue,
    );
    return $Preference.wrap($result, (val) => $String(val));
  }

  @override
  Preference<int> getInt(String key, int defaultValue) => $value.getInt(
        key,
        defaultValue,
      );
  static const __$getInt = $Function(_$getInt);
  static $Value? _$getInt(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as int;
    final $result = obj.getInt(
      key,
      defaultValue,
    );
    return $Preference.wrap($result, (val) => $int(val));
  }

  @override
  Preference<double> getDouble(String key, double defaultValue) =>
      $value.getDouble(
        key,
        defaultValue,
      );
  static const __$getDouble = $Function(_$getDouble);
  static $Value? _$getDouble(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as double;
    final $result = obj.getDouble(
      key,
      defaultValue,
    );
    return $Preference.wrap($result, (val) => $double(val));
  }

  @override
  Preference<bool> getBool(String key, bool defaultValue) => $value.getBool(
        key,
        defaultValue,
      );
  static const __$getBool = $Function(_$getBool);
  static $Value? _$getBool(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as bool;
    final $result = obj.getBool(
      key,
      defaultValue,
    );
    return $Preference.wrap($result, (val) => $bool(val));
  }

  @override
  Preference<List<String>> getStringList(
          String key, List<String> defaultValue) =>
      $value.getStringList(
        key,
        defaultValue,
      );
  static const __$getStringList = $Function(_$getStringList);
  static $Value? _$getStringList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$reified.cast<String>();
    final $result = obj.getStringList(
      key,
      defaultValue,
    );
    return $Preference.wrap(
        $result, (val) => $List.wrap(val.mapList((e) => $String(e))));
  }

  @override
  Preference<T> getObject<T>(String key, T defaultValue,
          Serializer<T> serializer, Deserializer<T> deserializer) =>
      $value.getObject(
        key,
        defaultValue,
        serializer,
        deserializer,
      );
  static const __$getObject = $Function(_$getObject);
  static $Value? _$getObject(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$reified;
    final serializer = args[2] as EvalCallable;
    final deserializer = args[3]?.$reified as EvalCallable;
    final $result = obj.getObject(
      key,
      defaultValue,
      (obj) => serializer.call(runtime, null, [runtime.wrap(obj)])!.$value,
      (str) => deserializer.call(runtime, null, [$String(str)]),
    );
    return $Preference.wrap($result, (val) => val);
  }

  @override
  Map<String, dynamic> getAll() => $value.getAll();
  static const __$getAll = $Function(_$getAll);
  static $Value? _$getAll(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final $result = obj.getAll();
    return $Map.wrap($result.map((key, value) {
      // ignore: no_leading_underscores_for_local_identifiers
      final $Value? _value;
      if (value is bool) {
        _value = $bool(value);
      } else if (value is double) {
        _value = $double(value);
      } else if (value is int) {
        _value = $int(value);
      } else if (value is String) {
        _value = $String(value);
      } else if (value is List) {
        _value = $List.wrap(value.map((e) => $String(e)).toList());
      } else {
        _value = null;
      }

      return $MapEntry.wrap(MapEntry($String(key), _value));
    }));
  }

  @override
  Preference<T> getEnum<T extends Enum>(
          String key, T defaultValue, List<T> values) =>
      $value.getEnum(key, defaultValue, values);

  static const __$getEnum = $Function(_$getEnum);
  static $Value? _$getEnum(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as PreferenceStore;
    final key = args[0]?.$value as String;
    final Enum defaultValue = args[1]?.$value;
    final values = (args[2]?.$reified as List).cast<Enum>();
    final $result = obj.getEnum(
      key,
      defaultValue,
      values,
    );
    return $Preference.wrap($result, (val) => runtime.wrap(val));
  }
}
