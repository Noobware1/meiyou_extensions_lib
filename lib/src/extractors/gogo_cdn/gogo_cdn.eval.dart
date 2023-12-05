import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/bridge_models/extractor_link.dart';
import 'package:meiyou_extenstions/src/bridge_models/interfaces/extractor_api.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/video/video.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/extractors/gogo_cdn/gogo_cdn.dart';
import 'package:meiyou_extenstions/src/models/media/video/video.dart';

class $GogoCDN extends GogoCDN with $Bridge<GogoCDN> {
  $GogoCDN(super.extractorLink);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'GogoCDN.', $GogoCDN.$new,
        isBridge: true);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'GogoCDN'));

  static const $declaration = BridgeClassDef(
      BridgeClassType($type, isAbstract: false, $extends: $ExtractorApi.$type),
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
                BridgeTypeRef(CoreTypes.future, [$Video.$type])),
          ),
        )
      },
      fields: {
        'extractorLink':
            BridgeFieldDef(BridgeTypeAnnotation($ExtractorLink.$type))
      },
      getters: {
        'name': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
          isStatic: false,
        )
      },
      bridge: true);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $GogoCDN(args[0]?.$value);
  }

  static $Value $extract(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap((target?.$value as GogoCDN).extract().then((value) {
      return $Video.wrap(value);
    }));
  }

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'name':
        return $String(super.name);
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
  Future<Video> extract() async {
    final value = (await ($_invoke('extract', []) as Future));
    print((value as $Video).videoSources.map((e) => e.url));
    return Video(videoSources: []);
  }

  @override
  String get name => $_get('name');
}
