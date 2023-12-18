import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/episode.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/season_data.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:meiyou_extensions_lib/src/models/episode.dart';
import 'package:meiyou_extensions_lib/src/models/season_data.dart';
import 'package:meiyou_extensions_lib/src/models/season_list.dart';

class $SeasonList implements SeasonList, $Instance {
  $SeasonList.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'SeasonList.', $new);
  }

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'SeasonList'));

  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
          BridgeParameter(
              'season', BridgeTypeAnnotation($SeasonData.$type), false),
          BridgeParameter(
              'episodes',
              BridgeTypeAnnotation(
                  BridgeTypeRef(CoreTypes.list, [$Episode.$type])),
              false),
        ]),
      ),
    },
    fields: {
      'season': BridgeFieldDef(
        BridgeTypeAnnotation($SeasonData.$type),
      ),
      'episodes': BridgeFieldDef(BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [$Episode.$type]))),
    },
    wrap: true,
  );

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SeasonList.wrap(SeasonList(
      season: args[0]?.$value,
      episodes: (args[1]?.$value as List)
          .mapAsList((it) => (it as $Value).$value as Episode),
    ));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'season':
        return $SeasonData.wrap($value.season);
      case 'episodes':
        return $List.wrap(episodes.mapAsList((it) => $Episode.wrap(it)));
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  late final $Instance _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;
  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final SeasonList $value;

  @override
  List<Episode> get episodes => $value.episodes;

  @override
  SeasonData get season => $value.season;

  @override
  String toString() {
    return $value.toString();
  }
}
