import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/media_format.dart';

class $MediaFormat implements $Instance {
  $MediaFormat.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        $type.spec!.library, 'MediaFormat', $MediaFormat.$values);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.mediaFormat);

  static const $declaration = BridgeEnumDef($type, values: [
    'movie',
    'animeMovie',
    'tvSeries',
    'cartoon',
    'anime',
    'ova',
    'ona',
    'documentary',
    'asainDrama',
    'lightNovel',
    'webNovel',
    'novel',
    'manga',
    'webtoon',
    'comic',
    'others'
  ], methods: {}, getters: {}, setters: {}, fields: {});

  static final $values = {
    'movie': $MediaFormat.wrap(MediaFormat.movie),
    'animeMovie': $MediaFormat.wrap(MediaFormat.animeMovie),
    'tvSeries': $MediaFormat.wrap(MediaFormat.tvSeries),
    'cartoon': $MediaFormat.wrap(MediaFormat.cartoon),
    'anime': $MediaFormat.wrap(MediaFormat.anime),
    'ova': $MediaFormat.wrap(MediaFormat.ova),
    'ona': $MediaFormat.wrap(MediaFormat.ona),
    'documentary': $MediaFormat.wrap(MediaFormat.documentary),
    'asainDrama': $MediaFormat.wrap(MediaFormat.asainDrama),
    'lightNovel': $MediaFormat.wrap(MediaFormat.lightNovel),
    'webNovel': $MediaFormat.wrap(MediaFormat.webNovel),
    'novel': $MediaFormat.wrap(MediaFormat.novel),
    'manga': $MediaFormat.wrap(MediaFormat.manga),
    'webtoon': $MediaFormat.wrap(MediaFormat.webtoon),
    'comic': $MediaFormat.wrap(MediaFormat.comic),
    'others': $MediaFormat.wrap(MediaFormat.others),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  MediaFormat get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final MediaFormat $value;

  @override
  String toString() {
    return $value.toString();
  }
}
