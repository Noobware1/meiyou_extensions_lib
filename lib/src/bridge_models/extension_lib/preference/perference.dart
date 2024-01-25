import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';

import 'package:meiyou_extensions_lib/src/preference/perference.dart';

/// dart_eval bimodal wrapper for [Preference]
class $Preference<T> implements Preference<T>, $Instance {
  /// Configure the [$Preference] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  final $Value? Function(dynamic value) $get;

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.preference);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
      generics: {
        'T': BridgeGenericParam(),
      },
    ),
    constructors: {},
    fields: {},
    methods: {
      'key': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'get': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            params: [],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      'set': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      'isSet': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'delete': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'defaultValue': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            params: [],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      'isPrivate': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'key',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'privateKey': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'key',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'isAppState': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'key',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'appStateKey': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'key',
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

  /// Wrap an [Preference] in an [$Preference]
  $Preference.wrap(this.$get, this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'key':
        return __$key;
      case 'get':
        return __$get;
      case 'set':
        return __$set;
      case 'isSet':
        return __$isSet;
      case 'delete':
        return __$delete;
      case 'defaultValue':
        return __$defaultValue;
      case 'isPrivate':
        return __$isPrivate;
      case 'privateKey':
        return __$privateKey;
      case 'isAppState':
        return __$isAppState;
      case 'appStateKey':
        return __$appStateKey;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Preference<T> get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Preference<T> $value;

  @override
  String key() => $value.key();
  static const __$key = $Function(_$key);
  static $Value? _$key(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Preference;
    final $result = obj.key();
    return $String($result);
  }

  @override
  T get() => $value.get();
  late final __$get = $Function(_$get);
  $Value? _$get(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Preference;
    final $result = obj.get();
    return $get($result);
  }

  @override
  void set(T value) => $value.set(
        value,
      );
  static const __$set = $Function(_$set);
  static $Value? _$set(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Preference;
    final value = args[0]?.$reified;
    obj.set(value);
    return null;
  }

  @override
  bool isSet() => $value.isSet();
  static const __$isSet = $Function(_$isSet);
  static $Value? _$isSet(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Preference;
    final $result = obj.isSet();
    return $bool($result);
  }

  @override
  void delete() => $value.delete();
  static const __$delete = $Function(_$delete);
  static $Value? _$delete(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Preference;
    obj.delete();
    return null;
  }

  @override
  T defaultValue() => $value.defaultValue();
  static const __$defaultValue = $Function(_$defaultValue);
  static $Value? _$defaultValue(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Preference;
    final $result = obj.defaultValue();
    return $result;
  }

  @override
  bool isPrivate(String key) => $value.isPrivate(key);
  static const __$isPrivate = $Function(_$isPrivate);
  static $Value? _$isPrivate(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Preference;
    final key = args[0]?.$value as String;
    final $result = obj.isPrivate(key);
    return $bool($result);
  }

  @override
  String privateKey(String key) => $value.privateKey(key);
  static const __$privateKey = $Function(_$privateKey);
  static $Value? _$privateKey(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Preference;
    final key = args[0]?.$value as String;
    final $result = obj.privateKey(key);
    return $String($result);
  }

  @override
  bool isAppState(String key) => $value.isAppState(key);
  static const __$isAppState = $Function(_$isAppState);
  static $Value? _$isAppState(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Preference;
    final key = args[0]?.$value as String;
    final $result = obj.isAppState(key);
    return $bool($result);
  }

  @override
  String appStateKey(String key) => $value.appStateKey(
        key,
      );
  static const __$appStateKey = $Function(_$appStateKey);
  static $Value? _$appStateKey(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Preference;
    final key = args[0]?.$value as String;
    final $result = obj.appStateKey(key);
    return $String($result);
  }
}
