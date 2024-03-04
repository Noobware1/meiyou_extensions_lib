import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/media_item.dart';

import 'package:meiyou_extensions_lib/src/models/media_item/movie.dart';

/// dart_eval bimodal wrapper for [Movie]
class $Movie implements Movie, $Instance {
  /// Configure the [$Movie] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        ExtensionLibTypes.movie.library, 'Movie.', __$Movie$new.call);
  }

  late final $Instance _superclass = $MediaItem.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.movie);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.mediaItem, []),
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
                'url',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'posterImage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'description',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'url': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'posterImage': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'description': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
    },
    methods: {
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

  /// Wrap an [Movie] in an [$Movie]
  $Movie.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'url':
        return $String($value.url);
      case 'posterImage':
        return $value.posterImage == null
            ? $null()
            : $String($value.posterImage!);
      case 'description':
        return $value.description == null
            ? $null()
            : $String($value.description!);
      case 'toString':
        return __$toString;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Movie get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'url':
        $value.url = value.$reified;
        break;
      case 'posterImage':
        $value.posterImage = value.$reified;
        break;
      case 'description':
        $value.description = value.$reified;
        break;
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Movie $value;

  @override
  String get url => $value.url;
  @override
  String? get posterImage => $value.posterImage;
  @override
  String? get description => $value.description;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Movie;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$Movie$new = $Function(_$Movie$new);
  static $Value? _$Movie$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$value as String?;
    final posterImage = args[1]?.$value as String?;
    final description = args[2]?.$value as String?;
    return $Movie.wrap(Movie(
      url: url ?? '',
      posterImage: posterImage,
      description: description,
    ));
  }

  @override
  bool get isAnime => $value.isAnime;

  @override
  bool get isManga => $value.isManga;

  @override
  bool get isMovie => $value.isMovie;

  @override
  bool get isNovel => $value.isNovel;

  @override
  bool get isTvSeries => $value.isTvSeries;

  @override
  MediaItemType get type => $value.type;

  @override
  set description(String? description) {
    $value.description = description;
  }

  @override
  set posterImage(String? posterImage) {
    $value.posterImage = posterImage;
  }

  @override
  set url(String url) {
    $value.url = url;
  }
}
