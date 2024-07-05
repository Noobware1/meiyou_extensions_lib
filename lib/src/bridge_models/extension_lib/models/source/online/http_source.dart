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
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/models/source/online/http_source.dart';
import 'package:meiyou_extensions_lib/src/network/network_helper.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [HttpSource]
class $HttpSource extends HttpSource
    with
        $HttpSourceMixin,
        $CatalogueSourceMixin,
        $SourceMixin,
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
}

mixin $HttpSourceMixin on HttpSource {
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
      case 'mediaLinksRequest':
        return __$mediaLinksRequest;
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

  @override
  NetworkHelper get network => $_get('network') as NetworkHelper;

  $Value get _$network => $NetworkHelper.wrap(super.network);

  @override
  String get baseUrl => $_get('baseUrl') as String;

  @override
  int get versionId => $_get('versionId') as int;

  $Value get _$versionId => $int(super.versionId);

  @override
  int get id => $_get('id') as int;

  $Value get _$id => $int(super.id);

  @override
  Headers get headers => $_get('headers') as Headers;

  $Value get _$headers => $Headers.wrap(super.headers);

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
  HomePage homePageParse(HomePageRequest request, Response response) {
    return $_invoke('homePageParse', [
      $HomePageRequest.wrap(request),
      $Response.wrap(response),
    ]) as HomePage;
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
  SearchPage searchPageParse(Response response) {
    return $_invoke('searchPageParse', [
      $Response.wrap(response),
    ]) as SearchPage;
  }

  $Value get __$getMediaDetails => $Function(_$getMediaDetails);

  $Value? _$getMediaDetails(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[1]?.$value as String;
    final $result = super.getMediaDetails(
      url,
    );
    return $Future.wrap($result.then((value) => $MediaDetails.wrap(value)))
        as $Value?;
  }

  @override
  Request mediaDetailsRequest(String url) {
    return $_invoke('mediaDetailsRequest', [
      $String(url),
    ]) as Request;
  }

  $Value get __$mediaDetailsRequest => $Function(_$mediaDetailsRequest);

  $Value? _$mediaDetailsRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[1]?.$value as String;
    final $result = super.mediaDetailsRequest(
      url,
    );
    return $Request.wrap($result);
  }

  @override
  Future<MediaDetails> mediaDetailsParse(Response response) {
    return ($_invoke('mediaDetailsParse', [
      $Response.wrap(response),
    ]) as Future)
        .then((value) => value as MediaDetails);
  }

  $Value get __$getMediaLinks => $Function(_$getMediaLinks);

  $Value? _$getMediaLinks(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[1]?.$value as String;
    final $result = super.getMediaLinks(
      url,
    );
    return $Future.wrap(
        $result.then((value) => $List.wrap(List.generate(value.length, (index) {
              return $MediaLink.wrap(value[index]);
            })))) as $Value?;
  }

  @override
  Request mediaLinksRequest(String url) {
    return $_invoke('mediaLinksRequest', [
      $String(url),
    ]) as Request;
  }

  $Value get __$mediaLinksRequest => $Function(_$mediaLinksRequest);

  $Value? _$mediaLinksRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[1]?.$value as String;
    final $result = super.mediaDetailsRequest(
      url,
    );
    return $Request.wrap($result);
  }

  @override
  List<MediaLink> medialinksParse(Response response) {
    return ($_invoke('medialinksParse', [
      $Response.wrap(response),
    ]) as List)
        .cast<MediaLink>();
  }

  $Value get __$getMedia => $Function(_$getMedia);

  $Value? _$getMedia(Runtime runtime, $Value? target, List<$Value?> args) {
    final link = args[1]?.$reified as MediaLink;
    final $result = super.getMedia(
      link,
    );
    return $Future.wrap($result.then(
            (value) => value == null ? $null() : $Media.wrapByType(value)))
        as $Value?;
  }

  @override
  Request mediaRequest(MediaLink link) {
    return $_invoke('mediaRequest', [
      $MediaLink.wrap(link),
    ]) as Request;
  }

  $Value get __$mediaRequest => $Function(_$mediaRequest);

  $Value? _$mediaRequest(Runtime runtime, $Value? target, List<$Value?> args) {
    final link = args[1]?.$reified as MediaLink;
    final $result = super.mediaRequest(
      link,
    );
    return $Request.wrap($result);
  }

  $Value get __$mediaParse => $Function(_$mediaParse);

  $Value? _$mediaParse(Runtime runtime, $Value? target, List<$Value?> args) {
    final response = args[1]?.$reified as Response;
    final $result = super.mediaParse(
      response,
    );
    return $Future.wrap($result.then(
        (value) => value == null ? $null() : $Media.wrap(value))) as $Value?;
  }

  @override
  OkHttpClient get client => $_invoke('client', []) as OkHttpClient;

  $Value get _$client => $OkHttpClient.wrap(super.client);
}
