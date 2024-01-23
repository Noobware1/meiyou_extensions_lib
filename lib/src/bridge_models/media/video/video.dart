import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/subtitle.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/video_source.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/subtitle.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/video.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/video_source.dart';
import 'package:dartx/dartx.dart';

class $Video implements Video, $Instance {
  $Video.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'Video.', $new);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'Video'));

  static const $declaration = BridgeClassDef(
      BridgeClassType($type, $extends: $Media.$type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
            BridgeParameter(
                'videoSources',
                BridgeTypeAnnotation(
                  BridgeTypeRef(CoreTypes.list),
                ),
                true),
            BridgeParameter(
                'subtitles',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list),
                    nullable: true),
                true),
            BridgeParameter(
                'headers',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map),
                    nullable: true),
                true),
            BridgeParameter(
                'extra',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map),
                    nullable: true),
                true),
          ]),
        )
      },
      fields: {
        'mediaType': BridgeFieldDef(
          BridgeTypeAnnotation(
            $MediaType.$type,
          ),
        ),
        'videoSources': BridgeFieldDef(
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list),
          ),
        ),
        'subtitles': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list), nullable: true),
        ),
        'headers': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map), nullable: true),
        ),
        'extra': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map), nullable: true),
        ),
      },
      wrap: true);

  static $Value $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Video.wrap(Video(
      videoSources:
          (args[0]?.$value as List?)?.mapList((it) => it as VideoSource) ?? [],
      subtitles: (args[1]?.$value as List?)?.mapList((it) => it as Subtitle),
      headers: (args[2]?.$value as Map?)?.map((key, value) => MapEntry(
          key is $Value ? key.$value : value,
          value is $Value ? value.$value : value)),
      extra: args[3]?.$value,
    ));
  }

  @override
  Map<String, dynamic>? get extra => $value.extra;

  @override
  Map<String, String>? get headers => $value.headers;

  @override
  MediaType? get mediaType => $value.mediaType;

  @override
  List<Subtitle>? get subtitles => $value.subtitles;

  @override
  List<VideoSource> get videoSources => $value.videoSources;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'mediaType':
        return $value.mediaType != null
            ? $MediaType.wrap($value.mediaType!)
            : const $null();

      case 'videoSources':
        return $List
            .wrap($value.videoSources.mapList((it) => $VideoSource.wrap(it)));
      case 'subtitles':
        return $value.subtitles != null
            ? $List.wrap($value.subtitles!.mapList((it) => $Subtitle.wrap(it)))
            : const $null();

      case 'headers':
        return $value.headers != null
            ? $Map.wrap($value.headers!
                .map((key, value) => MapEntry($String(key), $String(value))))
            : const $null();
      case 'extra':
        return $value.extra != null
            ? $Map.wrap($value.headers!
                .map((key, value) => MapEntry($String(key), value)))
            : const $null();

      default:
        return const $null();
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}

  @override
  final Video $value;

  @override
  set extra(Map<String, dynamic>? extra) {
    // TODO: implement extra
  }

  @override
  set headers(Map<String, String>? headers) {
    // TODO: implement headers
  }

  @override
  set mediaType(MediaType? mediaType) {
    // TODO: implement mediaType
  }

  @override
  set subtitles(List<Subtitle>? subtitles) {
    // TODO: implement subtitles
  }

  @override
  set videoSources(List<VideoSource> videoSources) {
    // TODO: implement videoSources
  }

  @override
  String toString() {
    return $value.toString();
  }
}
