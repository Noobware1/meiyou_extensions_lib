import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dartx/dartx.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/homepage.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media/video/video.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media_details.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/search_response.dart';
import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/base_source.dart';
import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/video.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';

class $BaseSource extends BaseSource with $Bridge<BaseSource> {
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        ExtensionLibTypes.baseSource.library, 'BaseSource.', $BaseSource.$new,
        isBridge: true);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.baseSource);

  static const $declaration =
      BridgeClassDef(BridgeClassType($type, isAbstract: true),
          constructors: {
            '': BridgeConstructorDef(
              BridgeFunctionDef(
                returns: BridgeTypeAnnotation($type),
                generics: {},
                namedParams: [],
                params: [],
              ),
            )
          },
          methods: {
            'loadHomePage': BridgeMethodDef(
              BridgeFunctionDef(
                  returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.future, [
                      $HomePage.$type,
                    ]),
                  ),
                  params: [
                    BridgeParameter(
                        'page',
                        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
                        false),
                    BridgeParameter('request',
                        BridgeTypeAnnotation($HomePageRequest.$type), false),
                  ]),
            ),
            'search': BridgeMethodDef(
              BridgeFunctionDef(
                  returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.future, [
                      BridgeTypeRef(CoreTypes.list, [$SearchResponse.$type]),
                    ]),
                  ),
                  params: [
                    BridgeParameter(
                        'query',
                        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                        false)
                  ]),
            ),
            'loadMediaDetails': BridgeMethodDef(
              BridgeFunctionDef(
                  returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.future, [$MediaDetails.$type]),
                  ),
                  params: [
                    BridgeParameter('searchResponse',
                        BridgeTypeAnnotation($SearchResponse.$type), false)
                  ]),
            ),
            'loadLinks': BridgeMethodDef(
              BridgeFunctionDef(
                  returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.future, [
                      BridgeTypeRef(CoreTypes.list),
                    ]),
                  ),
                  params: [
                    BridgeParameter(
                        'url',
                        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                        false)
                  ]),
            ),
            'loadMedia': BridgeMethodDef(
              BridgeFunctionDef(
                  returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.future, [$Media.$type]),
                      nullable: true),
                  params: [
                    BridgeParameter('link',
                        BridgeTypeAnnotation($ExtractorLink.$type), false)
                  ]),
            ),
          },
          getters: {
            'baseurl': BridgeMethodDef(
              BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              ),
            ),
            'homePage': BridgeMethodDef(
              BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.iterable, [$HomePageData.$type])),
              ),
            )
          },
          bridge: true);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $BaseSource();
  }

  static $Future<$HomePage> $loadHomePage(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap((target?.$value as BaseSource)
        .loadHomePage(args[0]!.$value, args[1]?.$value)
        .then((value) => $HomePage.wrap(value)));
  }

  static $Future<$List<$SearchResponse>> $search(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap((target?.$value as BaseSource)
        .search(args[0]?.$value)
        .then((value) =>
            $List.wrap(value.mapList((it) => $SearchResponse.wrap(it)))));
  }

  static $Future<$MediaDetails> $loadMediaDetails(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap((target?.$value as BaseSource)
        .loadMediaDetails(args[0]?.$value)
        .then((value) => $MediaDetails.wrap(value)));
  }

  static $Future<$List<$ExtractorLink>> $loadLinks(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap((target?.$value as BaseSource)
        .loadLinks(args[0]?.$value)
        .then((value) =>
            $List.wrap(value.mapList((it) => $ExtractorLink.wrap(it)))));
  }

  static $Value? $loadMedia(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(
        (target?.$value as BaseSource).loadMedia(args[0]?.$value).then((value) {
      if (value == null) {
        return null;
      }
      if (value is Video) {
        return $Video.wrap(value);
      } else {
        throw Exception('Bad Response');
      }
    }));
  }

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'homePage':
        return $Iterable.wrap(
            homePage.map((it) => it is $Value ? it : $HomePageData.wrap(it)));
      case 'baseurl':
        return $String(baseUrl);
      case 'loadHomePage':
        return const $Function($loadHomePage);
      case 'search':
        return const $Function($search);
      case 'loadMediaDetails':
        return const $Function($loadMediaDetails);
      case 'loadLinks':
        return const $Function($loadLinks);
      case 'loadMedia':
        return const $Function($loadMedia);
      default:
        return null;
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  Future<MediaDetails> loadMediaDetails(SearchResponse searchResponse) async {
    final value = await ($_invoke(
        'loadMediaDetails', [$SearchResponse.wrap(searchResponse)]) as Future);
    return value as MediaDetails;
  }

  @override
  Future<List<SearchResponse>> search(String query) async {
    final value = await ($_invoke('search', [$String(query)]) as Future);
    return (value as List).mapList((it) => it as SearchResponse);
  }

  @override
  Future<List<ExtractorLink>> loadLinks(String url) async {
    final value = await ($_invoke('loadLinks', [$String(url)]) as Future);
    return (value as List).mapList((it) => it as ExtractorLink);
  }

  @override
  Future<Media?> loadMedia(ExtractorLink link) async {
    final value = (await $_invoke('loadMedia', [$ExtractorLink.wrap(link)]));
    return value as Media;
  }

  @override
  Future<HomePage> loadHomePage(int page, HomePageRequest request) async {
    final value = (await $_invoke(
        'loadHomePage', [$int(page), $HomePageRequest.wrap(request)]));
    return value as HomePage;
  }

  @override
  Iterable<HomePageData> get homePage =>
      ($_get('homePage') as Iterable).map((e) => e as HomePageData);

  @override
  String get baseUrl => $_get('baseUrl').toString();
}
