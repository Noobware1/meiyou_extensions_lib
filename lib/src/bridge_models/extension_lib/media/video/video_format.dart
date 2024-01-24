import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/plugin.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/video_format.dart';

class $VideoFormat implements $Instance {
  $VideoFormat.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(ExtensionLibTypes.videoFormat.library,
        'VideoFormat', $VideoFormat.$values);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.videoFormat);

  static const $declaration = BridgeEnumDef($type, values: [
    'hls',
    'mp4',
    'dash',
    'torrent',
    'other',
  ], methods: {}, getters: {}, setters: {}, fields: {});

  static final $values = {
    'hls': $VideoFormat.wrap(VideoFormat.hls),
    'mp4': $VideoFormat.wrap(VideoFormat.mp4),
    'dash': $VideoFormat.wrap(VideoFormat.dash),
    'torrent': $VideoFormat.wrap(VideoFormat.torrent),
    'other': $VideoFormat.wrap(VideoFormat.other),
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
  final VideoFormat $value;

  @override
  String toString() {
    return $value.toString();
  }
}
