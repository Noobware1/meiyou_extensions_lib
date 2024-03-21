import 'dart:async';

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';

import 'package:meiyou_extensions_lib/src/preference/preference.dart';

typedef _Wrapper<T> = $Value? Function(T);

/// dart_eval bimodal wrapper for [Preference]
class $Preference<T> implements Preference<T>, $Instance {
  /// Configure the [$Preference] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.preference);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'Preference.isPrivate',
        __$static$method$isPrivate.call);
    runtime.registerBridgeFunc($type.spec!.library, 'Preference.privateKey',
        __$static$method$privateKey.call);
    runtime.registerBridgeFunc($type.spec!.library, 'Preference.isAppState',
        __$static$method$isAppState.call);
    runtime.registerBridgeFunc($type.spec!.library, 'Preference.appStateKey',
        __$static$method$appStateKey.call);
  }

  static const $declaration = BridgeClassDef(
    BridgeClassType($type,
        $extends: null,
        $implements: [],
        isAbstract: true,
        generics: {
          'T': BridgeGenericParam(),
        }),
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
          isStatic: true),
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
          isStatic: true),
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
          isStatic: true),
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
          isStatic: true),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Preference] in an [$Preference]
  $Preference.wrap(this.$value, this._wrapper);

  final _Wrapper<T> _wrapper;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'key':
        return __$key;
      case 'get':
        return $Function(
            (runtime, target, args) => _$get(runtime, target, args, _wrapper));
      case 'set':
        return __$set;
      case 'isSet':
        return __$isSet;
      case 'delete':
        return __$delete;
      case 'defaultValue':
        return $Function((runtime, target, args) =>
            _$defaultValue(runtime, target, args, _wrapper));
      case 'changes':
        return $Function((runtime, target, args) =>
            _$changes(runtime, target, args, (value) => _wrapper(value)));
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
  static $Value? _$get<T>(Runtime runtime, $Value? target, List<$Value?> args,
      _Wrapper<T> wrapper) {
    final obj = target?.$value as Preference;
    final $result = obj.get();
    return wrapper($result);
  }

  @override
  void set(T value) => $value.set(
        value,
      );
  static const __$set = $Function(_$set);
  static $Value? _$set(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Preference;
    final value = args[0]!.$reified;
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
  static $Value? _$defaultValue<T>(Runtime runtime, $Value? target,
      List<$Value?> args, _Wrapper<T> wrapper) {
    final obj = target?.$value as Preference;
    final $result = obj.defaultValue();
    return wrapper($result);
  }

  static const __$static$method$isPrivate =
      $Function(_$static$method$isPrivate);
  static $Value? _$static$method$isPrivate(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final key = args[0]?.$value as String;
    final $result = Preference.isPrivate(
      key,
    );
    return $bool($result);
  }

  static const __$static$method$privateKey =
      $Function(_$static$method$privateKey);
  static $Value? _$static$method$privateKey(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final key = args[0]?.$value as String;
    final $result = Preference.privateKey(
      key,
    );
    return $String($result);
  }

  static const __$static$method$isAppState =
      $Function(_$static$method$isAppState);
  static $Value? _$static$method$isAppState(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final key = args[0]?.$value as String;
    final $result = Preference.isAppState(
      key,
    );
    return $bool($result);
  }

  static const __$static$method$appStateKey =
      $Function(_$static$method$appStateKey);
  static $Value? _$static$method$appStateKey(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final key = args[0]?.$value as String;
    final $result = Preference.appStateKey(
      key,
    );
    return $String($result);
  }

  @override
  Stream<T> changes() => $value.changes();
  static $Value? _$changes(Runtime runtime, $Value? target, List<$Value?> args,
      _Wrapper<dynamic> wrapper) {
    final obj = target?.$value as Preference;
    final $result = obj.changes().transform(_$StreamTransformer(wrapper));
    return $Stream.wrap($result);
  }
}

class _$StreamTransformer extends StreamTransformerBase<dynamic, $Value?> {
  final $Value? Function(dynamic) _wrapper;

  _$StreamTransformer(this._wrapper);

  @override
  Stream<$Value?> bind(Stream stream) => stream.map((event) => _wrapper(event));
}
