// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_asset.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_content.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/online/http_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/document.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/element.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:okhttp/response.dart';
import 'package:dart_eval/stdlib/async.dart';

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
      'homePageFromDocument': BridgeMethodDef(
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
                  'document',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'homePageListSelector': BridgeMethodDef(
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
      'homeMediaListSelector': BridgeMethodDef(
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
      'homeHasNextPageSelector': BridgeMethodDef(
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
      'homeMediaFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.iMedia, []),
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
      'mediaDetailsFromDocument': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(AsyncTypes.futureOr, [
                  BridgeTypeRef(ExtensionLibTypes.iMedia, []),
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
      'mediaContentListFromDocument': BridgeMethodDef(
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
                  'document',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'mediaContentListSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'mediaContentFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.iMediaContent, []),
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
      'mediaLinkListFromDocument': BridgeMethodDef(
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
                  'document',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'mediaLinkListSelector': BridgeMethodDef(
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
      'mediaAssetFromDocument': BridgeMethodDef(
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
                  'document',
                  BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'searchPageFromDocument': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(AsyncTypes.futureOr, [
                  BridgeTypeRef(ExtensionLibTypes.searchPage, []),
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
      'searchMediaListSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'searchHasNextPageSelector': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'searchMediaFromElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.iMedia, []),
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
    },
    getters: {},
    setters: {},
    bridge: true,
    wrap: false,
  );

  @override
  $Value? $bridgeGet(String identifier) {
    return $bridgeGetParsedHttpSource(identifier);
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    return $bridgeSetParsedHttpSource(identifier, value);
  }

  static const __$ParsedHttpSource$new = $Function(_$ParsedHttpSource$new);
  static $Value? _$ParsedHttpSource$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $ParsedHttpSource();
  }

  @override
  dynamic $_invoke(String method, List<$Value?> args) {
    return super.$_invoke(method, args);
  }
}

mixin $ParsedHttpSourceMixin on ParsedHttpSource {
  dynamic $_get(String prop);

  dynamic $_invoke(String method, List<$Value?> args);

  void $_set(String prop, $Value value);

  $Value? $bridgeGetParsedHttpSource(String identifier) {
    switch (identifier) {
      case 'homePageParse':
        return __$homePageParse;
      case 'homePageFromDocument':
        return __$homePageFromDocument;
      case 'homePageListSelector':
        return __$homePageListSelector;
      case 'mediaDetailsParse':
        return __$mediaDetailsParse;
      case 'mediaContentListParse':
        return __$mediaContentListParse;
      case 'mediaContentListFromDocument':
        return __$mediaContentListFromDocument;
      case 'mediaLinkListParse':
        return __$mediaLinkListParse;
      case 'mediaLinkListFromDocument':
        return __$mediaLinkListFromDocument;
      case 'mediaAssetParse':
        return __$mediaAssetParse;
      case 'searchPageParse':
        return __$searchPageParse;
      case 'searchPageFromDocument':
        return __$searchPageFromDocument;
      default:
        return $bridgeGetHttpSource(identifier);
    }
  }

  void $bridgeSetParsedHttpSource(String identifier, $Value value) {
    $bridgeSetHttpSource(identifier, value);
  }

  $Value? $bridgeGetHttpSource(String identifier);

  void $bridgeSetHttpSource(String identifier, $Value value);

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

  $Value get __$homePageParse => $Function(_$homePageParse);
  $Value? _$homePageParse(Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is ParsedHttpSource) {
      args = args.sublist(1);
    }
    final request = args[0]?.$reified as HomePageRequest;
    final response = args[1]?.$reified as Response;
    final $result = super.homePageParse(
      request,
      response,
    );

    final result = $result;
    final FutureOr wrapped;
    if (result is Future) {
      wrapped =
          ($result as Future<HomePage>).then((value) => $HomePage.wrap(value));
    } else {
      wrapped = $HomePage.wrap(result);
    }
    return $FutureOr.wrap(wrapped);
  }

  @override
  FutureOr<HomePage> homePageFromDocument(
      HomePageRequest request, Document document) {
    final result = $_invoke('homePageFromDocument', [
      $HomePageRequest.wrap(request),
      $Document.wrap(document),
    ]);
    final FutureOr<HomePage> casted;
    if (result is Future) {
      casted = result.then((value) => value as HomePage);
    } else {
      casted = result as HomePage;
    }
    return casted;
  }

  $Value get __$homePageFromDocument => $Function(_$homePageFromDocument);
  $Value? _$homePageFromDocument(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is ParsedHttpSource) {
      args = args.sublist(1);
    }
    final request = args[0]?.$reified as HomePageRequest;
    final document = args[1]?.$reified as Document;
    final $result = super.homePageFromDocument(
      request,
      document,
    );

    final result = $result;
    final FutureOr wrapped;
    if (result is Future) {
      wrapped =
          ($result as Future<HomePage>).then((value) => $HomePage.wrap(value));
    } else {
      wrapped = $HomePage.wrap(result);
    }
    return $FutureOr.wrap(wrapped);
  }

  @override
  String homePageListSelector(HomePageRequest request) {
    return $_invoke('homePageListSelector', [
      $HomePageRequest.wrap(request),
    ]) as String;
  }

  $Value get __$homePageListSelector => $Function(_$homePageListSelector);
  $Value? _$homePageListSelector(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is ParsedHttpSource) {
      args = args.sublist(1);
    }
    final request = args[0]?.$reified as HomePageRequest;
    final $result = super.homePageListSelector(
      request,
    );
    return $String($result);
  }

  @override
  String homeMediaListSelector(HomePageRequest request) {
    return $_invoke('homeMediaListSelector', [
      $HomePageRequest.wrap(request),
    ]) as String;
  }

  @override
  String? homeHasNextPageSelector(HomePageRequest request) {
    return $_invoke('homeHasNextPageSelector', [
      $HomePageRequest.wrap(request),
    ]) as String?;
  }

  @override
  IMedia homeMediaFromElement(HomePageRequest request, Element element) {
    return $_invoke('homeMediaFromElement', [
      $HomePageRequest.wrap(request),
      $Element.wrap(element),
    ]) as IMedia;
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

  $Value get __$mediaDetailsParse => $Function(_$mediaDetailsParse);
  $Value? _$mediaDetailsParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is ParsedHttpSource) {
      args = args.sublist(1);
    }
    final response = args[0]?.$reified as Response;
    final $result = super.mediaDetailsParse(
      response,
    );

    final result = $result;
    final FutureOr wrapped;
    if (result is Future) {
      wrapped =
          ($result as Future<IMedia>).then((value) => $IMedia.wrap(value));
    } else {
      wrapped = $IMedia.wrap(result);
    }
    return $FutureOr.wrap(wrapped);
  }

  @override
  FutureOr<IMedia> mediaDetailsFromDocument(Document document) {
    final result = $_invoke('mediaDetailsFromDocument', [
      $Document.wrap(document),
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

  $Value get __$mediaContentListParse => $Function(_$mediaContentListParse);
  $Value? _$mediaContentListParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is ParsedHttpSource) {
      args = args.sublist(1);
    }
    final response = args[0]?.$reified as Response;
    final $result = super.mediaContentListParse(
      response,
    );

    final result = $result;
    final FutureOr wrapped;
    if (result is Future) {
      wrapped = ($result as Future<List<IMediaContent>>)
          .then((value) => $List.wrap(List.generate(value.length, (index) {
                return $IMediaContent.wrap(value[index]);
              })));
    } else {
      wrapped = $List.wrap(List.generate(result.length, (index) {
        return $IMediaContent.wrap(result[index]);
      }));
    }
    return $FutureOr.wrap(wrapped);
  }

  @override
  FutureOr<List<IMediaContent>> mediaContentListFromDocument(
      Document document) {
    final result = $_invoke('mediaContentListFromDocument', [
      $Document.wrap(document),
    ]);
    final FutureOr<List<IMediaContent>> casted;
    if (result is Future) {
      casted = result.then((value) => (value as List).cast<IMediaContent>());
    } else {
      casted = (result as List).cast<IMediaContent>();
    }
    return casted;
  }

  $Value get __$mediaContentListFromDocument =>
      $Function(_$mediaContentListFromDocument);
  $Value? _$mediaContentListFromDocument(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is ParsedHttpSource) {
      args = args.sublist(1);
    }
    final document = args[0]?.$reified as Document;
    final $result = super.mediaContentListFromDocument(
      document,
    );

    final result = $result;
    final FutureOr wrapped;
    if (result is Future) {
      wrapped = ($result as Future<List<IMediaContent>>)
          .then((value) => $List.wrap(List.generate(value.length, (index) {
                return $IMediaContent.wrap(value[index]);
              })));
    } else {
      wrapped = $List.wrap(List.generate(result.length, (index) {
        return $IMediaContent.wrap(result[index]);
      }));
    }
    return $FutureOr.wrap(wrapped);
  }

  @override
  String mediaContentListSelector() {
    return $_invoke('mediaContentListSelector', []) as String;
  }

  @override
  IMediaContent mediaContentFromElement(Element element) {
    return $_invoke('mediaContentFromElement', [
      $Element.wrap(element),
    ]) as IMediaContent;
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

  $Value get __$mediaLinkListParse => $Function(_$mediaLinkListParse);
  $Value? _$mediaLinkListParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is ParsedHttpSource) {
      args = args.sublist(1);
    }
    final response = args[0]?.$reified as Response;
    final $result = super.mediaLinkListParse(
      response,
    );

    final result = $result;
    final FutureOr wrapped;
    if (result is Future) {
      wrapped = ($result as Future<List<MediaLink>>)
          .then((value) => $List.wrap(List.generate(value.length, (index) {
                return $MediaLink.wrap(value[index]);
              })));
    } else {
      wrapped = $List.wrap(List.generate(result.length, (index) {
        return $MediaLink.wrap(result[index]);
      }));
    }
    return $FutureOr.wrap(wrapped);
  }

  @override
  FutureOr<List<MediaLink>> mediaLinkListFromDocument(Document document) {
    final result = $_invoke('mediaLinkListFromDocument', [
      $Document.wrap(document),
    ]);
    final FutureOr<List<MediaLink>> casted;
    if (result is Future) {
      casted = result.then((value) => (value as List).cast<MediaLink>());
    } else {
      casted = (result as List).cast<MediaLink>();
    }
    return casted;
  }

  $Value get __$mediaLinkListFromDocument =>
      $Function(_$mediaLinkListFromDocument);
  $Value? _$mediaLinkListFromDocument(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is ParsedHttpSource) {
      args = args.sublist(1);
    }
    final document = args[0]?.$reified as Document;
    final $result = super.mediaLinkListFromDocument(
      document,
    );

    final result = $result;
    final FutureOr wrapped;
    if (result is Future) {
      wrapped = ($result as Future<List<MediaLink>>)
          .then((value) => $List.wrap(List.generate(value.length, (index) {
                return $MediaLink.wrap(value[index]);
              })));
    } else {
      wrapped = $List.wrap(List.generate(result.length, (index) {
        return $MediaLink.wrap(result[index]);
      }));
    }
    return $FutureOr.wrap(wrapped);
  }

  @override
  String mediaLinkListSelector() {
    return $_invoke('mediaLinkListSelector', []) as String;
  }

  @override
  MediaLink mediaLinkFromElement(Element element) {
    return $_invoke('mediaLinkFromElement', [
      $Element.wrap(element),
    ]) as MediaLink;
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

  $Value get __$mediaAssetParse => $Function(_$mediaAssetParse);
  $Value? _$mediaAssetParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is ParsedHttpSource) {
      args = args.sublist(1);
    }
    final link = args[0]?.$reified as MediaLink;
    final response = args[1]?.$reified as Response;
    final $result = super.mediaAssetParse(
      link,
      response,
    );

    final result = $result;
    final FutureOr wrapped;
    if (result is Future) {
      wrapped = ($result as Future<MediaAsset>)
          .then((value) => $MediaAsset.wrapByType(value));
    } else {
      wrapped = $MediaAsset.wrapByType(result);
    }
    return $FutureOr.wrap(wrapped);
  }

  @override
  FutureOr<MediaAsset> mediaAssetFromDocument(
      MediaLink link, Document document) {
    final result = $_invoke('mediaAssetFromDocument', [
      $MediaLink.wrap(link),
      $Document.wrap(document),
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

  $Value get __$searchPageParse => $Function(_$searchPageParse);
  $Value? _$searchPageParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is ParsedHttpSource) {
      args = args.sublist(1);
    }
    final response = args[0]?.$reified as Response;
    final $result = super.searchPageParse(
      response,
    );

    final result = $result;
    final FutureOr wrapped;
    if (result is Future) {
      wrapped = ($result as Future<SearchPage>)
          .then((value) => $SearchPage.wrap(value));
    } else {
      wrapped = $SearchPage.wrap(result);
    }
    return $FutureOr.wrap(wrapped);
  }

  @override
  FutureOr<SearchPage> searchPageFromDocument(Document document) {
    final result = $_invoke('searchPageFromDocument', [
      $Document.wrap(document),
    ]);
    final FutureOr<SearchPage> casted;
    if (result is Future) {
      casted = result.then((value) => value as SearchPage);
    } else {
      casted = result as SearchPage;
    }
    return casted;
  }

  $Value get __$searchPageFromDocument => $Function(_$searchPageFromDocument);
  $Value? _$searchPageFromDocument(
      Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[0]?.$value is ParsedHttpSource) {
      args = args.sublist(1);
    }
    final document = args[0]?.$reified as Document;
    final $result = super.searchPageFromDocument(
      document,
    );

    final result = $result;
    final FutureOr wrapped;
    if (result is Future) {
      wrapped = ($result as Future<SearchPage>)
          .then((value) => $SearchPage.wrap(value));
    } else {
      wrapped = $SearchPage.wrap(result);
    }
    return $FutureOr.wrap(wrapped);
  }

  @override
  String searchMediaListSelector() {
    return $_invoke('searchMediaListSelector', []) as String;
  }

  @override
  String? searchHasNextPageSelector() {
    return $_invoke('searchHasNextPageSelector', []) as String?;
  }

  @override
  IMedia searchMediaFromElement(Element element) {
    return $_invoke('searchMediaFromElement', [
      $Element.wrap(element),
    ]) as IMedia;
  }
}
