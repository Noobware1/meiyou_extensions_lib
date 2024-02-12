import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';

import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';

/// dart_eval bimodal wrapper for [SharedPreferences]
class $SharedPreferences implements SharedPreferences, $Instance {
  /// Configure the [$SharedPreferences] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library,
        'SharedPreferences.getInstance', __$SharedPreferences$getInstance.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.sharedPreferences);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {
      'getInstance': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'id',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: false),
                false),
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true)
          ],
          namedParams: [],
        ),
        isFactory: true,
      )
    },
    fields: {},
    methods: {
      'clear': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [],
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
      'getKeys': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                //change this
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(CoreTypes.string, []),
                ]),
                nullable: false),
            params: [],
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
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: true),
                  true)
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
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                      nullable: true),
                  true)
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
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true)
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
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true)
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
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: true),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'remove': BridgeMethodDef(
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
      'setBool': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
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
      'setDouble': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
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
      'setInt': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
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
      'setString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
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
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
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
      case 'clear':
        return __$clear;
      case 'containsKey':
        return __$containsKey;
      case 'getKeys':
        return __$getKeys;
      case 'getBool':
        return __$getBool;
      case 'getDouble':
        return __$getDouble;
      case 'getInt':
        return __$getInt;
      case 'getString':
        return __$getString;
      case 'getStringList':
        return __$getStringList;
      case 'remove':
        return __$remove;
      case 'setBool':
        return __$setBool;
      case 'setDouble':
        return __$setDouble;
      case 'setInt':
        return __$setInt;
      case 'setString':
        return __$setString;
      case 'setStringList':
        return __$setStringList;
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
  void clear() => $value.clear();
  static const __$clear = $Function(_$clear);
  static $Value? _$clear(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    obj.clear();
    return null;
  }

  @override
  bool containsKey(String key) => $value.containsKey(
        key,
      );
  static const __$containsKey = $Function(_$containsKey);
  static $Value? _$containsKey(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final $result = obj.containsKey(
      key,
    );
    return $bool($result);
  }

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
  bool? getBool(String key, [bool? defaultValue]) => $value.getBool(
        key,
        defaultValue,
      );
  static const __$getBool = $Function(_$getBool);
  static $Value? _$getBool(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as bool?;
    final $result = obj.getBool(
      key,
      defaultValue,
    );
    return $result == null ? $null() : $bool($result);
  }

  @override
  double? getDouble(String key, [double? defaultValue]) => $value.getDouble(
        key,
        defaultValue,
      );
  static const __$getDouble = $Function(_$getDouble);
  static $Value? _$getDouble(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as double?;
    final $result = obj.getDouble(
      key,
      defaultValue,
    );
    return $result == null ? $null() : $double($result);
  }

  @override
  int? getInt(String key, [int? defaultValue]) => $value.getInt(
        key,
        defaultValue,
      );
  static const __$getInt = $Function(_$getInt);
  static $Value? _$getInt(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as int?;
    final $result = obj.getInt(
      key,
      defaultValue,
    );
    return $result == null ? $null() : $int($result);
  }

  @override
  String? getString(String key, [String? defaultValue]) => $value.getString(
        key,
        defaultValue,
      );
  static const __$getString = $Function(_$getString);
  static $Value? _$getString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final defaultValue = args[1]?.$value as String?;
    final $result = obj.getString(
      key,
      defaultValue,
    );
    return $result == null ? $null() : $String($result);
  }

  @override
  List<String>? getStringList(String key, [List<String>? defaultValue]) =>
      $value.getStringList(
        key,
        defaultValue,
      );
  static const __$getStringList = $Function(_$getStringList);
  static $Value? _$getStringList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final defaultValue = (args[1]?.$reified as List?)?.cast<String>();
    final $result = obj.getStringList(key, defaultValue);
    return $result == null
        ? $null()
        : $List.wrap(List.generate($result.length, (index) {
            return $String($result[index]);
          }));
  }

  @override
  bool remove(String key) => $value.remove(key);
  static const __$remove = $Function(_$remove);
  static $Value? _$remove(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final $result = obj.remove(
      key,
    );
    return $bool($result);
  }

  @override
  bool setBool(String key, bool value) => $value.setBool(key, value);
  static const __$setBool = $Function(_$setBool);
  static $Value? _$setBool(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final value = args[1]?.$value as bool;
    final $result = obj.setBool(
      key,
      value,
    );
    return $bool($result);
  }

  @override
  bool setDouble(String key, double value) => $value.setDouble(
        key,
        value,
      );
  static const __$setDouble = $Function(_$setDouble);
  static $Value? _$setDouble(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final value = args[1]?.$value as double;
    final $result = obj.setDouble(
      key,
      value,
    );
    return $bool($result);
  }

  @override
  bool setInt(String key, int value) => $value.setInt(
        key,
        value,
      );
  static const __$setInt = $Function(_$setInt);
  static $Value? _$setInt(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final value = args[1]?.$value as int;
    final $result = obj.setInt(
      key,
      value,
    );
    return $bool($result);
  }

  @override
  bool setString(String key, String value) => $value.setString(
        key,
        value,
      );
  static const __$setString = $Function(_$setString);
  static $Value? _$setString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final value = args[1]?.$value as String;
    final $result = obj.setString(
      key,
      value,
    );
    return $bool($result);
  }

  @override
  bool setStringList(String key, List<String> value) => $value.setStringList(
        key,
        value,
      );
  static const __$setStringList = $Function(_$setStringList);
  static $Value? _$setStringList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SharedPreferences;
    final key = args[0]?.$value as String;
    final value = args[1]?.$reified.cast<String>();
    final $result = obj.setStringList(
      key,
      value,
    );
    return $bool($result);
  }

  static const __$SharedPreferences$getInstance =
      $Function(_$SharedPreferences$getInstance);
  static $Value? _$SharedPreferences$getInstance(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final id = args[0]?.$value as int;
    final name = args[1]?.$value as String? ?? 'meiyou-db';
    return $SharedPreferences.wrap(SharedPreferences.getInstance(
      id,
      name,
    ));
  }
}
