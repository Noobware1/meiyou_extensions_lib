import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/shared_preferences.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/info_page.dart';
import 'package:meiyou_extensions_lib/src/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/models/source/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';

class $CatalogueSource extends CatalogueSource with $Bridge<CatalogueSource> {
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
    fields: {},
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
        return _$supportsHomePage;
      case 'homePageRequestTimeout':
        return _$homePageRequestTimeout;
      case 'lang':
        return _$lang;
      case 'preferences':
        return _$preferences;
      case 'setupPreferences':
        return __$setupPreferences;
      default:
        throw UnimplementedError('Unknown identifier $identifier');
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    throw UnimplementedError('Unknown identifier $identifier');
  }

  static const __$CatalogueSource$new = $Function(_$CatalogueSource$new);
  static $Value? _$CatalogueSource$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $CatalogueSource();
  }

  @override
  int get id => $_get('id') as int;

  @override
  String get name => $_get('name') as String;

  @override
  bool get supportsHomePage => $_get('supportsHomePage') as bool;
  $Value get _$supportsHomePage => $bool(super.supportsHomePage);

  @override
  double get homePageRequestTimeout =>
      $_get('homePageRequestTimeout') as double;
  $Value get _$homePageRequestTimeout => $double(super.homePageRequestTimeout);

  @override
  String get lang => $_get('lang') as String;
  $Value get _$lang => $String(super.lang);

  @override
  List<HomePageRequest> homePageRequests() {
    return ($_invoke('homePageRequests', []) as List).cast<HomePageRequest>();
  }

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    return ($_invoke('getHomePage', [
      $int(page),
      $HomePageRequest.wrap(request),
    ]) as Future)
        .then((value) => value as HomePage);
  }

  @override
  Future<InfoPage> getInfoPage(String url) {
    return ($_invoke('getInfoPage', [
      $String(url),
    ]) as Future)
        .then((value) => value as InfoPage);
  }

  @override
  Future<List<ContentDataLink>> getContentDataLinks(String url) {
    return ($_invoke('getContentDataLinks', [
      $String(url),
    ]) as Future)
        .then((value) => (value as List).cast<ContentDataLink>());
  }

  @override
  Future<ContentData?> getContentData(ContentDataLink link) {
    return ($_invoke('getContentData', [
      $ContentDataLink.wrap(link),
    ]) as Future)
        .then((value) => value as ContentData?);
  }

  @override
  List<PreferenceData> setupPreferences() {
    return ($_invoke('setupPreferences', []) as List).cast<PreferenceData>();
  }

  $Value get __$setupPreferences => $Function(_$setupPreferences);
  $Value? _$setupPreferences(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $UnsupportedError.wrap(UnsupportedError('Not implemented'));
  }

  @override
  Future<SearchPage> getSearchPage(int page, String query, FilterList filters) {
    return ($_invoke('getSearchPage', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters),
    ]) as Future)
        .then((value) => value as SearchPage);
  }

  @override
  FilterList getFilterList() {
    return $_invoke('getFilterList', []) as FilterList;
  }

  @override
  SharedPreferences get preferences =>
      $_get('preferences') as SharedPreferences;

  $Value get _$preferences => $SharedPreferences.wrap(super.preferences);
}
