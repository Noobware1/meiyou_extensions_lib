import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/episode.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:meiyou_extensions_lib/src/models/episode.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/anime.dart';

class $Anime extends Anime with $Bridge<Anime> {
  $Anime({required super.episodes});

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'Anime.', $new, isBridge: true);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'Anime'));

  static const $declaration = BridgeClassDef(
    BridgeClassType($type, $extends: $MediaItem.$type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
          // required this.url, this.posterImage, this.description
          BridgeParameter(
              'episodes',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [$Episode.$type]),
              ),
              false),
        ]),
      )
    },
    fields: {
      'type': BridgeFieldDef(
        BridgeTypeAnnotation($MediaItemType.$type),
      ),
      'episodes': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [$Episode.$type]),
        ),
      ),
    },
    bridge: true,
  );

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Anime(
      episodes:
          args[0]?.$value is List<$Value?> || args[0]?.$value is List<$Value>
              ? (args[0]?.$value as List)
                  .mapAsList((it) => (it as $Value).$value as Episode)
              : args[0]?.$value,
    );
  }

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'episodes':
        return $List.wrap(super.episodes.mapAsList((it) => $Episode.wrap(it)));

      default:
        return null;
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    // TODO: implement $bridgeSet
  }
}
