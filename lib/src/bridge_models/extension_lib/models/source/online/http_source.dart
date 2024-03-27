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
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request.dart';
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
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

class $HttpSource extends HttpSource with $Bridge<HttpSource> {
  $HttpSource();

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
      'id': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
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
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'id':
        return _$id;
      case 'supportsHomePage':
        return _$supportsHomePage;
      case 'homePageRequestTimeout':
        return _$homePageRequestTimeout;
      case 'lang':
        return _$lang;
      case 'network':
        return _$network;
      case 'versionId':
        return _$versionId;
      case 'headers':
        return _$headers;
      case 'client':
        return _$client;
      case 'preferences':
        return _$preferences;
      case 'headersBuilder':
        return __$headersBuilder;
      case 'getHomePage':
        return __$getHomePage;
      case 'getSearchPage':
        return __$getSearchPage;
      case 'getInfoPage':
        return __$getInfoPage;
      case 'getContentDataLinks':
        return __$getContentDataLinks;
      case 'getContentData':
        return __$getContentData;
      case 'contentDataRequest':
        return __$contentDataRequest;
      case 'contentDataParse':
        return __$contentDataParse;
      case 'setupPreferences':
        return __$setupPreferences;
      default:
        throw UnimplementedError('Unknown identifier $identifier');
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    switch (identifier) {
      default:
        return $_set(identifier, value);
    }
  }

  static const __$HttpSource$new = $Function(_$HttpSource$new);
  static $Value? _$HttpSource$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $HttpSource();
  }

  @override
  int get id => $_get('id') as int;
  $Value get _$id => $int(super.id);

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
  NetworkHelper get network => $_get('network') as NetworkHelper;
  $Value get _$network => $NetworkHelper.wrap(super.network);

  @override
  String get baseUrl => $_get('baseUrl') as String;

  @override
  int get versionId => $_get('versionId') as int;
  $Value get _$versionId => $int(super.versionId);

  @override
  Headers get headers => $_get('headers') as Headers;
  $Value get _$headers => $Headers.wrap(super.headers);

  @override
  List<HomePageRequest> homePageRequests() {
    return ($_invoke('homePageRequests', []) as List).cast<HomePageRequest>();
  }

  @override
  HeadersBuilder headersBuilder() {
    return $_invoke('headersBuilder', []) as HeadersBuilder;
  }

  $Value get __$headersBuilder => $Function(_$headersBuilder);
  $Value? _$headersBuilder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = super.headersBuilder();
    return $HeadersBuilder.wrap($result);
  }

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    return ($_invoke('getHomePage', [
      $int(page),
      $HomePageRequest.wrap(request),
    ]) as Future)
        .then((value) => value as HomePage);
  }

  $Value get __$getHomePage => $Function(_$getHomePage);
  $Value? _$getHomePage(Runtime runtime, $Value? target, List<$Value?> args) {
    final page = args[1]?.$value as int;
    final request = args[2]?.$reified as HomePageRequest;
    final $result = super.getHomePage(
      page,
      request,
    );
    return $Future.wrap($result.then((value) => $HomePage.wrap(value)))
        as $Value?;
  }

  @override
  Request homePageRequest(int page, HomePageRequest request) {
    return $_invoke('homePageRequest', [
      $int(page),
      $HomePageRequest.wrap(request),
    ]) as Request;
  }

  @override
  HomePage homePageParse(int page, HomePageRequest request, Response response) {
    return $_invoke('homePageParse', [
      $int(page),
      $HomePageRequest.wrap(request),
      $Response.wrap(response),
    ]) as HomePage;
  }

  @override
  FilterList getFilterList() {
    return $_invoke('getFilterList', []) as FilterList;
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

  $Value get __$getSearchPage => $Function(_$getSearchPage);
  $Value? _$getSearchPage(Runtime runtime, $Value? target, List<$Value?> args) {
    final page = args[1]?.$value as int;
    final query = args[2]?.$value as String;
    final filters = args[3]?.$reified as FilterList;
    final $result = super.getSearchPage(
      page,
      query,
      filters,
    );
    return $Future.wrap($result.then((value) => $SearchPage.wrap(value)))
        as $Value?;
  }

  @override
  Request searchPageRequest(int page, String query, FilterList filters) {
    return $_invoke('searchPageRequest', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters),
    ]) as Request;
  }

  @override
  SearchPage searchPageParse(
      int page, String query, FilterList filters, Response response) {
    return $_invoke('searchPageParse', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters),
      $Response.wrap(response),
    ]) as SearchPage;
  }

  @override
  Future<InfoPage> getInfoPage(ContentItem contentItem) {
    return ($_invoke('getInfoPage', [
      $ContentItem.wrap(contentItem),
    ]) as Future)
        .then((value) => value as InfoPage);
  }

  $Value get __$getInfoPage => $Function(_$getInfoPage);
  $Value? _$getInfoPage(Runtime runtime, $Value? target, List<$Value?> args) {
    final contentItem = args[1]?.$reified as ContentItem;
    final $result = super.getInfoPage(
      contentItem,
    );
    return $Future.wrap($result.then((value) => $InfoPage.wrap(value)))
        as $Value?;
  }

  @override
  Request infoPageRequest(ContentItem contentItem) {
    return $_invoke('infoPageRequest', [
      $ContentItem.wrap(contentItem),
    ]) as Request;
  }

  @override
  Future<InfoPage> infoPageParse(ContentItem contentItem, Response response) {
    return ($_invoke('infoPageParse', [
      $ContentItem.wrap(contentItem),
      $Response.wrap(response),
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

  $Value get __$getContentDataLinks => $Function(_$getContentDataLinks);
  $Value? _$getContentDataLinks(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[1]?.$value as String;
    final $result = super.getContentDataLinks(
      url,
    );
    return $Future.wrap(
        $result.then((value) => $List.wrap(List.generate(value.length, (index) {
              return $ContentDataLink.wrap(value[index]);
            })) as $Value?)) as $Value?;
  }

  @override
  Request contentDataLinksRequest(String url) {
    return $_invoke('contentDataLinksRequest', [
      $String(url),
    ]) as Request;
  }

  @override
  List<ContentDataLink> contentDataLinksParse(String url, Response response) {
    return ($_invoke('contentDataLinksParse', [
      $String(url),
      $Response.wrap(response),
    ]) as List)
        .cast<ContentDataLink>();
  }

  @override
  Future<ContentData?> getContentData(ContentDataLink link) {
    return ($_invoke('getContentData', [
      $ContentDataLink.wrap(link),
    ]) as Future)
        .then((value) => value as ContentData?);
  }

  $Value get __$getContentData => $Function(_$getContentData);
  $Value? _$getContentData(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final link = args[1]?.$reified as ContentDataLink;
    final $result = super.getContentData(
      link,
    );
    return $Future.wrap($result.then(
            (value) => value == null ? $null() : $ContentData.wrap(value)))
        as $Value?;
  }

  @override
  Request contentDataRequest(ContentDataLink link) {
    return $_invoke('contentDataRequest', [
      $ContentDataLink.wrap(link),
    ]) as Request;
  }

  $Value get __$contentDataRequest => $Function(_$contentDataRequest);
  $Value? _$contentDataRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final link = args[1]?.$reified as ContentDataLink;
    final $result = super.contentDataRequest(
      link,
    );
    return $Request.wrap($result);
  }

  @override
  Future<ContentData> contentDataParse(
      ContentDataLink link, Response response) {
    return ($_invoke('contentDataParse', [
      $ContentDataLink.wrap(link),
      $Response.wrap(response),
    ]) as Future)
        .then((value) => value as ContentData);
  }

  $Value get __$contentDataParse => $Function(_$contentDataParse);
  $Value? _$contentDataParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final link = args[1]?.$reified as ContentDataLink;
    final response = args[2]?.$reified as Response;
    final $result = super.contentDataParse(
      link,
      response,
    );
    return $Future.wrap($result.then((value) => $ContentData.wrap(value)))
        as $Value?;
  }

  @override
  List<PreferenceData> setupPreferences() =>
      ($_invoke('setupPreferences', []) as List).cast<PreferenceData>();
  $Value get __$setupPreferences => $Function(_$setupPreferences);
  $Value? _$setupPreferences(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $UnsupportedError.wrap(UnsupportedError('Not implemented'));
  }

  @override
  OkHttpClient get client => $_get('client') as OkHttpClient;

  $Value get _$client => $OkHttpClient.wrap(super.client);

  @override
  SharedPreferences get preferences =>
      $_get('preferences') as SharedPreferences;
  $Value get _$preferences => $SharedPreferences.wrap(super.preferences);
}
