import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/shared_preferences.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/info_page.dart';
import 'package:meiyou_extensions_lib/src/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/models/source/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';

class $CatalogueSource extends CatalogueSource with $Bridge<CatalogueSource> {
  /// Configure the [$CatalogueSource] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      $type.spec!.library,
      'CatalogueSource.',
      __$CatalogueSource$new.call,
      isBridge: true,
    );
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.catalogueSource);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.source, []),
      $implements: [],
      isAbstract: true,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'lang': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'getSearchPage': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.searchPage, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'page',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'query',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'filters',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.filterList, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getFilterList': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.filterList, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: true,
    wrap: false,
  );

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'supportsHomePage':
        return $bool(super.supportsHomePage);
      case 'homePageRequestTimeout':
        return $double(super.homePageRequestTimeout);
      case 'lang':
        return $String(super.lang);
      case 'preferences':
        return $SharedPreferences.wrap(super.preferences);
      case 'setupPreferences':
        return $Function(_$setupPreferences);
      default:
        throw UnsupportedError(identifier);
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  Future<ContentData?> getContentData(ContentDataLink link) {
    return ($_invoke('getContentData', [$ContentDataLink.wrap(link)]) as Future)
        .then((value) => value as ContentData?);
  }

  @override
  Future<List<ContentDataLink>> getContentDataLinks(String url) {
    return ($_invoke('getContentDataLinks', []) as Future)
        .then((value) => (value as List).cast<ContentDataLink>());
  }

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    return ($_invoke(
                'getHomePage', [$int(page), $HomePageRequest.wrap(request)])
            as Future)
        .then((value) => value as HomePage);
  }

  @override
  Future<InfoPage> getInfoPage(ContentItem contentItem) {
    return ($_invoke('getInfoPage', [$ContentItem.wrap(contentItem)]) as Future)
        .then((value) => value as InfoPage);
  }

  @override
  List<HomePageRequest> homePageRequests() =>
      ($_invoke('homePageRequests', []) as List).cast<HomePageRequest>();

  @override
  Future<SearchPage> getSearchPage(int page, String query, FilterList filters) {
    return ($_invoke('getSearchPage',
            [$int(page), $String(query), $FilterList.wrap(filters)]) as Future)
        .then((value) => value as SearchPage);
  }

  @override
  FilterList getFilterList() => ($_invoke('getFilterList', []) as FilterList);

  @override
  int get id => $_get('id');

  @override
  String get name => $_get('name');

  @override
  bool get supportsHomePage => $_get('supportsHomePage');

  @override
  double get homePageRequestTimeout => $_get('homePageRequestTimeout');

  @override
  String get lang => $_get('lang');

  @override
  SharedPreferences get preferences => $_get('preferences');

  @override
  List<PreferenceData> setupPreferences() {
    return ($_invoke('setupPreferences', []) as List).cast<PreferenceData>();
  }

  $Value _$setupPreferences(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $UnsupportedError.wrap(UnsupportedError('Not implemented'));
  }

  static const __$CatalogueSource$new = $Function(_$CatalogueSource$new);
  static $Value? _$CatalogueSource$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $CatalogueSource();
  }
}
