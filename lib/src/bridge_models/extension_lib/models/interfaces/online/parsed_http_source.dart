import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/src/eval/runtime/runtime.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dartx/dartx.dart';
import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/document.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/element.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/okhttp_client.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/online/parsed_http_source.dart';

import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';
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
    BridgeClassType($type,
        $extends: BridgeTypeRef(ExtensionLibTypes.httpSource),
        isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type), params: [
          BridgeParameter(
              'network',
              BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.networkHelper),
              ),
              false),
        ]),
      )
    },
    methods: {
      'homePageListDataSelector': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
          params: [
            BridgeParameter(
              'page',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int),
              ),
              false,
            ),
            BridgeParameter(
              'request',
              BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.homePageRequest),
              ),
              false,
            ),
          ],
        ),
      ),
      'homePageHasNextPageSelector': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
          params: [
            BridgeParameter('page',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)), false),
            BridgeParameter(
                'request',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.homePageRequest)),
                false),
          ],
        ),
      ),
      'homePageListDataFromElement': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
              BridgeTypeRef(ExtensionLibTypes.homePageData)),
          params: [
            BridgeParameter('page',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)), false),
            BridgeParameter(
                'request',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.homePageRequest)),
                false),
            BridgeParameter('element',
                BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element)), false),
          ],
        ),
      ),
      'mediaDetailsFromDocument': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
              BridgeTypeRef(ExtensionLibTypes.mediaDetails)),
          params: [
            BridgeParameter('document',
                BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document)), false),
          ],
        ),
      ),
      'mediaItemFromElement': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
              BridgeTypeRef(ExtensionLibTypes.mediaItem),
              nullable: true),
          params: [
            BridgeParameter('element',
                BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element)), false),
          ],
        ),
      ),
      'linksListSelector': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
          params: [],
        ),
      ),
      'linkFromElement': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(ExtensionLibTypes.extractorLink),
          ),
          params: [
            BridgeParameter(
                'element',
                BridgeTypeAnnotation(
                  BridgeTypeRef(HTMLTypes.element),
                ),
                false)
          ],
        ),
      ),
      'mediaFromDocument': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.media),
              nullable: true),
          params: [
            BridgeParameter('document',
                BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document)), false)
          ],
        ),
      ),
    },
    bridge: true,
  );

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ParsedHttpSource(args[0]?.$value);
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
      case 'homePageParse':
        return $Function($homePageParse);
      case 'linksParse':
        return $Function($linksParse);
      case 'mediaDetailsParse':
        return $Function($mediaDetailsParse);
      case 'mediaParse':
        return $Function($mediaParse);
      case 'searchParse':
        return $Function($searchParse);
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

  $Value? $homePageParse(Runtime runtime, $Value? target, List<$Value?> args) {
    final homePage = super.homePageParse(args[0]!.$value as int,
        args[1]!.$value as HomePageRequest, args[2]!.$value as Response);
    return $HomePage.wrap(HomePage(
      data: $HomePageList.wrap(HomePageList(
          name: homePage.data.name,
          data: homePage.data.data.mapList((e) => $SearchResponse.wrap(e)))),
      page: homePage.page,
      hasNextPage: homePage.hasNextPage,
    ));
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

  $Value? $linksParse(Runtime runtime, $Value? target, List<$Value?> args) {
    final parsed = super.linksParse(args[0]!.$value as Response);
    return $List.wrap(parsed.mapList($ExtractorLink.wrap));
  }

  @override
  List<ExtractorLink> linksParse(Response response) {
    return $_invoke('linksParse', [$Response.wrap(response)]);
  }

  @override
  Request linksRequest(String url) {
    return $_invoke('linksRequest', [$String(url)]);
  }

  $Value? $mediaDetailsParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final parsed = super.mediaDetailsParse(args[0]!.$value as Response);
    return $MediaDetails.wrap(parsed);
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

  $Value? $mediaParse(Runtime runtime, $Value? target, List<$Value?> args) {
    final parsed = super.mediaParse(args[0]!.$value as Response);
    return parsed == null ? const $null() : $Media.wrap(parsed);
  }

  @override
  Media? mediaParse(Response response) {
    return $_invoke('mediaParse', [$Response.wrap(response)]);
  }

  @override
  Request? mediaRequest(ExtractorLink link) {
    return $_invoke('mediaRequest', [$ExtractorLink.wrap(link)]);
  }

  $Value? $searchParse(Runtime runtime, $Value? target, List<$Value?> args) {
    final parsed = super.searchParse(args[0]!.$value as Response);
    return $List.wrap(parsed.mapList((e) => $SearchResponse.wrap(e)));
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
  String? homePageHasNextPageSelector(int page, HomePageRequest request) =>
      $_invoke('homePageHasNextPageSelector',
          [$int(page), $HomePageRequest.wrap(request)]);

  @override
  SearchResponse homePageListDataFromElement(
          int page, HomePageRequest request, Element element) =>
      $_invoke('homePageListDataFromElement', [$Element.wrap(element)]);

  @override
  String homePageListDataSelector(int page, HomePageRequest request) =>
      $_invoke('homePageListDataSelector',
          [$int(page), $HomePageRequest.wrap(request)]);

  @override
  ExtractorLink linkFromElement(Element element) =>
      $_invoke('linkFromElement', [$Element.wrap(element)]) as ExtractorLink;

  @override
  String linksListSelector() => $_invoke('linksListSelector', []);

  @override
  MediaDetails mediaDetailsFromDocument(Document document) =>
      $_invoke('mediaDetailsFromDocument', [$Document.wrap(document)])
          as MediaDetails;
  @override
  Media? mediaFromDocument(Document document) =>
      $_invoke('mediaFromDocument', [$Document.wrap(document)]) as Media?;

  @override
  MediaItem? mediaItemFromElement(Element element) =>
      $_invoke('mediaItemFromElement', [$Element.wrap(element)]) as MediaItem?;
  @override
  String searchListSelector() => $_invoke('searchListSelector', []);

  @override
  SearchResponse searchResponseFromElement(Element element) =>
      $_invoke('searchResponseFromElement', [$Element.wrap(element)]);

  @override
  String get baseUrl => $_get('baseUrl');
}
