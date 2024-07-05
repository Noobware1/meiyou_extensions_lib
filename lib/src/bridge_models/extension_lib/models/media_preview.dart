import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/media_format.dart';
import 'package:meiyou_extensions_lib/src/models/media_preview.dart';

/// dart_eval bimodal wrapper for [MediaPreview]
class $MediaPreview implements MediaPreview, $Instance {
  /// Configure the [$MediaPreview] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'MediaPreview.', __$MediaPreview$new.call,
        isBridge: false);
    runtime.registerBridgeFunc($type.spec!.library, 'MediaPreview.fromJson',
        __$MediaPreview$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.mediaPreview);

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
                'title',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'url',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'poster',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'format',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.mediaFormat, []),
                    nullable: false),
                true),
            BridgeParameter(
                'description',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'generes',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'rating',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
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
                false)
          ],
          namedParams: [],
        ),
        isFactory: true,
      )
    },
    fields: {
      'title': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'url': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'poster': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'format': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.mediaFormat, []),
              nullable: false),
          isStatic: false),
      'description': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'generes': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: true),
          isStatic: false),
      'rating': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
              nullable: true),
          isStatic: false),
    },
    methods: {
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'title',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'poster',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'format',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.mediaFormat, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'description',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'generes',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'rating',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
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
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [MediaPreview] in an [$MediaPreview]
  $MediaPreview.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'title':
        return $String($value.title);
      case 'url':
        return $String($value.url);
      case 'poster':
        return $value.poster == null ? $null() : $String($value.poster!);
      case 'format':
        return $MediaFormat.wrap($value.format);
      case 'description':
        return $value.description == null
            ? $null()
            : $String($value.description!);
      case 'generes':
        return $value.generes == null
            ? $null()
            : $List.wrap(List.generate($value.generes!.length, (index) {
                return $String($value.generes![index]);
              }));
      case 'rating':
        return $value.rating == null ? $null() : $double($value.rating!);
      case 'copyWith':
        return __$copyWith;
      case 'toString':
        return __$toString;
      case 'toJson':
        return __$toJson;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  MediaPreview get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final MediaPreview $value;

  @override
  String get title => $value.title;
  @override
  String get url => $value.url;
  @override
  String? get poster => $value.poster;
  @override
  MediaFormat get format => $value.format;
  @override
  String? get description => $value.description;
  @override
  List<String>? get generes => $value.generes;
  @override
  double? get rating => $value.rating;

  @override
  MediaPreview copyWith(
          {String? title,
          String? url,
          String? poster,
          MediaFormat? format,
          String? description,
          List<String>? generes,
          double? rating}) =>
      $value.copyWith(
        title: title,
        url: url,
        poster: poster,
        format: format,
        description: description,
        generes: generes,
        rating: rating,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaPreview;
    final title = args[0]?.$value as String?;
    final url = args[1]?.$value as String?;
    final poster = args[2]?.$value as String?;
    final format = args[3]?.$reified as MediaFormat?;
    final description = args[4]?.$value as String?;
    final generes = (args[5]?.$reified as List?)?.cast<String>();
    final rating = args[6]?.$value as double?;
    final $result = $this.copyWith(
      title: title,
      url: url,
      poster: poster,
      format: format,
      description: description,
      generes: generes,
      rating: rating,
    );
    return $MediaPreview.wrap($result);
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaPreview;
    final $result = $this.toString();
    return $String($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaPreview;
    final $result = $this.toJson();
    return $Map.wrap($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    }));
  }

  static const __$MediaPreview$new = $Function(_$MediaPreview$new);
  static $Value? _$MediaPreview$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final title = args[0]?.$value as String? ?? '';
    final url = args[1]?.$value as String? ?? '';
    final poster = args[2]?.$value as String?;
    final format = args[3]?.$reified as MediaFormat? ?? MediaFormat.others;
    final description = args[4]?.$value as String?;
    final generes = (args[5]?.$reified as List?)?.cast<String>();
    final rating = args[6]?.$value as double?;
    return $MediaPreview.wrap(MediaPreview(
      title: title,
      url: url,
      poster: poster,
      format: format,
      description: description,
      generes: generes,
      rating: rating,
    ));
  }

  static const __$MediaPreview$fromJson = $Function(_$MediaPreview$fromJson);
  static $Value? _$MediaPreview$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $MediaPreview.wrap(MediaPreview.fromJson(
      json,
    ));
  }
}