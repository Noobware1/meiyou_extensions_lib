// ignore_for_file: non_constant_identifier_names

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/models/source/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';

/// dart_eval bimodal wrapper for [CatalogueSource]
class $CatalogueSource extends CatalogueSource
    with $SourceMixin, $CatalogueSourceMixin, $Bridge<CatalogueSource> {
  $CatalogueSource();

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CatalogueSource.', __$CatalogueSource$new.call,
        isBridge: true);
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
    return $bridgeGetFromCatalogueSource(identifier);
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    switch (identifier) {
      default:
        return $_set(identifier, value);
    }
  }

  static const __$CatalogueSource$new = $Function(_$CatalogueSource$new);
  static $Value? _$CatalogueSource$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $CatalogueSource();
  }

  @override
  double get $superHomePageRequestTimeout => super.homePageRequestTimeout;

  @override
  String get $superLang => super.lang;

  @override
  SharedPreferences get $superPreferences => super.preferences;

  @override
  List<PreferenceData> $superSetupPreferences() => super.setupPreferences();

  @override
  bool get $superSupportsHomePage => super.supportsHomePage;
}

abstract mixin class $CatalogueSourceMixin {
  dynamic $_get(String prop);

  dynamic $_invoke(String method, List<$Value?> args);

  $Value? $bridgeGetFromCatalogueSource(String identifier) {
    return $bridgeGetFromSource(identifier);
  }

  $Value? $bridgeGetFromSource(String identifier);

  Future<SearchPage> getSearchPage(int page, String query, FilterList filters) {
    return ($_invoke('getSearchPage', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters),
    ]) as Future)
        .then((value) => value as SearchPage);
  }

  FilterList getFilterList() {
    return $_invoke('getFilterList', []) as FilterList;
  }
}
