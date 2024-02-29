import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/shared_preferences.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/catalogue_source.dart';

import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/override/lib_overrides.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';

class $CatalogueSource extends CatalogueSource with $Bridge<CatalogueSource> {
  $CatalogueSource(ExtensionLibOverrides overrides) {
    _$preferences = $SharedPreferences
        .wrap(overrides.$SharedPreferences$new(super.getPreferenceKey()));
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.catalogueSource);

  static void configureForRuntime(
      Runtime runtime, ExtensionLibOverrides overrides) {
    runtime.registerBridgeFunc($type.spec!.library, 'CatalogueSource.',
        (runtime, target, args) => $new.call(runtime, target, args, overrides),
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

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args,
      ExtensionLibOverrides overrides) {
    return $CatalogueSource(overrides);
  }

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'lang':
        return _$lang;
      case 'supportsHomePage':
        return _$supportsHomePage;
      case 'preferences':
        return _$preferences;
      case 'getPreferenceKey':
        return _$getPreferenceKey;
      case 'setupPreferences':
        return _$setupPreferences;
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
    return ($_invoke('getSearch',
            [$int(page), $String(query), $FilterList.wrap(filters)]) as Future)
        .then((value) => (value as List).cast<SearchResponse>());
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
    return ($_invoke(
                'getHomePage', [$int(page), $HomePageRequest.wrap(request)])
            as Future)
        .then((value) => value as HomePage);
  }

  @override
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse) {
    return ($_invoke('getMediaDetails', [$SearchResponse.wrap(searchResponse)])
            as Future)
        .then((value) => value as MediaDetails);
  }

  @override
  Future<List<ExtractorLink>> getLinks(String url) {
    return ($_invoke('getLinks', [$String(url)]) as Future)
        .then((value) => (value as List).cast<ExtractorLink>());
  }

  @override
  Future<Media?> getMedia(ExtractorLink link) {
    return ($_invoke('getMedia', [$ExtractorLink.wrap(link)]) as Future)
        .then((value) => value as Media?);
  }

  @override
  SharedPreferences get preferences => $_get('preferences');

  late final $Value _$preferences;

  @override
  String getPreferenceKey() => $_invoke('getPreferenceKey', []);

  $Value? get _$getPreferenceKey => $Function(__$getPreferenceKey);

  $Value? __$getPreferenceKey(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(super.getPreferenceKey());
  }

  @override
  List<PreferenceData> setupPreferences() =>
      ($_invoke('setupPreferences', []) as List).cast<PreferenceData>();

  $Value? get _$setupPreferences => $Function(__$setupPreferences);

  $Value? __$setupPreferences(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $UnsupportedError.wrap(UnsupportedError('Not Used'));
  }
}
