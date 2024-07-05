// ignore_for_file: non_constant_identifier_names

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/network.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_preview.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/online/http_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/document.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/element.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:meiyou_extensions_lib/src/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [ParsedHttpSource]
class $ParsedHttpSource extends ParsedHttpSource
    with
        $SourceMixin,
        $CatalogueSourceMixin,
        $HttpSourceMixin,
        $ParsedHttpSourceMixin,
        $Bridge<ParsedHttpSource> {
  $ParsedHttpSource();

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ParsedHttpSource.', __$ParsedHttpSource$new.call,
        isBridge: true);
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
      'homeNextPageSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [
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
      'homeDataSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
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
      'homeDataFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.homePageData, []),
                nullable: false),
            params: [
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
      'fullHomePageParse': BridgeMethodDef(
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
                  'document',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'homePageItemSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
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
      'homePageItemFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
                nullable: false),
            params: [
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
      'singleHomePageParse': BridgeMethodDef(
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
                  'document',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document, []),
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
      'searchItemSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'searchNextPageSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'searchItemFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
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
      'mediaDetailsFromDocument': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.mediaDetails, []),
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
      'mediaLinkSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'mediaLinkFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaLink, []),
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
      'mediaFromDocument': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.media, []),
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
    },
    getters: {},
    setters: {},
    bridge: true,
    wrap: false,
  );

  @override
  $Value? $bridgeGet(String identifier) {
    return $bridgeGetFromParsedHttpSource(identifier);
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    switch (identifier) {
      default:
        return $_set(identifier, value);
    }
  }

  static const __$ParsedHttpSource$new = $Function(_$ParsedHttpSource$new);
  static $Value? _$ParsedHttpSource$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $ParsedHttpSource();
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

  @override
  HomePage $superFullHomePageParse(
          HomePageRequest request, Document document) =>
      super.fullHomePageParse(request, document);

  @override
  HomePageData $superHomeDataFromElement(
          HomePageRequest request, Element element) =>
      super.homeDataFromElement(request, element);

  @override
  String $superHomeDataSelector(HomePageRequest request) =>
      super.homeDataSelector(request);

  @override
  MediaPreview $superHomePageItemFromElement(
          HomePageRequest request, Element element) =>
      super.homePageItemFromElement(request, element);

  @override
  String $superHomePageItemSelector(HomePageRequest request) =>
      super.homePageItemSelector(request);

  @override
  Future<MediaDetails> $superMediaDetailsParse(Response response) =>
      super.mediaDetailsParse(response);

  @override
  Future<Media?> $superMediaFromDocument(Document document) =>
      super.mediaFromDocument(document);

  @override
  List<MediaLink> $superMedialinksParse(Response response) =>
      super.medialinksParse(response);

  @override
  SearchPage $superSearchPageParse(Response response) =>
      super.searchPageParse(response);

  @override
  HomePage $superSingleHomePageParse(
          HomePageRequest request, Document document) =>
      super.singleHomePageParse(request, document);
}

