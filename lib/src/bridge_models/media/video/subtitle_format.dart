import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/models/media/video/subtitle_format.dart';

class $SubtitleFormat implements $Instance {
  $SubtitleFormat.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        bridgeLibary, 'SubtitleFormat', $SubtitleFormat.$values);
  }

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'SubtitleFormat'));

  static const $declaration = BridgeEnumDef($type, values: [
    'vtt',
    'srt',
    'ass',
  ], methods: {}, getters: {}, setters: {}, fields: {});

  static final $values = {
    'vtt': $SubtitleFormat.wrap(SubtitleFormat.vtt),
    'srt': $SubtitleFormat.wrap(SubtitleFormat.srt),
    'ass': $SubtitleFormat.wrap(SubtitleFormat.ass),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

 

  @override
  final SubtitleFormat $value;
}
