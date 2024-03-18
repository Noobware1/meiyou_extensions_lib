// ignore_for_file: overridden_fields

import 'package:dart_eval/dart_eval.dart';
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
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
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
import 'package:nice_dart/nice_dart.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

class $ParsedHttpSource extends ParsedHttpSource
    with $Bridge<ParsedHttpSource> {
  /// Configure the [$ParsedHttpSource] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ParsedHttpSource.', __$ParsedHttpSource$new.call,isBridge: true);
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
        .getHomePage(args[0]!.$value, args[1]!.$value)
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
        .getSearchPage(args[0]!.$value, args[1]!.$value, args[2]!.$value)
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
        .getInfoPage(args[0]!.$value)
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
        .getContentDataLinks(args[0]!.$value)
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
    throw super.contentDataRequest(args[0]!.$value);
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
    throw super.contentDataParse(args[0]!.$value, args[1]!.$value);
  }

  @override
  Future<ContentData?> getContentData(ContentDataLink link) {
    return ($_invoke('getContentData', [$ContentDataLink.wrap(link)]) as Future)
        .then((value) => value as ContentData?);
  }

  $Value $getContentData(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future
        .wrap(super.getContentData(args[0]!.$value).then($ContentData.tryWrap));
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
      case 'homePageParse':
        return $Function($homePageParse);
      case 'searchPageParse':
        return $Function($searchPageParse);
      case 'infoPageParse':
        return $Function($infoPageParse);
      case 'contentDataLinksParse':
        return $Function($contentDataLinksParse);
      case 'contentDataFromDocument':
        return $Function($contentDataFromDocument);
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

  @override
  ContentDataLink contentDataLinkFromElement(String url, Element element) {
    return $_invoke(
        'contentDataLinkFromElement', [$String(url), $Element.wrap(element)]);
  }

  @override
  String contentDataLinkSelector(String url) {
    return $_invoke('contentDataLinkSelector', [$String(url)]);
  }

  @override
  HomePageData homePageDataFromElement(
      int page, HomePageRequest request, Element element) {
    return $_invoke('homePageDataFromElement',
        [$int(page), $HomePageRequest.wrap(request), $Element.wrap(element)]);
  }

  @override
  String homePageDataSelector(int page, HomePageRequest request) {
    return $_invoke(
        'homePageDataSelector', [$int(page), $HomePageRequest.wrap(request)]);
  }

  @override
  String? homePageNextPageSelector(int page, HomePageRequest request) {
    return $_invoke('homePageNextPageSelector',
        [$int(page), $HomePageRequest.wrap(request)]);
  }

  @override
  Future<InfoPage> infoPageFromDocument(Document document) {
    return ($_invoke('infoPageFromDocument', [$Document.wrap(document)])
            as Future)
        .then((value) => value as InfoPage);
  }

  @override
  ContentItem searchPageItemFromElement(
      int page, String query, FilterList filters, Element element) {
    return $_invoke('searchPageItemFromElement', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters),
      $Element.wrap(element)
    ]);
  }

  @override
  String searchPageItemSelector(int page, String query, FilterList filters) {
    return $_invoke('searchPageItemSelector',
        [$int(page), $String(query), $FilterList.wrap(filters)]);
  }

  @override
  String? searchPageNextPageSelector(
      int page, String query, FilterList filters) {
    return $_invoke('searchPageNextPageSelector',
        [$int(page), $String(query), $FilterList.wrap(filters)]);
  }

  $Value? $homePageParse(Runtime runtime, $Value? target, List<$Value?> args) {
    return $HomePage.wrap(
        super.homePageParse(args[0]!.$value, args[1]!.$value, args[2]!.$value));
  }

  $Value? $searchPageParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $SearchPage.wrap(super.searchPageParse(
        args[0]!.$value, args[1]!.$value, args[2]!.$value, args[3]!.$value));
  }

  $Value? $infoPageParse(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(super
        .infoPageParse(args[0]!.$value, args[1]!.$value)
        .then((value) => $InfoPage.wrap(value)));
  }

  $Value? $contentDataLinksParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $List.wrap(super
        .contentDataLinksParse(args[0]!.$value, args[1]!.$value as Response)
        .mapList($ContentDataLink.wrap));
  }

  @override
  Future<ContentData> contentDataFromDocument(
      ContentDataLink link, Document document) {
    return ($_invoke('contentDataFromDocument',
            [$ContentDataLink.wrap(link), $Document.wrap(document)]) as Future)
        .then((value) => value as ContentData);
  }

  $Value? $contentDataFromDocument(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return throw super
        .contentDataFromDocument(args[0]!.$value, args[1]!.$value);
  }

  static const __$ParsedHttpSource$new = $Function(_$ParsedHttpSource$new);
  static $Value? _$ParsedHttpSource$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $ParsedHttpSource();
  }
}
