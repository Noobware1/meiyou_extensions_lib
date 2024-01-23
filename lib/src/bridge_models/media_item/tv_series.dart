import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dartx/dartx.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/season_list.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/tv_series.dart';
import 'package:meiyou_extensions_lib/src/models/season_list.dart';

class $TvSeries extends TvSeries with $Bridge<TvSeries> {
  $TvSeries({required super.data});

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'TvSeries.', $new, isBridge: true);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'TvSeries'));

  static const $declaration = BridgeClassDef(
    BridgeClassType($type, $extends: $MediaItem.$type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
          BridgeParameter(
              'data',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [$SeasonList.$type]),
              ),
              false),
        ]),
      ),
    },
    fields: {
      'data': BridgeFieldDef(BridgeTypeAnnotation(
        BridgeTypeRef(CoreTypes.list, [$SeasonList.$type]),
      ))
    },
    bridge: true,
  );

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $TvSeries(
      data: (args[0]?.$value as List)
          .mapList((it) => (it as $Value).$value as SeasonList),
    );
  }

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'data':
        return $List.wrap(super
            .data
            .mapList((it) => it is $SeasonList ? it : $SeasonList.wrap(it)));
    }
    return null;
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    // TODO: implement $bridgeSet
  }
}
