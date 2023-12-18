import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/models/media/media.dart';

class $MediaType implements $Instance {
  $MediaType.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        bridgeLibary, 'MediaType', $MediaType.$values);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'MediaType'));

  static const $declaration = BridgeEnumDef($type, values: [
    'Video',
    'Image',
    'Text',
  ], methods: {}, getters: {}, setters: {}, fields: {});

  static final $values = {
    'Video': $MediaType.wrap(MediaType.Video),
    'Image': $MediaType.wrap(MediaType.Image),
    'Text': $MediaType.wrap(MediaType.Text),
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
  final MediaType $value;

  @override
  String toString() {
    return $value.toString();
  }
}
