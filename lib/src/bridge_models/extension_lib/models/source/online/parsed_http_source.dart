import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:html/dom.dart';
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
import 'package:meiyou_extensions_lib/src/bridge_models/html/document.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/element.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/okhttp_client.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:meiyou_extensions_lib/src/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/info_page.dart';
import 'package:meiyou_extensions_lib/src/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/models/source/online/parsed_http_source.dart';
import 'package:meiyou_extensions_lib/src/network/network_helper.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

class $ParsedHttpSource extends ParsedHttpSource
    with $Bridge<ParsedHttpSource> {
  $ParsedHttpSource();

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      $type.spec!.library,
      'ParsedHttpSource.',
      __$ParsedHttpSource$new.call,
      isBridge: true,
    );
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.parsedHttpSource);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.httpSource, []),
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
      'homePageDataSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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
      'homePageNextPageSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
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
      'homePageDataFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.homePageData, []),
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
                  'element',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'searchPageItemSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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
      'searchPageNextPageSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
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
      'searchPageItemFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.contentItem, []),
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
                  'element',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'infoPageFromDocument': BridgeMethodDef(
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
                  'document',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'contentDataLinkSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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
      'contentDataLinkFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.contentDataLink, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'element',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'contentDataFromDocument': BridgeMethodDef(
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
                  'document',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document, []),
                      nullable: false),
                  false)
            ],
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
      case 'homePageParse':
        return __$homePageParse;
      case 'getSearchPage':
        return __$getSearchPage;
      case 'searchPageParse':
        return __$searchPageParse;
      case 'getInfoPage':
        return __$getInfoPage;
      case 'infoPageParse':
        return __$infoPageParse;
      case 'getContentDataLinks':
        return __$getContentDataLinks;
      case 'contentDataLinksParse':
        return __$contentDataLinksParse;
      case 'getContentData':
        return __$getContentData;
      case 'contentDataRequest':
        return __$contentDataRequest;
      case 'contentDataParse':
        return __$contentDataParse;
      case 'contentDataFromDocument':
        return __$contentDataFromDocument;
      case 'setupPreferences':
        return __$setupPreferences;
      default:
        throw UnimplementedError('Unknown identifier $identifier');
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) =>
      throw UnimplementedError();

  static const __$ParsedHttpSource$new = $Function(_$ParsedHttpSource$new);
  static $Value? _$ParsedHttpSource$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $ParsedHttpSource();
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

  $Value get __$homePageParse => $Function(_$homePageParse);
  $Value? _$homePageParse(Runtime runtime, $Value? target, List<$Value?> args) {
    final page = args[1]?.$value as int;
    final request = args[2]?.$reified as HomePageRequest;
    final response = args[3]?.$reified as Response;
    final $result = super.homePageParse(
      page,
      request,
      response,
    );
    return $HomePage.wrap($result);
  }

  @override
  String homePageDataSelector(int page, HomePageRequest request) {
    return $_invoke('homePageDataSelector', [
      $int(page),
      $HomePageRequest.wrap(request),
    ]) as String;
  }

  @override
  String? homePageNextPageSelector(int page, HomePageRequest request) {
    return $_invoke('homePageNextPageSelector', [
      $int(page),
      $HomePageRequest.wrap(request),
    ]) as String?;
  }

  @override
  HomePageData homePageDataFromElement(
      int page, HomePageRequest request, Element element) {
    return $_invoke('homePageDataFromElement', [
      $int(page),
      $HomePageRequest.wrap(request),
      $Element.wrap(element),
    ]) as HomePageData;
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

  $Value get __$searchPageParse => $Function(_$searchPageParse);
  $Value? _$searchPageParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final page = args[1]?.$value as int;
    final query = args[2]?.$value as String;
    final filters = args[3]?.$reified as FilterList;
    final response = args[4]?.$reified as Response;
    final $result = super.searchPageParse(
      page,
      query,
      filters,
      response,
    );
    return $SearchPage.wrap($result);
  }

  @override
  String searchPageItemSelector(int page, String query, FilterList filters) {
    return $_invoke('searchPageItemSelector', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters),
    ]) as String;
  }

  @override
  String? searchPageNextPageSelector(
      int page, String query, FilterList filters) {
    return $_invoke('searchPageNextPageSelector', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters),
    ]) as String?;
  }

  @override
  ContentItem searchPageItemFromElement(
      int page, String query, FilterList filters, Element element) {
    return $_invoke('searchPageItemFromElement', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters),
      $Element.wrap(element),
    ]) as ContentItem;
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

  $Value get __$infoPageParse => $Function(_$infoPageParse);
  $Value? _$infoPageParse(Runtime runtime, $Value? target, List<$Value?> args) {
    final contentItem = args[1]?.$reified as ContentItem;
    final response = args[2]?.$reified as Response;
    final $result = super.infoPageParse(
      contentItem,
      response,
    );
    return $Future.wrap($result.then((value) => $InfoPage.wrap(value)))
        as $Value?;
  }

  @override
  Future<InfoPage> infoPageFromDocument(
      ContentItem contentItem, Document document) {
    return ($_invoke('infoPageFromDocument', [
      $ContentItem.wrap(contentItem),
      $Document.wrap(document),
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

  $Value get __$contentDataLinksParse => $Function(_$contentDataLinksParse);
  $Value? _$contentDataLinksParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[1]?.$value as String;
    final response = args[2]?.$reified as Response;
    final $result = super.contentDataLinksParse(
      url,
      response,
    );
    return $List.wrap(List.generate($result.length, (index) {
      return $ContentDataLink.wrap($result[index]);
    })) as $Value?;
  }

  @override
  String contentDataLinkSelector(String url) {
    return $_invoke('contentDataLinkSelector', [
      $String(url),
    ]) as String;
  }

  @override
  ContentDataLink contentDataLinkFromElement(String url, Element element) {
    return $_invoke('contentDataLinkFromElement', [
      $String(url),
      $Element.wrap(element),
    ]) as ContentDataLink;
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
  Future<ContentData> contentDataFromDocument(
      ContentDataLink link, Document document) {
    return ($_invoke('contentDataFromDocument', [
      $ContentDataLink.wrap(link),
      $Document.wrap(document),
    ]) as Future)
        .then((value) => value as ContentData);
  }

  $Value get __$contentDataFromDocument => $Function(_$contentDataFromDocument);
  $Value? _$contentDataFromDocument(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final link = args[1]?.$reified as ContentDataLink;
    final document = args[2]?.$reified as Document;
    final $result = super.contentDataFromDocument(
      link,
      document,
    );
    return $Future.wrap($result.then((value) => $ContentData.wrap(value)))
        as $Value?;
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
  OkHttpClient get client => $_invoke('client', []) as OkHttpClient;

  $Value get _$client => $OkHttpClient.wrap(super.client);

  @override
  SharedPreferences get preferences =>
      $_invoke('preferences', []) as SharedPreferences;

  $Value get _$preferences => $SharedPreferences.wrap(super.preferences);
}
