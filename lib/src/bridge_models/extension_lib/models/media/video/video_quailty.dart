import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/video_quality.dart';

class $VideoQuality implements VideoQuality, $Instance {
  $VideoQuality.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(ExtensionLibTypes.videoQuality.library,
        'VideoQuality.', $VideoQuality.$new);

    runtime.registerBridgeFunc(ExtensionLibTypes.videoQuality.library,
        'VideoQuality.unknown*g', $VideoQuality.$unknown);
    runtime.registerBridgeFunc(ExtensionLibTypes.videoQuality.library,
        'VideoQuality.hlsMaster*g', $VideoQuality.$hlsMaster);

    runtime.registerBridgeFunc(ExtensionLibTypes.videoQuality.library,
        'VideoQuality.getFromString', $VideoQuality.$getFromString);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.videoQuality);

  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type), params: [
          BridgeParameter(
              'height',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int),
              ),
              false),
          BridgeParameter(
              'width',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int),
              ),
              false),
        ]),
      )
    },
    fields: {
      'height': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.int),
        ),
      ),
      'width': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.int),
        ),
      ),
      'unknown': BridgeFieldDef(
          BridgeTypeAnnotation(
            $type,
          ),
          isStatic: true),
      'hlsMaster': BridgeFieldDef(
          BridgeTypeAnnotation(
            $type,
          ),
          isStatic: true),
    },
    methods: {
      'getFromString': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($type), params: [
            BridgeParameter('str',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false)
          ]),
          isStatic: true),
    },
    wrap: true,
  );

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'height':
        return $int($value.height);
      case 'width':
        return $int($value.width);

      default:
        return $null();
    }
  }

  static $Value $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $VideoQuality.wrap(VideoQuality(args[0]?.$value, args[1]?.$value));
  }

  static $Value $getFromString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $VideoQuality.wrap(VideoQuality.getFromString(args[0]?.$value));
  }

  static $Value $unknown(Runtime runtime, $Value? target, List<$Value?> args) {
    return $VideoQuality.wrap(VideoQuality.unknown);
  }

  static $Value $hlsMaster(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $VideoQuality.wrap(VideoQuality.hlsMaster);
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}

  @override
  final VideoQuality $value;

  @override
  int get height => $value.height;

  @override
  int get width => $value.width;

  @override
  String toString() {
    return $value.toString();
  }
}
