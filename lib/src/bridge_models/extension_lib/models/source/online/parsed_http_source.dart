// ignore_for_file: non_constant_identifier_names

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_content.dart';
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
import 'package:meiyou_extensions_lib/src/models/media_content.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [ParsedHttpSource]
class $ParsedHttpSource extends ParsedHttpSource
    with
        $ParsedHttpSourceMixin,
        $HttpSourceMixin,
        $CatalogueSourceMixin,
        $SourceMixin,
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
      'homeListSelector': BridgeMethodDef(
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
      'homeListFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.homePageList, []),
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
      'mediaContentFromDocument': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaContent, []),
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
      'mediaFromDocument': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.media, []),
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
}

mixin $ParsedHttpSourceMixin on ParsedHttpSource {
  dynamic $_get(String prop);

  dynamic $_invoke(String method, List<$Value?> args);

  $Value? $bridgeGetFromParsedHttpSource(String identifier) {
    switch (identifier) {
      case 'homePageParse':
        return __$homePageParse;
      case 'homeListSelector':
        return __$homeListSelector;
      case 'homeListFromElement':
        return __$homeListFromElement;
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
      case 'mediaContentParse':
        return __$mediaContentParse;
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

  @override
  HomePage homePageParse(HomePageRequest request, Response response) {
    return $_invoke('homePageParse', [
      $HomePageRequest.wrap(request),
      $Response.wrap(response),
    ]) as HomePage;
  }

  $Value get __$homePageParse => $Function(_$homePageParse);
  $Value? _$homePageParse(Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final response = args[2]?.$reified as Response;
    final $result = super.homePageParse(
      request,
      response,
    );
    return $HomePage.wrap($result);
  }

  @override
  String? homeNextPageSelector(HomePageRequest request) {
    return $_invoke('homeNextPageSelector', [
      $HomePageRequest.wrap(request),
    ]) as String?;
  }

  @override
  String homeListSelector(HomePageRequest request) {
    return $_invoke('homeListSelector', [
      $HomePageRequest.wrap(request),
    ]) as String;
  }

  $Value get __$homeListSelector => $Function(_$homeListSelector);
  $Value? _$homeListSelector(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final $result = super.homeListSelector(
      request,
    );
    return $String($result);
  }

  @override
  HomePageList homeListFromElement(HomePageRequest request, Element element) {
    return $_invoke('homeListFromElement', [
      $HomePageRequest.wrap(request),
      $Element.wrap(element),
    ]) as HomePageList;
  }

  $Value get __$homeListFromElement => $Function(_$homeListFromElement);
  $Value? _$homeListFromElement(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final element = args[2]?.$reified as Element;
    final $result = super.homeListFromElement(
      request,
      element,
    );
    return $HomePageList.wrap($result);
  }

  @override
  HomePage fullHomePageParse(HomePageRequest request, Document document) {
    return $_invoke('fullHomePageParse', [
      $HomePageRequest.wrap(request),
      $Document.wrap(document),
    ]) as HomePage;
  }

  $Value get __$fullHomePageParse => $Function(_$fullHomePageParse);
  $Value? _$fullHomePageParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final document = args[2]?.$reified as Document;
    final $result = super.fullHomePageParse(
      request,
      document,
    );
    return $HomePage.wrap($result);
  }

  @override
  String homePageItemSelector(HomePageRequest request) {
    return $_invoke('homePageItemSelector', [
      $HomePageRequest.wrap(request),
    ]) as String;
  }

  $Value get __$homePageItemSelector => $Function(_$homePageItemSelector);
  $Value? _$homePageItemSelector(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final $result = super.homePageItemSelector(
      request,
    );
    return $String($result);
  }

  @override
  MediaPreview homePageItemFromElement(
      HomePageRequest request, Element element) {
    return $_invoke('homePageItemFromElement', [
      $HomePageRequest.wrap(request),
      $Element.wrap(element),
    ]) as MediaPreview;
  }

  $Value get __$homePageItemFromElement => $Function(_$homePageItemFromElement);
  $Value? _$homePageItemFromElement(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final element = args[2]?.$reified as Element;
    final $result = super.homePageItemFromElement(
      request,
      element,
    );
    return $MediaPreview.wrap($result);
  }

  @override
  HomePage singleHomePageParse(HomePageRequest request, Document document) {
    return $_invoke('singleHomePageParse', [
      $HomePageRequest.wrap(request),
      $Document.wrap(document),
    ]) as HomePage;
  }

  $Value get __$singleHomePageParse => $Function(_$singleHomePageParse);
  $Value? _$singleHomePageParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[1]?.$reified as HomePageRequest;
    final document = args[2]?.$reified as Document;
    final $result = super.singleHomePageParse(
      request,
      document,
    );
    return $HomePage.wrap($result);
  }

  @override
  SearchPage searchPageParse(Response response) {
    return $_invoke('searchPageParse', [
      $Response.wrap(response),
    ]) as SearchPage;
  }

  $Value get __$searchPageParse => $Function(_$searchPageParse);
  $Value? _$searchPageParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final response = args[1]?.$reified as Response;
    final $result = super.searchPageParse(
      response,
    );
    return $SearchPage.wrap($result);
  }

  @override
  String searchItemSelector() {
    return $_invoke('searchItemSelector', []) as String;
  }

  @override
  String? searchNextPageSelector() {
    return $_invoke('searchNextPageSelector', []) as String?;
  }

  @override
  MediaPreview searchItemFromElement(Element element) {
    return $_invoke('searchItemFromElement', [
      $Element.wrap(element),
    ]) as MediaPreview;
  }

  @override
  MediaDetails mediaDetailsParse(Response response) {
    return $_invoke('mediaDetailsParse', [
      $Response.wrap(response),
    ]) as MediaDetails;
  }

  $Value get __$mediaDetailsParse => $Function(_$mediaDetailsParse);
  $Value? _$mediaDetailsParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final response = args[1]?.$reified as Response;
    final $result = super.mediaDetailsParse(
      response,
    );
    return $MediaDetails.wrap($result);
  }

  @override
  MediaDetails mediaDetailsFromDocument(Document document) {
    return $_invoke('mediaDetailsFromDocument', [
      $Document.wrap(document),
    ]) as MediaDetails;
  }

  @override
  MediaContent mediaContentParse(Response response) {
    return $_invoke('mediaContentParse', [
      $Response.wrap(response),
    ]) as MediaContent;
  }

  $Value get __$mediaContentParse => $Function(_$mediaContentParse);
  $Value? _$mediaContentParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final response = args[1]?.$reified as Response;
    final $result = super.mediaContentParse(
      response,
    );
    return $MediaContent.wrapByType($result);
  }

  @override
  MediaContent mediaContentFromDocument(Document document) {
    return $_invoke('mediaContentFromDocument', [
      $Document.wrap(document),
    ]) as MediaContent;
  }

  @override
  List<MediaLink> medialinksParse(Response response) {
    return ($_invoke('medialinksParse', [
      $Response.wrap(response),
    ]) as List)
        .cast<MediaLink>();
  }

  $Value get __$medialinksParse => $Function(_$medialinksParse);
  $Value? _$medialinksParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final response = args[1]?.$reified as Response;
    final $result = super.medialinksParse(
      response,
    );
    return $List.wrap(List.generate($result.length, (index) {
      return $MediaLink.wrap($result[index]);
    }));
  }

  @override
  String mediaLinkSelector() {
    return $_invoke('mediaLinkSelector', []) as String;
  }

  @override
  MediaLink mediaLinkFromElement(Element element) {
    return $_invoke('mediaLinkFromElement', [
      $Element.wrap(element),
    ]) as MediaLink;
  }

  @override
  Media? mediaParse(Response response) {
    return $_invoke('mediaParse', [
      $Response.wrap(response),
    ]) as Media?;
  }

  $Value get __$mediaParse => $Function(_$mediaParse);
  $Value? _$mediaParse(Runtime runtime, $Value? target, List<$Value?> args) {
    final response = args[1]?.$reified as Response;
    final $result = super.mediaParse(
      response,
    );
    return $result == null ? $null() : $Media.wrapByType($result);
  }

  @override
  Media mediaFromDocument(Document document) {
    return $_invoke('mediaFromDocument', [
      $Document.wrap(document),
    ]) as Media;
  }

  $Value get __$mediaFromDocument => $Function(_$mediaFromDocument);
  $Value? _$mediaFromDocument(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final document = args[1]?.$reified as Document;
    final $result = super.mediaFromDocument(
      document,
    );
    return $Media.wrapByType($result);
  }
}
