import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/src/eval/runtime/runtime.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/shared_preferences.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';
import 'package:nice_dart/nice_dart.dart';
import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/document.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/element.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/okhttp_client.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/online/parsed_http_source.dart';

import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/utils/wrap.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

class $ParsedHttpSource extends ParsedHttpSource
    with $Bridge<ParsedHttpSource> {
  $ParsedHttpSource(super.network);

  static const $type = BridgeTypeRef(ExtensionLibTypes.parsedHttpSource);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ParsedHttpSource.', $new.call,
        isBridge: true);
  }

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
          params: [
            BridgeParameter(
                'network',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.networkHelper, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {
      'homePageListDataSelector': BridgeMethodDef(
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
      'homePageHasNextPageSelector': BridgeMethodDef(
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
      'homePageListDataFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.searchResponse, []),
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
      'searchListSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'searchResponseFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.searchResponse, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'element',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'mediaDetailsFromDocument': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetails, []),
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
      'mediaItemFromDocument': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaItem, []),
                nullable: true),
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
      'linksListSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'linkFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.extractorLink, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'element',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'mediaFromDocument': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.media, []),
                nullable: true),
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
    },
    getters: {},
    setters: {},
    bridge: true,
    wrap: false,
  );

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ParsedHttpSource(args[0]?.$value);
  }

  // $Value? $headersBuilder(Runtime runtime, $Value? target, List<$Value?> args) {
  //   return $HeadersBuilder.wrap(super.headersBuilder());
  // }

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      // ========= Inherited from HttpSource ============
      case 'lang':
        return _$lang;
      case 'supportsHomePage':
        return _$supportsHomePage;
      case 'id':
        return _$id;
      case 'getHomePage':
        return _$getHomePage;
      case 'getSearch':
        return _$getSearch;
      case 'getMediaDetails':
        return _$getMediaDetails;
      case 'getLinks':
        return _$getLinks;
      case 'getMedia':
        return _$getMedia;
      case 'versionId':
        return _$versionId;
      case 'network':
        return _$network;
      case 'headers':
        return _$headers;
      case 'headersBuilder':
        return _$headersBuilder;
      case 'client':
        return _$client;
      case 'preferences':
        return _$preferences;
      case 'getPreferenceId':
        return _$getPreferenceKey;
      case 'setupPreferences':
        return _$setupPreferences;
      // ==================== overriden ====================
      case 'homePageParse':
        return _$homePageParse;
      case 'searchParse':
        return _$searchParse;
      case 'mediaDetailsParse':
        return _$mediaDetailsParse;
      case 'mediaItemParse':
        return _$mediaItemParse;
      case 'linksParse':
        return _$linksParse;
      case 'mediaParse':
        return _$mediaParse;
      default:
        throw UnimplementedError('Cannot get "$identifier" from "$this"');
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    // TODO: implement $bridgeSet
  }

  // ================================ HomePage =================================

  @override
  String? homePageHasNextPageSelector(int page, HomePageRequest request) {
    return $_invoke('homePageHasNextPageSelector',
        [$int(page), $HomePageRequest.wrap(request)]);
  }

  @override
  SearchResponse homePageListDataFromElement(
      int page, HomePageRequest request, Element element) {
    return $_invoke('homePageListDataFromElement',
        [$int(page), $HomePageRequest.wrap(request), $Element.wrap(element)]);
  }

  @override
  String homePageListDataSelector(int page, HomePageRequest request) {
    return $_invoke('homePageListDataSelector',
        [$int(page), $HomePageRequest.wrap(request)]);
  }

// ================================ Search =====================================
  @override
  String searchListSelector() {
    return $_invoke('searchListSelector', []);
  }

  @override
  SearchResponse searchResponseFromElement(Element element) {
    return $_invoke('searchResponseFromElement', [$Element.wrap(element)]);
  }

// ================================ MediaDetails ===============================
  @override
  MediaDetails mediaDetailsFromDocument(Document document) {
    return $_invoke('mediaDetailsFromDocument', [$Document.wrap(document)]);
  }

  @override
  MediaItem? mediaItemFromDocument(Document document) {
    return $_invoke('mediaItemFromDocument', [$Document.wrap(document)]);
  }

// ================================ Links ======================================
  @override
  ExtractorLink linkFromElement(Element element) {
    return $_invoke('linkFromElement', [$Element.wrap(element)]);
  }

  @override
  String linksListSelector() {
    return $_invoke('linksListSelector', []);
  }

