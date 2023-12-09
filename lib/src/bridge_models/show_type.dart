import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/models/show_type.dart';

class $ShowType implements $Instance {
  $ShowType.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        bridgeLibary, 'ShowType', $ShowType.$values);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'ShowType'));

  static const $declaration = BridgeEnumDef($type, values: [
    'Movie',
    'AnimeMovie',
    'TvSeries',
    'Cartoon',
    'Anime',
    'Ova',
    'Ona',
    'Documentary',
    'AsainDrama',
    'Live',
    'Others',
  ], methods: {}, getters: {}, setters: {}, fields: {});

  static final $values = {
    'Movie': $ShowType.wrap(ShowType.Movie),
    'AnimeMovie': $ShowType.wrap(ShowType.AnimeMovie),
    'TvSeries': $ShowType.wrap(ShowType.TvSeries),
    'Cartoon': $ShowType.wrap(ShowType.Cartoon),
    'Anime': $ShowType.wrap(ShowType.Anime),
    'Ova': $ShowType.wrap(ShowType.Ova),
    'Ona': $ShowType.wrap(ShowType.Ona),
    'Documentary': $ShowType.wrap(ShowType.Documentary),
    'AsainDrama': $ShowType.wrap(ShowType.AsainDrama),
    'Live': $ShowType.wrap(ShowType.Live),
    'Others': $ShowType.wrap(ShowType.Others),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}

  @override
  final ShowType $value;

    @override
  String toString() {
    return $value.toString();
  }
}
