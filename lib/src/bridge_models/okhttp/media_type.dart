import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:okhttp/okhttp.dart' show MediaType;

/// dart_eval bimodal wrapper for [MediaType]
class $MediaType implements MediaType, $Instance {
  /// Configure the [$MediaType] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'MediaType.parse', __$MediaType$parse.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'MediaType.', __$MediaType$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.mediaType);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      'parse': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'mediaType',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'type',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'subtype',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'parameters',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeRef(CoreTypes.string, []),
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: true),
                true)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'type': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'subtype': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'parameters': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.map, [
                BridgeTypeRef(CoreTypes.string, []),
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'change': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.mediaType, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'type',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'subtype',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'mimeType',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'parameters',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.map, [
                        BridgeTypeRef(CoreTypes.string, []),
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'clearParameters',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
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
    getters: {
      'mimeType': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [MediaType] in an [$MediaType]
  $MediaType.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'type':
        return $String($value.type);
      case 'subtype':
        return $String($value.subtype);
      case 'parameters':
        return $Map.wrap($value.parameters.map((key, value) {
          return $MapEntry.wrap(MapEntry(
            key is $Value ? key : $String(key),
            value is $Value ? value : $String(value),
          ));
        })) as $Value?;
      case 'mimeType':
        return $String($value.mimeType);
      case 'change':
        return __$change;

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  MediaType get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final MediaType $value;

  @override
  String get type => $value.type;
  @override
  String get subtype => $value.subtype;
  @override
  Map<String, String> get parameters => $value.parameters;

  @override
  String get mimeType => $value.mimeType;

  @override
  MediaType change(
          {String? type,
          String? subtype,
          String? mimeType,
          Map<String, String>? parameters,
          bool clearParameters = false}) =>
      $value.change(
        type: type,
        subtype: subtype,
        mimeType: mimeType,
        parameters: parameters,
        clearParameters: clearParameters,
      );
  static const __$change = $Function(_$change);
  static $Value? _$change(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as MediaType;
    final type = args[0]?.$reified as String;
    final subtype = args[1]?.$reified as String;
    final mimeType = args[2]?.$reified as String;
    final parameters = args[3]?.$reified?.cast<String, String>();
    final clearParameters = args[4]?.$reified as bool? ?? false;
    final $result = obj.change(
      type: type,
      subtype: subtype,
      mimeType: mimeType,
      parameters: parameters,
      clearParameters: clearParameters,
    );
    return $MediaType.wrap($result);
  }

  @override
  String toString() => $value.toString();

  static const __$MediaType$parse = $Function(_$MediaType$parse);
  static $Value? _$MediaType$parse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final mediaType = args[0]?.$reified as String;
    return $MediaType.wrap(MediaType.parse(
      mediaType,
    ));
  }

  static const __$MediaType$new = $Function(_$MediaType$new);
  static $Value? _$MediaType$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final type = args[0]?.$reified as String;
    final subtype = args[1]?.$reified as String;
    final parameters = args[2]?.$reified?.cast<String, String>();
    return $MediaType.wrap(MediaType(
      type,
      subtype,
      parameters,
    ));
  }
}
