// ignore_for_file: overridden_fields

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/preference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/info_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/shared_preferences.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/okhttp_client.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:meiyou_extensions_lib/src/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/info_page.dart';
import 'package:meiyou_extensions_lib/src/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/models/source/online/http_source.dart';
import 'package:meiyou_extensions_lib/src/network/network_helper.dart';
import 'package:nice_dart/nice_dart.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

class $HttpSource extends HttpSource with $Bridge<HttpSource> {
  /// Configure the [$HttpSource] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HttpSource.', __$HttpSource$new.call,
        isBridge: true);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.httpSource);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.catalogueSource, []),
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
      'network': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(ExtensionLibTypes.networkHelper, []),
              nullable: false),
          isStatic: false),
      'baseUrl': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'versionId': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'headers': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'headersBuilder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.headersBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'homePageRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'page',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'request',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.homePageRequest, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'homePageParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.homePage, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'page',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'request',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.homePageRequest, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'response',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.response, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'searchPageRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
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
      'searchPageParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.searchPage, []),
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
                  false),
              BridgeParameter(
                  'response',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.response, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'infoPageRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'contentItem',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.contentItem, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'infoPageParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.infoPage, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'contentItem',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.contentItem, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'response',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.response, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'contentDataLinksRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'contentDataLinksParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(ExtensionLibTypes.contentDataLink, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'response',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.response, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'contentDataRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'link',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.contentDataLink, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'contentDataParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.contentData, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'link',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.contentDataLink, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'response',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.response, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {
      'client': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClient, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    setters: {},
    bridge: true,
    wrap: false,
  );

  @override
  late final NetworkHelper network = $_get('network');

  @override
  late final String baseUrl = $_get('baseUrl');

  @override
  late final int versionId = $_get('versionId');

  @override
  late final int id = $_get('id');

  @override
  late final Headers headers = $_get('headers');

  @override
  OkHttpClient get client => $_get('client');

  @override
  HeadersBuilder headersBuilder() => $_invoke('headersBuilder', []);

  $Value $headersBuilder(Runtime runtime, $Value? target, List<$Value?> args) {
    return $HeadersBuilder.wrap(super.headersBuilder());
  }

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) =>
      ($_invoke('getHomePage', [$int(page), $HomePageRequest.wrap(request)])
              as Future)
          .then((value) => value as HomePage);

  $Value $getHomePage(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(super
        .getHomePage(args[1]!.$value, args[2]!.$value)
        .then((value) => $HomePage.wrap(value)));
  }

  @override
  Request homePageRequest(int page, HomePageRequest request) {
    return $_invoke(
        'homePageRequest', [$int(page), $HomePageRequest.wrap(request)]);
  }

  @override
  HomePage homePageParse(int page, HomePageRequest request, Response response) {
    return $_invoke('homePageParse',
        [$int(page), $HomePageRequest.wrap(request), $Response.wrap(response)]);
  }

  @override
  Future<SearchPage> getSearchPage(int page, String query, FilterList filters) {
    return ($_invoke('getSearchPage',
            [$int(page), $String(query), $FilterList.wrap(filters)]) as Future)
        .then((value) => value as SearchPage);
  }

  $Value $getSearchPage(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(super
        .getSearchPage(args[1]!.$value, args[2]!.$value, args[3]!.$value)
        .then((value) => $SearchPage.wrap(value)));
  }

  /// Returns the request for the search manga given the page.
  ///
  /// * page the page number to retrieve.
  @override
  Request searchPageRequest(int page, String query, FilterList filters) {
    return $_invoke('searchPageRequest',
        [$int(page), $String(query), $FilterList.wrap(filters)]);
  }

  /// Parses the response from the site and returns a [SearchResponse] object.
  ///
  /// * response the response from the site.
  @override
  SearchPage searchPageParse(
      int page, String query, FilterList filters, Response response) {
    return $_invoke('searchPageParse', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters),
      $Response.wrap(response)
    ]);
  }

  @override
  Future<InfoPage> getInfoPage(ContentItem contentItem) {
    return ($_invoke('getInfoPage', [$ContentItem.wrap(contentItem)]) as Future)
        .then((value) => value as InfoPage);
  }

  $Value $getInfoPage(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(super
        .getInfoPage(args[1]!.$value)
        .then((value) => $InfoPage.wrap(value)));
  }

  @override
  Request infoPageRequest(ContentItem contentItem) {
    return $_invoke('infoPageRequest', [$ContentItem.wrap(contentItem)]);
  }

  @override
  Future<InfoPage> infoPageParse(ContentItem contentItem, Response response) {
    return ($_invoke('infoPageParse', [
      $ContentItem.wrap(contentItem),
      $Response.wrap(response)
    ]) as Future)
        .then((value) => value as InfoPage);
  }

  @override
  Future<List<ContentDataLink>> getContentDataLinks(String url) {
    return ($_invoke('getContentDataLinks', [$String(url)]) as Future)
        .then((value) => (value as List).cast<ContentDataLink>());
  }

  $Value $getContentDataLinks(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(super
        .getContentDataLinks(args[1]!.$value)
        .then((value) => $List.wrap(value.mapList($ContentDataLink.wrap))));
  }

  @override
  List<ContentDataLink> contentDataLinksParse(String url, Response response) {
    return ($_invoke('contentDataLinksParse',
            [$String(url), $Response.wrap(response)]) as List)
        .cast<ContentDataLink>();
  }

  @override
  Request contentDataLinksRequest(String url) {
    return $_invoke('contentDataLinksRequest', [$String(url)]);
  }

  @override
  Request contentDataRequest(ContentDataLink link) {
    return $_invoke('contentDataRequest', [$ContentDataLink.wrap(link)]);
  }

  $Value $contentDataRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    throw super.contentDataRequest(args[1]!.$value);
  }

  @override
  Future<ContentData> contentDataParse(
      ContentDataLink link, Response response) {
    return ($_invoke('contentDataRequest',
            [$ContentDataLink.wrap(link), $Response.wrap(response)]) as Future)
        .then((value) => value as ContentData);
  }

  $Value $contentDataParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    throw super.contentDataParse(args[1]!.$value, args[2]!.$value);
  }

  @override
  Future<ContentData?> getContentData(ContentDataLink link) {
    return ($_invoke('getContentData', [$ContentDataLink.wrap(link)]) as Future)
        .then((value) => value as ContentData?);
  }

  $Value $getContentData(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future
        .wrap(super.getContentData(args[1]!.$value).then($ContentData.tryWrap));
  }

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
      case 'network':
        return $NetworkHelper.wrap(super.network);
      case 'versionId':
        return $int(super.versionId);
      case 'id':
        return $int(super.id);
      case 'headers':
        return $Headers.wrap(super.headers);
      case 'client':
        return $OkHttpClient.wrap(super.client);
      case 'headersBuilder':
        return $Function($headersBuilder);
      case 'contentDataParse':
        return $Function($contentDataParse);
      case 'contentDataRequest':
        return $Function($contentDataRequest);
      case 'getContentData':
        return $Function($getContentData);
      case 'getContentDataLinks':
        return $Function($getContentDataLinks);
      case 'getInfoPage':
        return $Function($getInfoPage);
      case 'getSearchPage':
        return $Function($getSearchPage);
      case 'getHomePage':
        return $Function($getHomePage);
      default:
        throw UnsupportedError(identifier);
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  List<HomePageRequest> homePageRequests() =>
      ($_invoke('homePageRequests', []) as List).cast<HomePageRequest>();

  @override
  FilterList getFilterList() => ($_invoke('getFilterList', []) as FilterList);

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

  static const __$HttpSource$new = $Function(_$HttpSource$new);
  static $Value? _$HttpSource$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $HttpSource();
  }
}
