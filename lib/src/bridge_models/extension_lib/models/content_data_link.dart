import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/models/content_data_link.dart';
import 'package:okhttp/okhttp.dart';

/// dart_eval bimodal wrapper for [ContentDataLink]
class $ContentDataLink implements ContentDataLink, $Instance {
  /// Configure the [$ContentDataLink] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ContentDataLink.', __$ContentDataLink$new.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ContentDataLink.fromJson',
        __$ContentDataLink$fromJson.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.contentDataLink);

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
          params: [],
          namedParams: [
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'data',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'headers',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                    nullable: true),
                true),
            BridgeParameter(
                'referer',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'extra',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeRef(CoreTypes.string, []),
                      BridgeTypeRef(CoreTypes.dynamic, []),
                    ]),
                    nullable: true),
                true)
          ],
        ),
        isFactory: false,
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
                false),
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
    },
    fields: {
      'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'data': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'headers': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
              nullable: true),
          isStatic: false),
      'referer': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'extra': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.map, [
                BridgeTypeRef(CoreTypes.string, []),
                BridgeTypeRef(CoreTypes.dynamic, []),
              ]),
              nullable: true),
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
                BridgeTypeRef(ExtensionLibTypes.contentDataLink, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'headers',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'referer',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'extra',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.map, [
                        BridgeTypeRef(CoreTypes.string, []),
                        BridgeTypeRef(CoreTypes.dynamic, []),
                      ]),
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

  /// Wrap an [ContentDataLink] in an [$ContentDataLink]
  $ContentDataLink.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String($value.name);
      case 'data':
        return $String($value.data);
      case 'headers':
        return $value.headers == null
            ? $null()
            : $Headers.wrap($value.headers!);
      case 'referer':
        return $value.referer == null ? $null() : $String($value.referer!);
      case 'extra':
        return $value.extra == null
            ? $null()
            : $Map
                .wrap(($value.extra as Map<String, dynamic>))
                .map((key, value) {
                return $MapEntry.wrap(MapEntry(
                  key is $Value ? key : $String(key),
                  value is $Value ? value : value,
                ));
              }) as $Value?;
      case 'copyWith':
        return __$copyWith;
      case 'toJson':
        return __$toJson;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ContentDataLink get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ContentDataLink $value;

  @override
  String get name => $value.name;
  @override
  String get data => $value.data;
  @override
  Headers? get headers => $value.headers;
  @override
  String? get referer => $value.referer;
  @override
  Map<String, dynamic>? get extra => $value.extra;

  @override
  ContentDataLink copyWith(
          {String? name,
          String? data,
          Headers? headers,
          String? referer,
          Map<String, dynamic>? extra}) =>
      $value.copyWith(
        name: name,
        data: data,
        headers: headers,
        referer: referer,
        extra: extra,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ContentDataLink;
    final name = args[0]?.$value as String?;
    final data = args[1]?.$value as String?;
    final headers = args[2]?.$reified as Headers?;
    final referer = args[3]?.$value as String?;
    final extra = (args[4]?.$reified as Map?)?.cast<String, dynamic>();
    final $result = obj.copyWith(
      name: name,
      data: data,
      headers: headers,
      referer: referer,
      extra: extra,
    );
    return $ContentDataLink.wrap($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as ContentDataLink;
    final $result = $this.toJson();
    return runtime.wrap($result, recursive: true);
  }

  static const __$ContentDataLink$fromJson =
      $Function(_$ContentDataLink$fromJson);
  static $Value? _$ContentDataLink$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    final $result = ContentDataLink.fromJson(json);
    return $ContentDataLink.wrap($result);
  }

  static const __$ContentDataLink$new = $Function(_$ContentDataLink$new);
  static $Value? _$ContentDataLink$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final data = args[1]?.$value as String;
    final headers = args[2]?.$value as Headers?;
    final referer = args[3]?.$value as String?;
    final extra = (args[4]?.$reified as Map?)?.cast<String, dynamic>();
    return $ContentDataLink.wrap(ContentDataLink(
      name: name,
      data: data,
      headers: headers,
      referer: referer,
      extra: extra,
    ));
  }

  @override
  List<Object?> get props => $value.props;

  @override
  bool? get stringify => $value.stringify;
}
