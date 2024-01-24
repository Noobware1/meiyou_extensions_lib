import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/plugin.dart';
import 'package:meiyou_extensions_lib/src/models/episode.dart';

import 'package:meiyou_extensions_lib/src/models/media_item/anime.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/media_item.dart';

/// dart_eval bimodal wrapper for [Anime]
class $Anime implements Anime, $Instance {
  /// Configure the [$Anime] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        ExtensionLibTypes.anime.library, 'Anime.', __$Anime$new.call);
  }

  late final $Instance _superclass = $MediaItem.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.anime);

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
                'episodes',
                BridgeTypeAnnotation(
                    BridgeTypeRef(
                      CoreTypes.list,
                      [BridgeTypeRef(ExtensionLibTypes.episode, [])],
                    ),
                    nullable: false),
                false)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'episodes': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.episode, []),
              ]),
              nullable: false),
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

  /// Wrap an [Anime] in an [$Anime]
  $Anime.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'episodes':
        return $List.wrap(episodes);
      case 'toString':
        return __$toString;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Anime get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Anime $value;

  @override
  List<Episode> get episodes => $value.episodes;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Anime;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$Anime$new = $Function(_$Anime$new);
  static $Value? _$Anime$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final episodes = (args[0]?.$value as List).cast<Episode>();
    return $Anime.wrap(Anime(episodes: episodes));
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
}
