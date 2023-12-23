import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/media_item.dart';

class $MediaItem implements MediaItem, $Instance {
  $MediaItem.wrap(this.$value);

  late final $Instance _superclass = $Object($value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'MediaItem.', $new);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'MediaItem'));

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
            params: [],
            namedParams: [
              BridgeParameter(
                  'type', BridgeTypeAnnotation($MediaItemType.$type), false),
            ],
          ),
        ),
      },
      fields: {
        'type': BridgeFieldDef(
          BridgeTypeAnnotation($MediaItemType.$type),
        ),
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'type':
        return $MediaItemType.wrap($value.type);
      case 'isMovie':
        return $bool(isMovie);
      case 'isTvSeries':
        return $bool(isTvSeries);
      case 'isAnime':
        return $bool(isAnime);
      case 'isManga':
        return $bool(isManga);
      case 'isNovel':
        return $bool(isNovel);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $MediaItem.wrap(MediaItem(
      type: args[0]?.$value,
    ));
  }

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final MediaItem $value;

  @override
  MediaItemType get type => $value.type;

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
}

class $MediaItemType implements $Instance {
  $MediaItemType.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(bridgeLibary, 'MediaItemType', $values);
  }

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'MediaItemType'));

  static const $declaration = BridgeEnumDef($type, values: [
    'Movie',
    'TvSeries',
    'Anime',
    'Manga',
    'Novel',
  ], methods: {}, getters: {}, setters: {}, fields: {});

  static final $values = {
    'Movie': $MediaItemType.wrap(MediaItemType.Movie),
    'TvSeries': $MediaItemType.wrap(MediaItemType.TvSeries),
    'Anime': $MediaItemType.wrap(MediaItemType.Anime),
    'Manga': $MediaItemType.wrap(MediaItemType.Manga),
    'Novel': $MediaItemType.wrap(MediaItemType.Novel),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) => null;

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}

  @override
  final MediaItemType $value;
}