// ================================ Media ======================================
  @override
  Media? mediaFromDocument(Document document) {
    return $_invoke('mediaFromDocument', [$Document.wrap(document)]);
  }

// ================================== Inherited From HttpSource ================================

// =============================== Fields ======================================

  @override
  NetworkHelper get network => $_get('network');

  $Value? get _$network => $NetworkHelper.wrap(super.network);

  @override
  String get baseUrl => $_get('baseUrl');

  @override
  int get versionId => $_get('versionId');

  $Value? get _$versionId => $int(super.versionId);

  @override
  Headers get headers => $_get('headers');

  $Value? get _$headers => $Headers.wrap(super.headers);

  // =============================== Getters ===================================

  @override
  OkHttpClient get client => $_get('client');

  $Value? get _$client => $OkHttpClient.wrap(super.client);

  // =============================== Methods ===================================

  @override
  HeadersBuilder headersBuilder() {
    return $_invoke('headersBuilder', []);
  }

  $Value? get _$headersBuilder => $Function(__$headersBuilder);

  $Value? __$headersBuilder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $HeadersBuilder.wrap(super.headersBuilder());
  }

  // ============================== HomePage ===================================
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

  $Value get _$homePageParse => $Function(__$homePageParse);

  $Value? __$homePageParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $HomePage.wrap(
        super.homePageParse(args[1]!.$value, args[2]!.$value, args[3]!.$value));
  }

  // ============================= Search ===================================
  @override
  Request searchRequest(int page, String query, FilterList filters) {
    return $_invoke('searchRequest',
        [$int(page), $String(query), $FilterList.wrap(filters)]);
  }

  @override
  List<SearchResponse> searchParse(Response response) {
    return ($_invoke('searchParse', [$Response.wrap(response)]) as List)
        .cast<SearchResponse>();
  }

  $Value get _$searchParse => $Function(__$searchParse);

  $Value? __$searchParse(Runtime runtime, $Value? target, List<$Value?> args) {
    return super
        .searchParse(args[1]!.$value)
        .let((it) => $List.wrap(it.mapList((e) => $SearchResponse.wrap(e))));
  }

  // ============================= MediaDetails ================================
  @override
  Request mediaDetailsRequest(SearchResponse searchResponse) {
    return $_invoke(
        'mediaDetailsRequest', [$SearchResponse.wrap(searchResponse)]);
  }

  @override
  MediaDetails mediaDetailsParse(Response response) {
    return $_invoke('mediaDetailsParse', [$Response.wrap(response)]);
  }

  $Value get _$mediaDetailsParse => $Function(__$mediaDetailsParse);

  $Value? __$mediaDetailsParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $MediaDetails.wrap(super.mediaDetailsParse(args[1]!.$value));
  }

  @override
  Request? mediaItemRequest(SearchResponse searchResponse, Response response) {
    return $_invoke('mediaItemRequest',
        [$SearchResponse.wrap(searchResponse), $Response.wrap(response)]);
  }

  @override
  MediaItem? mediaItemParse(SearchResponse searchResponse, Response response) {
    return $_invoke('mediaItemParse',
        [$SearchResponse.wrap(searchResponse), $Response.wrap(response)]);
  }

  $Value get _$mediaItemParse => $Function(__$mediaItemParse);

  $Value? __$mediaItemParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return super
        .mediaItemParse(args[1]!.$value, args[2]!.$value)
        .let((it) => it == null ? const $null() : $MediaItem.wrap(it));
  }

  // ============================= Links =======================================
  @override
  Request linksRequest(String url) {
    return $_invoke('linksRequest', [$String(url)]);
  }

  @override
  List<ExtractorLink> linksParse(Response response) {
    return ($_invoke('linksParse', [$Response.wrap(response)]) as List)
        .cast<ExtractorLink>();
  }

  $Value get _$linksParse => $Function(__$linksParse);

  $Value? __$linksParse(Runtime runtime, $Value? target, List<$Value?> args) {
    return super
        .linksParse(args[1]!.$value)
        .let((it) => $List.wrap(it.mapList((e) => $ExtractorLink.wrap(e))));
  }

  // ============================= Media =======================================

  @override
  Request? mediaRequest(ExtractorLink link) {
    return $_invoke('mediaRequest', [$ExtractorLink.wrap(link)]);
  }

  @override
  Media? mediaParse(Response response) {
    return $_invoke('mediaParse', [$Response.wrap(response)]);
  }

  $Value get _$mediaParse => $Function(__$mediaParse);

  $Value? __$mediaParse(Runtime runtime, $Value? target, List<$Value?> args) {
    return super
        .mediaParse(args[1]!.$value)
        .let((it) => it == null ? const $null() : wrapMedia(it));
  }

  // ============================= Inherited  ==================================

  @override
  bool get supportsHomePage => $_get('supportsHomePage');

  $Value? get _$supportsHomePage => $bool(super.supportsHomePage);

  @override
  String get lang => $_get('lang');

  $Value? get _$lang => $String(super.lang);

  @override
  String get name => $_get('name');

  @override
  Iterable<HomePageData> get homePageList => $_get('homePageList');

  @override
  FilterList getFilterList() {
    return $_invoke('getFilterList', []);
  }

  /// ============================ Inhertied And Overriden =====================================

  @override
  int get id => $_get('id');

  $Value? get _$id => $int(super.id);

  // ============================== HomePage ===================================
  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    return ($_invoke(
                'getHomePage', [$int(page), $HomePageRequest.wrap(request)])
            as Future)
        .then((value) => value as HomePage);
  }

  $Value? get _$getHomePage => $Function(__$getHomePage);

  $Value? __$getHomePage(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(
      super
          .getHomePage(
              args[1]!.$value as int, args[2]!.$value as HomePageRequest)
          .then((value) => $HomePage.wrap(value)),
    );
  }

  // =============================== Search ====================================

  @override
  Future<List<SearchResponse>> getSearch(
      int page, String query, FilterList filters) {
    return ($_invoke('getSearch',
            [$int(page), $String(query), $FilterList.wrap(filters)]) as Future)
        .then((value) => (value as List).cast<SearchResponse>());
  }

  $Value? get _$getSearch => $Function(__$getSearch);

  $Value? __$getSearch(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(
      super
          .getSearch(args[1]!.$value as int, args[2]!.$value as String,
              args[3]!.$value as FilterList)
          .then((value) =>
              $List.wrap(value.mapList((e) => $SearchResponse.wrap(e)))),
    );
  }

  // ============================= MediaDetails ================================

  @override
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse) {
    return ($_invoke('getMediaDetails', [$SearchResponse.wrap(searchResponse)])
            as Future)
        .then(
      (value) => value as MediaDetails,
    );
  }

  $Value? get _$getMediaDetails => $Function(__$getMediaDetails);

  $Value? __$getMediaDetails(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(
      super
          .getMediaDetails(args[1]!.$value as SearchResponse)
          .then((value) => $MediaDetails.wrap(value)),
    );
  }

  // ============================= Links =======================================

  @override
  Future<List<ExtractorLink>> getLinks(String url) {
    return ($_invoke('getLinks', [$String(url)]) as Future).then(
      (value) => value is $Value
          ? (value.$value as List).cast<ExtractorLink>()
          : value as List<ExtractorLink>,
    );
  }

  $Value? get _$getLinks => $Function(__$getLinks);

  $Value? __$getLinks(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(super.getLinks(args[1]!.$value as String).then(
          (value) => $List.wrap(
            value.mapList(
              (e) => $ExtractorLink.wrap(e),
            ),
          ),
        ));
  }

  // ============================= Media =======================================

  @override
  Future<Media?> getMedia(ExtractorLink link) {
    return ($_invoke('getMedia', [$ExtractorLink.wrap(link)]) as Future).then(
      (value) => value as Media?,
    );
  }

  $Value? get _$getMedia => $Function(__$getMedia);

  $Value? __$getMedia(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(
      super.getMedia(args[1]!.$value as ExtractorLink).then(
            (value) => value == null ? const $null() : wrapMedia(value),
          ),
    );
  }

  // ============================= Preferences ===================================

  @override
  SharedPreferences get preferences => $_get('preferences');

  $Value? get _$preferences => $SharedPreferences.wrap(super.preferences);

  @override
  String getPreferenceKey() => $_invoke('getPreferenceKey', []);

  $Value? get _$getPreferenceKey => $Function(__$getPreferenceKey);

  $Value? __$getPreferenceKey(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(super.getPreferenceKey());
  }

  @override
  List<Preference> setupPreferences() =>
      ($_invoke('setupPreferences', []) as List).cast<Preference>();

  $Value? get _$setupPreferences => $Function(__$setupPreferences);

  $Value? __$setupPreferences(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $UnsupportedError.wrap(UnsupportedError('Not Used'));
  }
}
