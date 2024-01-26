import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/src/eval/runtime/runtime.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dartx/dartx.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/okhttp_client.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/online/http_source.dart';

import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

class $HttpSource extends HttpSource with $Bridge<HttpSource> {
  $HttpSource(super.network);

  static const $type = BridgeTypeRef(ExtensionLibTypes.httpSource);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'HttpSource.', $new.call,
        isBridge: true);
  }

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
      'searchRequest': BridgeMethodDef(
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
      'searchParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(ExtensionLibTypes.searchResponse, []),
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
      'mediaDetailsRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'searchResponse',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.searchResponse, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'mediaDetailsParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetails, []),
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
      'mediaItemRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'searchResponse',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.searchResponse, []),
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
      'mediaItemParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaItem, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'searchResponse',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.searchResponse, []),
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
      'linksRequest': BridgeMethodDef(
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
      'linksParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(ExtensionLibTypes.extractorLink, []),
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
      'mediaRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'link',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.extractorLink, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'mediaParse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.media, []),
                nullable: true),
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

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $HttpSource(args[0]?.$value);
  }

  $Value? $headersBuilder(Runtime runtime, $Value? target, List<$Value?> args) {
    return $HeadersBuilder.wrap(super.headersBuilder());
  }

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'id':
        return $int(super.id);
      case 'versionId':
        return $int(super.versionId);
      case 'network':
        return $NetworkHelper.wrap(super.network);
      case 'lang':
        return $String(super.lang);
      case 'supportsHomePage':
        return $bool(super.supportsHomePage);
      case 'headers':
        return $Headers.wrap(super.headers);
      case 'headersBuilder':
        return $Function($headersBuilder);
      case 'client':
        return $OkHttpClient.wrap(super.client);
      case 'getMedia':
        return $Function($getMedia);
      case 'getMediaDetails':
        return $Function($getMediaDetails);
      case 'getHomePage':
        return $Function($getHomePage);
      case 'getLinks':
        return $Function($getLinks);
      case 'getSearch':
        return $Function($getSearch);
      default:
        throw UnimplementedError('Cannot get "$identifier" from "$this"');
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    // TODO: implement $bridgeSet
  }

  $Value? $getHomePage(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(
      super
          .getHomePage(
              args[0]!.$value as int, args[1]!.$value as HomePageRequest)
          .then((value) => $HomePage.wrap(value)),
    );
  }

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    return ($_invoke(
                'getHomePage', [$int(page), $HomePageRequest.wrap(request)])
            as Future)
        .then(
      (value) => value as HomePage,
    );
  }

  $Value? $getLinks(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(super.getLinks(args[0]!.$value as String).then(
          (value) => $List.wrap(
            value.mapList(
              (e) => $ExtractorLink.wrap(e),
            ),
          ),
        ));
  }

  @override
  Future<List<ExtractorLink>> getLinks(String url) {
    return ($_invoke('getLinks', [$String(url)]) as Future).then(
      (value) => value is $Value
          ? (value.$value as List).cast<ExtractorLink>()
          : value as List<ExtractorLink>,
    );
  }

  $Value? $getMedia(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(
      super.getMedia(args[0]!.$value as ExtractorLink).then(
            (value) => value == null ? const $null() : $Media.wrap(value),
          ),
    );
  }

  @override
  Future<Media?> getMedia(ExtractorLink link) {
    return ($_invoke('getMedia', [$ExtractorLink.wrap(link)]) as Future).then(
      (value) => value as $Media?,
    );
  }

  $Value? $getMediaDetails(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(
      super
          .getMediaDetails(args[0]!.$value as SearchResponse)
          .then((value) => $MediaDetails.wrap(value)),
    );
  }

  @override
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse) {
    return ($_invoke('getMediaDetails', [$SearchResponse.wrap(searchResponse)])
            as Future)
        .then(
      (value) => value as MediaDetails,
    );
  }

  @override
  Iterable<HomePageData> get homePageList => $_get('homePageList');

  @override
  int get id => $_get('id');

  @override
  String get name => $_get('name');

  @override
  bool get supportsHomePage => $_get('supportsHomePage');

  @override
  String get lang => $_get('lang');

  @override
  int get versionId => $_get('versionId');

  @override
  FilterList getFilterList() => $_invoke('getFilterList', []);

  $Value? $getSearch(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Future.wrap(
      super
          .getSearch(args[0]!.$value as int, args[1]!.$value as String,
              args[2]!.$value as FilterList)
          .then(
            (value) => $List.wrap(
              value.mapList(
                (e) => $SearchResponse.wrap(e),
              ),
            ),
          ),
    );
  }

  @override
  Future<List<SearchResponse>> getSearch(
      int page, String query, FilterList filters) {
    return $_invoke('getSearch', [
      $int(page),
      $String(query),
      $FilterList.wrap(filters)
    ]).then((value) => (value as List).cast<SearchResponse>());
  }

  @override
  HomePage homePageParse(int page, HomePageRequest request, Response response) {
    return $_invoke('homePageParse',
        [$int(page), $HomePageRequest.wrap(request), $Response.wrap(response)]);
  }

  @override
  Request homePageRequest(int page, HomePageRequest request) {
    return $_invoke(
        'homePageRequest', [$int(page), $HomePageRequest.wrap(request)]);
  }

  @override
  List<ExtractorLink> linksParse(Response response) {
    return $_invoke('linksParse', [$Response.wrap(response)]);
  }

  @override
  Request linksRequest(String url) {
    return $_invoke('linksRequest', [$String(url)]);
  }

  @override
  MediaDetails mediaDetailsParse(Response response) {
    return $_invoke('mediaDetailsParse', [$Response.wrap(response)]);
  }

  @override
  Request mediaDetailsRequest(SearchResponse searchResponse) {
    return $_invoke(
        'mediaDetailsRequest', [$SearchResponse.wrap(searchResponse)]);
  }

  @override
  Media? mediaParse(Response response) {
    return $_invoke('mediaParse', [$Response.wrap(response)]);
  }

  @override
  Request? mediaRequest(ExtractorLink link) {
    return $_invoke('mediaRequest', [$ExtractorLink.wrap(link)]);
  }

  @override
  List<SearchResponse> searchParse(Response response) {
    return $_invoke('searchParse', [$Response.wrap(response)]);
  }

  @override
  Request searchRequest(int page, String query, FilterList filters) {
    return $_invoke('searchRequest',
        [$int(page), $String(query), $FilterList.wrap(filters)]);
  }

  @override
  String get baseUrl => $_get('baseUrl');

  @override
  MediaItem? mediaItemParse(SearchResponse searchResponse, Response response) {
    return $_invoke('mediaItemParse',
        [$SearchResponse.wrap(searchResponse), $Response.wrap(response)]);
  }

  @override
  Request? mediaItemRequest(SearchResponse searchResponse, Response response) {
    return $_invoke('mediaItemRequest',
        [$SearchResponse.wrap(searchResponse), $Response.wrap(response)]);
  }
}
