import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/content_category.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

class $ContentCategory implements $Instance {
  $ContentCategory.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        $type.spec!.library, 'ContentCategory', $ContentCategory.$values);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.contentCategory);

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
    'LightNovel',
    'WebNovel',
    'Novel',
    'Manga',
    'Webtoon',
    'Comic',
    'Others'
  ], methods: {}, getters: {}, setters: {}, fields: {});

  static final $values = {
    'Movie': $ContentCategory.wrap(ContentCategory.Movie),
    'AnimeMovie': $ContentCategory.wrap(ContentCategory.AnimeMovie),
    'TvSeries': $ContentCategory.wrap(ContentCategory.TvSeries),
    'Cartoon': $ContentCategory.wrap(ContentCategory.Cartoon),
    'Anime': $ContentCategory.wrap(ContentCategory.Anime),
    'Ova': $ContentCategory.wrap(ContentCategory.Ova),
    'Ona': $ContentCategory.wrap(ContentCategory.Ona),
    'Documentary': $ContentCategory.wrap(ContentCategory.Documentary),
    'AsainDrama': $ContentCategory.wrap(ContentCategory.AsainDrama),
    'Live': $ContentCategory.wrap(ContentCategory.Live),
    'LightNovel': $ContentCategory.wrap(ContentCategory.LightNovel),
    'WebNovel': $ContentCategory.wrap(ContentCategory.WebNovel),
    'Novel': $ContentCategory.wrap(ContentCategory.Novel),
    'Manga': $ContentCategory.wrap(ContentCategory.Manga),
    'Webtoon': $ContentCategory.wrap(ContentCategory.Webtoon),
    'Comic': $ContentCategory.wrap(ContentCategory.Comic),
    'Others': $ContentCategory.wrap(ContentCategory.Others),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ContentCategory get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final ContentCategory $value;

  @override
  String toString() {
    return $value.toString();
  }
}
