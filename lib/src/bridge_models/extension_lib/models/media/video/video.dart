import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/subtitle.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/video.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/video_source.dart';
import 'package:okhttp/okhttp.dart' hide MediaType;

class $Video implements Video, $Instance {
  $Video.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(ExtensionLibTypes.video.library, 'Video.', $new);
  }

  late final _superclass = $Media.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.video);

  static const $declaration = BridgeClassDef(
      BridgeClassType($type, $extends: $Media.$type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
            BridgeParameter(
                'videoSources',
                BridgeTypeAnnotation(
                  BridgeTypeRef(CoreTypes.list,
                      [BridgeTypeRef(ExtensionLibTypes.videoSource)]),
                ),
                true),
            BridgeParameter(
                'subtitles',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list,
                        [BridgeTypeRef(ExtensionLibTypes.subtitle)]),
                    nullable: true),
                true),
            BridgeParameter(
                'headers',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers),
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
            BridgeTypeRef(
                CoreTypes.list, [BridgeTypeRef(ExtensionLibTypes.videoSource)]),
          ),
        ),
        'subtitles': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(
                  CoreTypes.list, [BridgeTypeRef(ExtensionLibTypes.subtitle)]),
              nullable: true),
        ),
        'headers': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers),
              nullable: true),
        ),
        'extra': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map), nullable: true),
        ),
      },
      wrap: true);

  static $Value $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Video.wrap(Video(
      videoSources: (args[0]?.$value as List?)?.cast<VideoSource>() ?? [],
      subtitles: (args[1]?.$value as List?)?.cast<Subtitle>(),
      headers: args[2]?.$value as Headers?,
      extra: (args[3]?.$value as Map?)?.map(
          (key, value) => MapEntry(key is $Value ? key.$value : key, value)),
    ));
  }

  @override
  Map<String, dynamic>? get extra => $value.extra;

  @override
  Headers? get headers => $value.headers;

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
        return $List.wrap(videoSources);
      case 'subtitles':
        return subtitles != null ? $List.wrap(subtitles!) : const $null();
      case 'headers':
        return headers != null ? $Headers.wrap(headers!) : const $null();
      case 'extra':
        return extra != null
            ? $Map
                .wrap(extra!.map((key, value) => MapEntry($String(key), value)))
            : const $null();
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'videoSources':
        $value.videoSources = value.$reified;
        break;
      case 'subtitles':
        $value.subtitles = value.$reified;
        break;
      default:
        return _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Video $value;

  @override
  set extra(Map<String, dynamic>? extra) {
    $value.extra = extra;
  }

  @override
  set headers(Headers? headers) {
    $value.headers = headers;
  }

  @override
  set mediaType(MediaType? mediaType) {
    $value.mediaType = mediaType;
  }

  @override
  set subtitles(List<Subtitle>? subtitles) {
    $value.subtitles = subtitles;
  }

  @override
  set videoSources(List<VideoSource> videoSources) {
    $value.videoSources = videoSources;
  }

  @override
  String toString() {
    return $value.toString();
  }
}
