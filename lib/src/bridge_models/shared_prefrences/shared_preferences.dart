import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/shared_prefrences/plugin.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// dart_eval bimodal wrapper for [SharedPreferences]
class $SharedPreferences implements SharedPreferences, $Instance {
  /// Configure the [$SharedPreferences] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library,
        'SharedPreferences.setPrefix', __$static$method$setPrefix.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'SharedPreferences.getInstance', __$static$method$getInstance.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(SharedPreferencesTypes.sharedPreferences);

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
      'setPrefix': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'prefix',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [
              BridgeParameter(
                  'allowList',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: true),
      'getInstance': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(SharedPreferencesTypes.sharedPreferences, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: true),
      'getKeys': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(CoreTypes.string, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'get': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.object, []),
                nullable: true),
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
      'getBool': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: true),
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
      'getInt': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: true),
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
      'getDouble': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                nullable: true),
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
      'getString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
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
      'containsKey': BridgeMethodDef(
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
      'getStringList': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(CoreTypes.string, []),
                ]),
                nullable: true),
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
      'setBool': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
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
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'setInt': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
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
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'setDouble': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
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
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'setString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
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
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'setStringList': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
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
                  'value',
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
      'remove': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(CoreTypes.bool, []),
                ]),
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
      'clear': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(CoreTypes.bool, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'reload': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(CoreTypes.voidType, []),
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

  /// Wrap an [SharedPreferences] in an [$SharedPreferences]
  $SharedPreferences.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'getKeys':
        return __$getKeys;
      case 'get':
        return __$get;
      case 'getBool':
        return __$getBool;
      case 'getInt':
        return __$getInt;
      case 'getDouble':
        return __$getDouble;
      case 'getString':
        return __$getString;
      case 'containsKey':
        return __$containsKey;
      case 'getStringList':
        return __$getStringList;
      case 'setBool':
        return __$setBool;
      case 'setInt':
        return __$setInt;
      case 'setDouble':
        return __$setDouble;
      case 'setString':
        return __$setString;
      case 'setStringList':
        return __$setStringList;
      case 'remove':
        return __$remove;
      case 'clear':
        return __$clear;
      case 'reload':
        return __$reload;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  SharedPreferences get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final SharedPreferences $value;

  @override
  Set<String> getKeys() => $value.getKeys();
  static const __$getKeys = $Function(_$getKeys);
  static $Value? _$getKeys(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final $result = obj.getKeys();
    return $List.wrap($result.toList());
  }

  @override
  Object? get(String key) => $value.get(key);
  static const __$get = $Function(_$get);
  static $Value? _$get(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final $result = obj.get(key);
    return $result == null ? $null() : $Object($result);
  }

  @override
  bool? getBool(String key) => $value.getBool(key);
  static const __$getBool = $Function(_$getBool);
  static $Value? _$getBool(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final $result = obj.getBool(key);
    return $result == null ? $null() : $bool($result);
  }

  @override
  int? getInt(String key) => $value.getInt(key);
  static const __$getInt = $Function(_$getInt);
  static $Value? _$getInt(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final $result = obj.getInt(key);
    return $result == null ? $null() : $int($result);
  }

  @override
  double? getDouble(String key) => $value.getDouble(key);
  static const __$getDouble = $Function(_$getDouble);
  static $Value? _$getDouble(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final $result = obj.getDouble(key);
    return $result == null ? $null() : $double($result);
  }

  @override
  String? getString(String key) => $value.getString(key);
  static const __$getString = $Function(_$getString);
  static $Value? _$getString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final $result = obj.getString(key);
    return $result == null ? $null() : $String($result);
  }

  @override
  bool containsKey(String key) => $value.containsKey(key);
  static const __$containsKey = $Function(_$containsKey);
  static $Value? _$containsKey(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final $result = obj.containsKey(key);
    return $bool($result);
  }

  @override
  List<String>? getStringList(String key) => $value.getStringList(key);
  static const __$getStringList = $Function(_$getStringList);
  static $Value? _$getStringList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final $result = obj.getStringList(key);
    return $result == null
        ? $null()
        : $List.wrap(List.generate($result.length, (index) {
            return $String($result[index]);
          }));
  }

  @override
  Future<bool> setBool(String key, bool value) => $value.setBool(key, value);
  static const __$setBool = $Function(_$setBool);
  static $Value? _$setBool(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final value = args[1]?.$value as bool;
    final $result = obj.setBool(key, value);
    return $Future.wrap($result.then((value) => $bool(value)));
  }

  @override
  Future<bool> setInt(String key, int value) => $value.setInt(key, value);
  static const __$setInt = $Function(_$setInt);
  static $Value? _$setInt(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final value = args[1]?.$value as int;
    final $result = obj.setInt(key, value);
    return $Future.wrap($result.then((value) => $bool(value)));
  }

  @override
  Future<bool> setDouble(String key, double value) =>
      $value.setDouble(key, value);
  static const __$setDouble = $Function(_$setDouble);
  static $Value? _$setDouble(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final value = args[1]?.$value as double;
    final $result = obj.setDouble(key, value);
    return $Future.wrap($result.then((value) => $bool(value)));
  }

  @override
  Future<bool> setString(String key, String value) =>
      $value.setString(key, value);
  static const __$setString = $Function(_$setString);
  static $Value? _$setString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final value = args[1]?.$value as String;
    final $result = obj.setString(key, value);
    return $Future.wrap($result.then((value) => $bool(value)));
  }

  @override
  Future<bool> setStringList(String key, List<String> value) =>
      $value.setStringList(key, value);
  static const __$setStringList = $Function(_$setStringList);
  static $Value? _$setStringList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final value = args[1]?.$reified.cast<String>();
    final $result = obj.setStringList(key, value);
    return $Future.wrap($result.then((value) => $bool(value)));
  }

  @override
  Future<bool> remove(String key) => $value.remove(key);
  static const __$remove = $Function(_$remove);
  static $Value? _$remove(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final $result = obj.remove(key);
    return $Future.wrap($result.then((value) => $bool(value)));
  }

  @override
  Future<bool> clear() => $value.clear();
  static const __$clear = $Function(_$clear);
  static $Value? _$clear(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final $result = obj.clear();
    return $Future.wrap($result.then((value) => $bool(value)));
  }

  @override
  Future<void> reload() => $value.reload();
  static const __$reload = $Function(_$reload);
  static $Value? _$reload(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final $result = obj.reload();
    return $Future.wrap($result.then((value) => null));
  }

  static const __$static$method$setPrefix =
      $Function(_$static$method$setPrefix);
  static $Value? _$static$method$setPrefix(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final prefix = args[0]?.$value as String;
    final allowList = args[1]?.$reified as Set<String>;
    SharedPreferences.setPrefix(prefix, allowList: allowList);
    return null;
  }

  static const __$static$method$getInstance =
      $Function(_$static$method$getInstance);
  static $Value? _$static$method$getInstance(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = SharedPreferences.getInstance();
    return $Future
        .wrap($result.then((value) => $SharedPreferences.wrap(value)));
  }

  @override
  Future<bool> commit() {
    throw Deprecated('Deprecated method');
  }
}