abstract mixin class $ParsedHttpSourceMixin {
  dynamic $_get(String prop);

  dynamic $_invoke(String method, List<$Value?> args);

  $Value? $bridgeGetFromParsedHttpSource(String identifier) {
    switch (identifier) {
      case 'homeDataSelector':
        return __$homeDataSelector;
      case 'homeDataFromElement':
        return __$homeDataFromElement;
      case 'fullHomePageParse':
        return __$fullHomePageParse;
      case 'homePageItemSelector':
        return __$homePageItemSelector;
      case 'homePageItemFromElement':
        return __$homePageItemFromElement;
      case 'singleHomePageParse':
        return __$singleHomePageParse;
      case 'searchPageParse':
        return __$searchPageParse;
      case 'mediaDetailsParse':
        return __$mediaDetailsParse;
      case 'medialinksParse':
        return __$medialinksParse;
      case 'mediaParse':
        return __$mediaParse;
      case 'mediaFromDocument':
        return __$mediaFromDocument;
      default:
        return $bridgeGetFromHttpSource(identifier);
    }
  }

  $Value? $bridgeGetFromHttpSource(String identifier);

  String? homeNextPageSelector(HomePageRequest request) {
    return $_invoke('homeNextPageSelector', [
      $HomePageRequest.wrap(request),
    ]) as String?;
  }

  String homeDataSelector(HomePageRequest request) {
    return $_invoke('homeDataSelector', [
      $HomePageRequest.wrap(request),
    ]) as String;
  }

  $Value get __$homeDataSelector => $Function(_$homeDataSelector);
  String $superHomeDataSelector(HomePageRequest request);
  $Value? _$homeDataSelector(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final $result = $superHomeDataSelector(request);
    return $String($result);
  }

  HomePageData homeDataFromElement(HomePageRequest request, Element element) {
    return $_invoke('homeDataFromElement', [
      $HomePageRequest.wrap(request),
      $Element.wrap(element),
    ]) as HomePageData;
  }

  $Value get __$homeDataFromElement => $Function(_$homeDataFromElement);
  HomePageData $superHomeDataFromElement(
      HomePageRequest request, Element element);
  $Value? _$homeDataFromElement(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final element = args[2]?.$reified as Element;
    final $result = $superHomeDataFromElement(
      request,
      element,
    );
    return $HomePageData.wrap($result);
  }

  HomePage fullHomePageParse(HomePageRequest request, Document document) {
    return $_invoke('fullHomePageParse', [
      $HomePageRequest.wrap(request),
      $Document.wrap(document),
    ]) as HomePage;
  }

  $Value get __$fullHomePageParse => $Function(_$fullHomePageParse);
  HomePage $superFullHomePageParse(HomePageRequest request, Document document);
  $Value? _$fullHomePageParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final document = args[2]?.$reified as Document;
    final $result = $superFullHomePageParse(
      request,
      document,
    );
    return $HomePage.wrap($result);
  }

  String homePageItemSelector(HomePageRequest request) {
    return $_invoke('homePageItemSelector', [
      $HomePageRequest.wrap(request),
    ]) as String;
  }

  $Value get __$homePageItemSelector => $Function(_$homePageItemSelector);
  String $superHomePageItemSelector(HomePageRequest request);
  $Value? _$homePageItemSelector(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final $result = $superHomePageItemSelector(
      request,
    );
    return $String($result);
  }

  MediaPreview homePageItemFromElement(
      HomePageRequest request, Element element) {
    return $_invoke('homePageItemFromElement', [
      $HomePageRequest.wrap(request),
      $Element.wrap(element),
    ]) as MediaPreview;
  }

  $Value get __$homePageItemFromElement => $Function(_$homePageItemFromElement);
  MediaPreview $superHomePageItemFromElement(
      HomePageRequest request, Element element);
  $Value? _$homePageItemFromElement(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final element = args[2]?.$reified as Element;
    final $result = $superHomePageItemFromElement(
      request,
      element,
    );
    return $MediaPreview.wrap($result);
  }

  HomePage singleHomePageParse(HomePageRequest request, Document document) {
    return $_invoke('singleHomePageParse', [
      $HomePageRequest.wrap(request),
      $Document.wrap(document),
    ]) as HomePage;
  }

  $Value get __$singleHomePageParse => $Function(_$singleHomePageParse);
  HomePage $superSingleHomePageParse(
      HomePageRequest request, Document document);
  $Value? _$singleHomePageParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final document = args[2]?.$reified as Document;
    final $result = $superSingleHomePageParse(
      request,
      document,
    );
    return $HomePage.wrap($result);
  }

  $Value get __$searchPageParse => $Function(_$searchPageParse);
  SearchPage $superSearchPageParse(Response response);
  $Value? _$searchPageParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final response = args[1]?.$reified as Response;
    final $result = $superSearchPageParse(
      response,
    );
    return $SearchPage.wrap($result);
  }

  String searchItemSelector() {
    return $_invoke('searchItemSelector', []) as String;
  }

  String? searchNextPageSelector() {
    return $_invoke('searchNextPageSelector', []) as String?;
  }

  MediaPreview searchItemFromElement(Element element) {
    return $_invoke('searchItemFromElement', [
      $Element.wrap(element),
    ]) as MediaPreview;
  }

  $Value get __$mediaDetailsParse => $Function(_$mediaDetailsParse);
  Future<MediaDetails> $superMediaDetailsParse(Response response);
  $Value? _$mediaDetailsParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final response = args[1]?.$reified as Response;
    final $result = $superMediaDetailsParse(
      response,
    );
    return $Future.wrap($result.then((value) => $MediaDetails.wrap(value)))
        as $Value?;
  }

  Future<MediaDetails> mediaDetailsFromDocument(Document document) {
    return ($_invoke('mediaDetailsFromDocument', [
      $Document.wrap(document),
    ]) as Future)
        .then((value) => value as MediaDetails);
  }

  List<MediaLink> medialinksParse(Response response) {
    return ($_invoke('medialinksParse', [
      $Response.wrap(response),
    ]) as List)
        .cast<MediaLink>();
  }

  $Value get __$medialinksParse => $Function(_$medialinksParse);
  List<MediaLink> $superMedialinksParse(Response response);
  $Value? _$medialinksParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final response = args[1]?.$reified as Response;
    final $result = $superMedialinksParse(
      response,
    );
    return $List.wrap(List.generate($result.length, (index) {
      return $MediaLink.wrap($result[index]);
    }));
  }

  String mediaLinkSelector() {
    return $_invoke('mediaLinkSelector', []) as String;
  }

  MediaLink mediaLinkFromElement(Element element) {
    return $_invoke('mediaLinkFromElement', [
      $Element.wrap(element),
    ]) as MediaLink;
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

  Future<Media?> mediaFromDocument(Document document) {
    return ($_invoke('mediaFromDocument', [
      $Document.wrap(document),
    ]) as Future)
        .then((value) => value as Media?);
  }

  $Value get __$mediaFromDocument => $Function(_$mediaFromDocument);
  Future<Media?> $superMediaFromDocument(Document document);
  $Value? _$mediaFromDocument(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final document = args[1]?.$reified as Document;
    final $result = $superMediaFromDocument(
      document,
    );
    return $Future.wrap($result.then(
            (value) => value == null ? $null() : $Media.wrapByType(value)))
        as $Value?;
  }
}
