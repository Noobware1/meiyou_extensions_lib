import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/src/eval/runtime/runtime.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/catalogue_source.dart';

import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';

class $CatalogueSource extends CatalogueSource with $Bridge<CatalogueSource> {
  static const $type = BridgeTypeRef(ExtensionLibTypes.catalogueSource);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CatalogueSource.', $new.call,
        isBridge: true);
  }

  static const $declaration = BridgeClassDef(
    BridgeClassType($type,
        $extends: BridgeTypeRef(ExtensionLibTypes.source), isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
        ),
      )
    },
    methods: {
      'getFilterList': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(ExtensionLibTypes.filterList),
          ),
          params: [],
        ),
      ),
      'getSearch': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.future, [
            BridgeTypeRef(CoreTypes.list,
                [BridgeTypeRef(ExtensionLibTypes.searchResponse)])
          ])),
          params: [
            BridgeParameter('page',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)), false),
            BridgeParameter('query',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
            BridgeParameter(
                'filters',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.filterList)),
                false)
          ],
        ),
      ),
    },
    bridge: true,
  );

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $CatalogueSource();
  }

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'lang':
        return _$lang;
      case 'supportsHomePage':
        return _$supportsHomePage;
      default:
        throw UnimplementedError('Cannot get "$identifier" from "$this"');
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    // TODO: implement $bridgeSet
  }

  /// ============================ Methods =====================================
  @override
  FilterList getFilterList() => $_invoke('getFilterList', []);

  @override
  Future<List<SearchResponse>> getSearch(
      int page, String query, FilterList filters) {
    return $_invoke('getSearch', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters)
    ]).then((value) => (value as List).cast<SearchResponse>());
  }

  // ========================= Inherited and Overriden =========================

  @override
  int get id => $_get('id');

  @override
  String get name => $_get('name');

  @override
  bool get supportsHomePage => $_get('supportsHomePage');

  $Value? get _$supportsHomePage => $bool(super.supportsHomePage);

  @override
  String get lang => $_get('lang');

  $Value? get _$lang => $String(super.lang);

  @override
  Iterable<HomePageData> get homePageList => $_get('homePageList');

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    return $_invoke('getHomePage', [$int(page), $HomePageRequest.wrap(request)])
        .then((value) => value as HomePage);
  }

  @override
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse) {
    return $_invoke('getMediaDetails', [$SearchResponse.wrap(searchResponse)])
        .then((value) => value as MediaDetails);
  }

  @override
  Future<List<ExtractorLink>> getLinks(String url) {
    return $_invoke('getLinks', [$String(url)])
        .then((value) => (value as List).cast<ExtractorLink>());
  }

  @override
  Future<Media?> getMedia(ExtractorLink link) {
    return $_invoke('getMedia', [$ExtractorLink.wrap(link)])
        .then((value) => value as Media?);
  }
}
