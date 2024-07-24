import 'dart:async';

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_asset.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/models/media_asset.dart';

import 'package:meiyou_extensions_lib/src/models/source/online/http_source.dart';

import 'package:meiyou_extensions_lib/network.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_content.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/okhttp_client.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_content.dart';
import 'package:meiyou_extensions_lib/src/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/models/search_page.dart';
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
      'getHomePageRequestList': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(ExtensionLibTypes.homePageRequest, []),
                ]),
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
                BridgeTypeRef(AsyncTypes.futureOr, [
                  BridgeTypeRef(ExtensionLibTypes.homePage, []),
                ]),
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
      'mediaDetailsRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'media',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.iMedia, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'mediaDetailsParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(AsyncTypes.futureOr, [
                  BridgeTypeRef(ExtensionLibTypes.iMedia, []),
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
      'mediaContentListRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'media',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.iMedia, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'mediaContentListParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(AsyncTypes.futureOr, [
                  BridgeTypeRef(CoreTypes.list, [
                    BridgeTypeRef(ExtensionLibTypes.iMediaContent, []),
                  ]),
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
      'mediaLinkListRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'content',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.iMediaContent, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'mediaLinkListParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(AsyncTypes.futureOr, [
                  BridgeTypeRef(CoreTypes.list, [
                    BridgeTypeRef(ExtensionLibTypes.mediaLink, []),
                  ]),
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
      'mediaAssetRequest': BridgeMethodDef(
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
      'mediaAssetParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(AsyncTypes.futureOr, [
                  BridgeTypeRef(ExtensionLibTypes.mediaAsset, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'link',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.mediaLink, []),
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
                BridgeTypeRef(AsyncTypes.futureOr, [
                  BridgeTypeRef(ExtensionLibTypes.searchPage, []),
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
    return $bridgeGetHttpSource(identifier);
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    return $bridgeSetHttpSource(identifier, value);
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

  void $_set(String prop, $Value value);

  $Value? $bridgeGetHttpSource(String identifier) {
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
      case 'homePageRequest':
        return __$homePageRequest;
      case 'getMediaDetails':
        return __$getMediaDetails;
      case 'mediaDetailsRequest':
        return __$mediaDetailsRequest;
      case 'getMediaContentList':
        return __$getMediaContentList;
      case 'mediaContentListRequest':
        return __$mediaContentListRequest;
      case 'getMediaLinkList':
        return __$getMediaLinkList;
      case 'mediaLinkListRequest':
        return __$mediaLinkListRequest;
      case 'getMediaAsset':
        return __$getMediaAsset;
      case 'mediaAssetRequest':
        return __$mediaAssetRequest;
      case 'getSearchPage':
        return __$getSearchPage;
      default:
        return $bridgeGetCatalogueSource(identifier);
    }
  }

  void $bridgeSetHttpSource(String identifier, $Value value) {
    return $bridgeSetCatalogueSource(identifier, value);
  }

  $Value? $bridgeGetCatalogueSource(String identifier);

  void $bridgeSetCatalogueSource(String identifier, $Value value);

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

  @override
  List<HomePageRequest> getHomePageRequestList() {
    return ($_invoke('getHomePageRequestList', []) as List)
        .cast<HomePageRequest>();
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
    if (args[0]?.$value is HttpSource) {
      args = args.sublist(1);
    }
    final page = args[0]?.$value as int;
    final request = args[1]?.$reified as HomePageRequest;
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

  $Value get __$homePageRequest => $Function(_$homePageRequest);
  $Value? _$homePageRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is HttpSource) {
      args = args.sublist(1);
    }
    final page = args[0]?.$value as int;
    final request = args[1]?.$reified as HomePageRequest;
    final $result = super.homePageRequest(
      page,
      request,
    );
    return $Request.wrap($result);
  }

  @override
  FutureOr<HomePage> homePageParse(HomePageRequest request, Response response) {
    final result = $_invoke('homePageParse', [
      $HomePageRequest.wrap(request),
      $Response.wrap(response),
    ]);
    final FutureOr<HomePage> casted;
    if (result is Future) {
      casted = result.then((value) => value as HomePage);
    } else {
      casted = result as HomePage;
    }
    return casted;
  }

  @override
  Future<IMedia> getMediaDetails(IMedia media) {
    return ($_invoke('getMediaDetails', [
      $IMedia.wrap(media),
    ]) as Future)
        .then((value) => value as IMedia);
  }

  $Value get __$getMediaDetails => $Function(_$getMediaDetails);
  $Value? _$getMediaDetails(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is HttpSource) {
      args = args.sublist(1);
    }
    final media = args[0]?.$reified as IMedia;
    final $result = super.getMediaDetails(
      media,
    );
    return $Future.wrap($result.then((value) => $IMedia.wrap(value)))
        as $Value?;
  }

  @override
  Request mediaDetailsRequest(IMedia media) {
    return $_invoke('mediaDetailsRequest', [
      $IMedia.wrap(media),
    ]) as Request;
  }

  $Value get __$mediaDetailsRequest => $Function(_$mediaDetailsRequest);
  $Value? _$mediaDetailsRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is HttpSource) {
      args = args.sublist(1);
    }
    final media = args[0]?.$reified as IMedia;
    final $result = super.mediaDetailsRequest(
      media,
    );
    return $Request.wrap($result);
  }

  @override
  FutureOr<IMedia> mediaDetailsParse(Response response) {
    final result = $_invoke('mediaDetailsParse', [
      $Response.wrap(response),
    ]);
    final FutureOr<IMedia> casted;
    if (result is Future) {
      casted = result.then((value) => value as IMedia);
    } else {
      casted = result as IMedia;
    }
    return casted;
  }

  @override
  Future<List<IMediaContent>> getMediaContentList(IMedia media) {
    return ($_invoke('getMediaContentList', [
      $IMedia.wrap(media),
    ]) as Future)
        .then((value) => (value as List).cast<IMediaContent>());
  }

  $Value get __$getMediaContentList => $Function(_$getMediaContentList);
  $Value? _$getMediaContentList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is HttpSource) {
      args = args.sublist(1);
    }
    final media = args[0]?.$reified as IMedia;
    final $result = super.getMediaContentList(
      media,
    );
    return $Future.wrap(
        $result.then((value) => $List.wrap(List.generate(value.length, (index) {
              return $IMediaContent.wrap(value[index]);
            })))) as $Value?;
  }

  @override
  Request mediaContentListRequest(IMedia media) {
    return $_invoke('mediaContentListRequest', [
      $IMedia.wrap(media),
    ]) as Request;
  }

  $Value get __$mediaContentListRequest => $Function(_$mediaContentListRequest);
  $Value? _$mediaContentListRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is HttpSource) {
      args = args.sublist(1);
    }
    final media = args[0]?.$reified as IMedia;
    final $result = super.mediaContentListRequest(
      media,
    );
    return $Request.wrap($result);
  }

  @override
  FutureOr<List<IMediaContent>> mediaContentListParse(Response response) {
    final result = $_invoke('mediaContentListParse', [
      $Response.wrap(response),
    ]);
    final FutureOr<List<IMediaContent>> casted;
    if (result is Future) {
      casted = result.then((value) => (value as List).cast<IMediaContent>());
    } else {
      casted = (result as List).cast<IMediaContent>();
    }
    return casted;
  }

  @override
  Future<List<MediaLink>> getMediaLinkList(IMediaContent content) {
    return ($_invoke('getMediaLinkList', [
      $IMediaContent.wrap(content),
    ]) as Future)
        .then((value) => (value as List).cast<MediaLink>());
  }

  $Value get __$getMediaLinkList => $Function(_$getMediaLinkList);
  $Value? _$getMediaLinkList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is HttpSource) {
      args = args.sublist(1);
    }
    final content = args[0]?.$reified as IMediaContent;
    final $result = super.getMediaLinkList(
      content,
    );
    return $Future.wrap(
        $result.then((value) => $List.wrap(List.generate(value.length, (index) {
              return $MediaLink.wrap(value[index]);
            })))) as $Value?;
  }

  @override
  Request mediaLinkListRequest(IMediaContent content) {
    return $_invoke('mediaLinkListRequest', [
      $IMediaContent.wrap(content),
    ]) as Request;
  }

  $Value get __$mediaLinkListRequest => $Function(_$mediaLinkListRequest);
  $Value? _$mediaLinkListRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is HttpSource) {
      args = args.sublist(1);
    }
    final content = args[0]?.$reified as IMediaContent;
    final $result = super.mediaLinkListRequest(
      content,
    );
    return $Request.wrap($result);
  }

  @override
  FutureOr<List<MediaLink>> mediaLinkListParse(Response response) {
    final result = $_invoke('mediaLinkListParse', [
      $Response.wrap(response),
    ]);
    final FutureOr<List<MediaLink>> casted;
    if (result is Future) {
      casted = result.then((value) => (value as List).cast<MediaLink>());
    } else {
      casted = (result as List).cast<MediaLink>();
    }
    return casted;
  }

  @override
  Future<MediaAsset> getMediaAsset(MediaLink link) {
    return ($_invoke('getMediaAsset', [
      $MediaLink.wrap(link),
    ]) as Future)
        .then((value) => value as MediaAsset);
  }

  $Value get __$getMediaAsset => $Function(_$getMediaAsset);
  $Value? _$getMediaAsset(Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is HttpSource) {
      args = args.sublist(1);
    }
    final link = args[0]?.$reified as MediaLink;
    final $result = super.getMediaAsset(
      link,
    );
    return $Future.wrap($result.then((value) => $MediaAsset.wrapByType(value)))
        as $Value?;
  }

  @override
  Request mediaAssetRequest(MediaLink link) {
    return $_invoke('mediaAssetRequest', [
      $MediaLink.wrap(link),
    ]) as Request;
  }

  $Value get __$mediaAssetRequest => $Function(_$mediaAssetRequest);
  $Value? _$mediaAssetRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is HttpSource) {
      args = args.sublist(1);
    }
    final link = args[0]?.$reified as MediaLink;
    final $result = super.mediaAssetRequest(
      link,
    );
    return $Request.wrap($result);
  }

  @override
  FutureOr<MediaAsset> mediaAssetParse(MediaLink link, Response response) {
    final result = $_invoke('mediaAssetParse', [
      $MediaLink.wrap(link),
      $Response.wrap(response),
    ]);
    final FutureOr<MediaAsset> casted;
    if (result is Future) {
      casted = result.then((value) => value as MediaAsset);
    } else {
      casted = result as MediaAsset;
    }
    return casted;
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
    if (args[0]?.$value is HttpSource) {
      args = args.sublist(1);
    }
    final page = args[0]?.$value as int;
    final query = args[1]?.$value as String;
    final filters = args[2]?.$reified as FilterList;
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
  FutureOr<SearchPage> searchPageParse(Response response) {
    final result = $_invoke('searchPageParse', [
      $Response.wrap(response),
    ]);
    final FutureOr<SearchPage> casted;
    if (result is Future) {
      casted = result.then((value) => value as SearchPage);
    } else {
      casted = result as SearchPage;
    }
    return casted;
  }

  @override
  OkHttpClient get client => $_get('client') as OkHttpClient;
  $Value get _$client => $OkHttpClient.wrap(super.client);
}
