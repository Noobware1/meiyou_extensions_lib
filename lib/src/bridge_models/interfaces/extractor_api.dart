import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/bridge_models/extractor_link.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/media.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/video/video.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/models/interfaces/extractor_api.dart';
import 'package:meiyou_extenstions/src/models/media/media.dart';
import 'package:meiyou_extenstions/src/models/media/video/video.dart';

class $ExtractorApi extends ExtractorApi with $Bridge<ExtractorApi> {
  $ExtractorApi(super.extractorLink);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        bridgeLibary, 'ExtractorApi.', $ExtractorApi.$new,
        isBridge: true);
  }

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'ExtractorApi'));

  static const $declaration = BridgeClassDef(
      BridgeClassType($type, isAbstract: true),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
            generics: {},
            namedParams: [],
            params: [
              BridgeParameter('extractorLink',
                  BridgeTypeAnnotation($ExtractorLink.$type), false)
            ],
          ),
        )
      },
      methods: {
        'extract': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [$Media.$type])),
          ),
        )
      },
      fields: {
        'extractorLink':
            BridgeFieldDef(BridgeTypeAnnotation($ExtractorLink.$type))
      },
      getters: {},
      bridge: true);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    print(args[0]?.$value);
    return $ExtractorApi(args[0]?.$value);
  }

  static $Value? $extract(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future
        .wrap((target?.$value as ExtractorApi).extract().then((value) {
      if (value is Video) {
        return $Video.wrap(value);
      }
      if (value is $Video) {
        return value;
      } else {
        return null;
      }
    }));
  }

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'extractorLink':
        return $ExtractorLink.wrap(super.extractorLink);
      case 'extract':
        return const $Function($extract);
      default:
        return const $null();
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  Future<Media> extract() async {
    final value = (await ($_invoke('extract', []) as Future));
    return getFutureValue(value);
  }

  Media getFutureValue(dynamic value) {
    if (value is Video || value is $Video) return value;
    throw Exception('Bad Response');
  }
}
