// ignore_for_file: non_constant_identifier_names

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/network.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/okhttp_client.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/models/source/online/http_source.dart';
import 'package:meiyou_extensions_lib/src/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [HttpSource]
class $HttpSource extends HttpSource
    with
        $SourceMixin,
        $CatalogueSourceMixin,
        $HttpSourceMixin,
        $Bridge<HttpSource> {
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
      'id': BridgeFieldDef(
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
      'getHomePage': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.homePage, []),
                ]),
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
                  'response',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.response, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getMediaDetails': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.mediaDetails, []),
                ]),
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
      'mediaDetailsRequest': BridgeMethodDef(
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
      'mediaDetailsParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.mediaDetails, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'response',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.response, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getMediaLinks': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(CoreTypes.list, [
                    BridgeTypeRef(ExtensionLibTypes.mediaLink, []),
                  ]),
                ]),
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
      'mediaLinksRequest': BridgeMethodDef(
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
      'medialinksParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(ExtensionLibTypes.mediaLink, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'response',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.response, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getMedia': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.media, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'link',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.mediaLink, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'mediaRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'link',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.mediaLink, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'mediaParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.media, []),
                ]),
                nullable: false),
            params: [
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
    return $bridgeGetFromHttpSource(identifier);
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
  OkHttpClient get $superClient => super.client;

  @override
  Future<HomePage> $superGetHomePage(int page, HomePageRequest request) =>
      super.getHomePage(page, request);

  @override
  Future<Media?> $superGetMedia(MediaLink link) => super.getMedia(link);

  @override
  Future<MediaDetails> $superGetMediaDetails(String url) =>
      super.getMediaDetails(url);

  @override
  Future<List<MediaLink>> $superGetMediaLinks(String url) =>
      super.getMediaLinks(url);

  @override
  Future<SearchPage> $superGetSearchPage(
          int page, String query, FilterList filters) =>
      super.getSearchPage(page, query, filters);

  @override
  Headers get $superHeaders => super.headers;

  @override
  HeadersBuilder $superHeadersBuilder() => super.headersBuilder();

  @override
  double get $superHomePageRequestTimeout => super.homePageRequestTimeout;

  @override
  int get $superId => super.id;

  @override
  String get $superLang => super.lang;

  @override
  Request $superMediaDetailsRequest(String url) =>
      super.mediaDetailsRequest(url);

  @override
  Future<Media?> $superMediaParse(Response response) =>
      super.mediaParse(response);

  @override
  Request $superMediaRequest(MediaLink link) => super.mediaRequest(link);

  @override
  NetworkHelper get $superNetwork => super.network;

  @override
  SharedPreferences get $superPreferences => super.preferences;

  @override
  List<PreferenceData> $superSetupPreferences() => super.setupPreferences();

  @override
  bool get $superSupportsHomePage => super.supportsHomePage;

  @override
  int get $superVersionId => super.versionId;
}

