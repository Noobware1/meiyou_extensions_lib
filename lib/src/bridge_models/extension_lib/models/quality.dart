import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/quality.dart';

/// dart_eval bimodal wrapper for [Quality]
class $Quality implements Quality, $Instance {
  /// Configure the [$Quality] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Quality.', __$Quality$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Quality.auto', __$Quality$auto.call,
        isBridge: false);
    runtime.registerBridgeFunc($type.spec!.library, 'Quality.getFromString',
        __$Quality$getFromString.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Quality.fromJson', __$Quality$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Comparable.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.quality);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(CoreTypes.comparable, [
        BridgeTypeRef(ExtensionLibTypes.quality, []),
      ]),
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'width',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: false),
                false),
            BridgeParameter(
                'height',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      ),
      'auto': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [],
        ),
        isFactory: false,
      ),
      'getFromString': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'str',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
      'fromJson': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'json',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeRef(CoreTypes.string, []),
                      BridgeTypeRef(CoreTypes.dynamic, []),
                    ]),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: true,
      )
    },
    fields: {
      'width': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'height': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'toJson': BridgeMethodDef(
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
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.quality, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'width',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'height',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: false),
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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

  /// Wrap an [Quality] in an [$Quality]
  $Quality.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'width':
        return $int($value.width);
      case 'height':
        return $int($value.height);
      case 'toJson':
        return __$toJson;
      case 'copyWith':
        return __$copyWith;
      case 'toString':
        return __$toString;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Quality get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Quality $value;

  @override
  int get width => $value.width;
  @override
  int get height => $value.height;

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Quality;
    final $result = $this.toJson();
    return $Map.wrap($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    }));
  }

  @override
  Quality copyWith({int? width, int? height}) => $value.copyWith(
        width: width,
        height: height,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Quality;
    final width = args[0]?.$value as int?;
    final height = args[1]?.$value as int?;
    final $result = $this.copyWith(
      width: width,
      height: height,
    );
    return $Quality.wrap($result);
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Quality;
    final $result = $this.toString();
    return $String($result);
  }

  @override
  int compareTo(Quality other) => $value.compareTo(
        other,
      );

  static const __$Quality$new = $Function(_$Quality$new);
  static $Value? _$Quality$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final width = args[0]?.$value as int;
    final height = args[1]?.$value as int;
    return $Quality.wrap(Quality(
      width,
      height,
    ));
  }

  static const __$Quality$auto = $Function(_$Quality$auto);
  static $Value? _$Quality$auto(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Quality.wrap(Quality.auto());
  }

  static const __$Quality$getFromString = $Function(_$Quality$getFromString);
  static $Value? _$Quality$getFromString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$value as String;
    return $Quality.wrap(Quality.getFromString(
      str,
    ));
  }

  static const __$Quality$fromJson = $Function(_$Quality$fromJson);
  static $Value? _$Quality$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $Quality.wrap(Quality.fromJson(
      json,
    ));
  }
}