abstract mixin class $HttpSourceMixin {
  dynamic $_get(String prop);

  dynamic $_invoke(String method, List<$Value?> args);

  $Value? $bridgeGetFromHttpSource(String identifier) {
    switch (identifier) {
      case 'network':
        return _$network;
      case 'versionId':
        return _$versionId;
      case 'id':
        return _$id;
      case 'headers':
        return _$headers;
      case 'client':
        return _$client;
      case 'headersBuilder':
        return __$headersBuilder;
      case 'getHomePage':
        return __$getHomePage;
      case 'getSearchPage':
        return __$getSearchPage;
      case 'getMediaDetails':
        return __$getMediaDetails;
      case 'mediaDetailsRequest':
        return __$mediaDetailsRequest;
      case 'getMediaLinks':
        return __$getMediaLinks;
      case 'getMedia':
        return __$getMedia;
      case 'mediaRequest':
        return __$mediaRequest;
      case 'mediaParse':
        return __$mediaParse;
      default:
        return $bridgeGetFromCatalogueSource(identifier);
    }
  }

  $Value? $bridgeGetFromCatalogueSource(String identifier);

  NetworkHelper get network => $_get('network') as NetworkHelper;

  NetworkHelper get $superNetwork;

  $Value get _$network => $NetworkHelper.wrap($superNetwork);

  String get baseUrl => $_get('baseUrl') as String;

  int get versionId => $_get('versionId') as int;

  int get $superVersionId;

  $Value get _$versionId => $int($superVersionId);

  int get id => $_get('id') as int;

  int get $superId;

  $Value get _$id => $int($superId);

  Headers get headers => $_get('headers') as Headers;

  Headers get $superHeaders;

  $Value get _$headers => $Headers.wrap($superHeaders);

  HeadersBuilder headersBuilder() {
    return $_invoke('headersBuilder', []) as HeadersBuilder;
  }

  $Value get __$headersBuilder => $Function(_$headersBuilder);

  HeadersBuilder $superHeadersBuilder();

  $Value? _$headersBuilder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = $superHeadersBuilder();
    return $HeadersBuilder.wrap($result);
  }

  $Value get __$getHomePage => $Function(_$getHomePage);

  Future<HomePage> $superGetHomePage(int page, HomePageRequest request);

  $Value? _$getHomePage(Runtime runtime, $Value? target, List<$Value?> args) {
    final page = args[1]?.$value as int;
    final request = args[2]?.$reified as HomePageRequest;
    final $result = $superGetHomePage(
      page,
      request,
    );
    return $Future.wrap($result.then((value) => $HomePage.wrap(value)))
        as $Value?;
  }

  Request homePageRequest(int page, HomePageRequest request) {
    return $_invoke('homePageRequest', [
      $int(page),
      $HomePageRequest.wrap(request),
    ]) as Request;
  }

  HomePage homePageParse(HomePageRequest request, Response response) {
    return $_invoke('homePageParse', [
      $HomePageRequest.wrap(request),
      $Response.wrap(response),
    ]) as HomePage;
  }

  Future<SearchPage> getSearchPage(int page, String query, FilterList filters) {
    return ($_invoke('getSearchPage', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters),
    ]) as Future)
        .then((value) => value as SearchPage);
  }

  $Value get __$getSearchPage => $Function(_$getSearchPage);

  Future<SearchPage> $superGetSearchPage(
      int page, String query, FilterList filters);
  $Value? _$getSearchPage(Runtime runtime, $Value? target, List<$Value?> args) {
    final page = args[1]?.$value as int;
    final query = args[2]?.$value as String;
    final filters = args[3]?.$reified as FilterList;
    final $result = $superGetSearchPage(
      page,
      query,
      filters,
    );
    return $Future.wrap($result.then((value) => $SearchPage.wrap(value)))
        as $Value?;
  }

  Request searchPageRequest(int page, String query, FilterList filters) {
    return $_invoke('searchPageRequest', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters),
    ]) as Request;
  }

  SearchPage searchPageParse(Response response) {
    return $_invoke('searchPageParse', [
      $Response.wrap(response),
    ]) as SearchPage;
  }

  $Value get __$getMediaDetails => $Function(_$getMediaDetails);

  Future<MediaDetails> $superGetMediaDetails(String url);

  $Value? _$getMediaDetails(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[1]?.$value as String;
    final $result = $superGetMediaDetails(
      url,
    );
    return $Future.wrap($result.then((value) => $MediaDetails.wrap(value)))
        as $Value?;
  }

  Request mediaDetailsRequest(String url) {
    return $_invoke('mediaDetailsRequest', [
      $String(url),
    ]) as Request;
  }

  $Value get __$mediaDetailsRequest => $Function(_$mediaDetailsRequest);

  Request $superMediaDetailsRequest(String url);
  $Value? _$mediaDetailsRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[1]?.$value as String;
    final $result = $superMediaDetailsRequest(
      url,
    );
    return $Request.wrap($result);
  }

  Future<MediaDetails> mediaDetailsParse(Response response) {
    return ($_invoke('mediaDetailsParse', [
      $Response.wrap(response),
    ]) as Future)
        .then((value) => value as MediaDetails);
  }

  $Value get __$getMediaLinks => $Function(_$getMediaLinks);

  Future<List<MediaLink>> $superGetMediaLinks(String url);

  $Value? _$getMediaLinks(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[1]?.$value as String;
    final $result = $superGetMediaLinks(
      url,
    );
    return $Future.wrap(
        $result.then((value) => $List.wrap(List.generate(value.length, (index) {
              return $MediaLink.wrap(value[index]);
            })))) as $Value?;
  }

  Request mediaLinksRequest(String url) {
    return $_invoke('mediaLinksRequest', [
      $String(url),
    ]) as Request;
  }

  List<MediaLink> medialinksParse(Response response) {
    return ($_invoke('medialinksParse', [
      $Response.wrap(response),
    ]) as List)
        .cast<MediaLink>();
  }

  $Value get __$getMedia => $Function(_$getMedia);

  Future<Media?> $superGetMedia(MediaLink link);

  $Value? _$getMedia(Runtime runtime, $Value? target, List<$Value?> args) {
    final link = args[1]?.$reified as MediaLink;
    final $result = $superGetMedia(
      link,
    );
    return $Future.wrap($result.then(
            (value) => value == null ? $null() : $Media.wrapByType(value)))
        as $Value?;
  }

  Request mediaRequest(MediaLink link) {
    return $_invoke('mediaRequest', [
      $MediaLink.wrap(link),
    ]) as Request;
  }

  $Value get __$mediaRequest => $Function(_$mediaRequest);

  Request $superMediaRequest(MediaLink link);
  $Value? _$mediaRequest(Runtime runtime, $Value? target, List<$Value?> args) {
    final link = args[1]?.$reified as MediaLink;
    final $result = $superMediaRequest(
      link,
    );
    return $Request.wrap($result);
  }

  $Value get __$mediaParse => $Function(_$mediaParse);

  Future<Media?> $superMediaParse(Response response);

  $Value? _$mediaParse(Runtime runtime, $Value? target, List<$Value?> args) {
    final response = args[1]?.$reified as Response;
    final $result = $superMediaParse(
      response,
    );
    return $Future.wrap($result.then(
        (value) => value == null ? $null() : $Media.wrap(value))) as $Value?;
  }

  OkHttpClient get client => $_invoke('client', []) as OkHttpClient;

  OkHttpClient get $superClient;

  $Value get _$client => $OkHttpClient.wrap($superClient);
}
