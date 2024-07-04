import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_preview.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'dart:io';

import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/media_preview.dart';

/// dart_eval bimodal wrapper for [HomePage]
class $HomePage implements HomePage, $Instance {
  /// Configure the [$HomePage] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HomePage.', __$HomePage$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HomePage.of', __$HomePage$of.call,
        isBridge: false);
    runtime.registerBridgeFunc($type.spec!.library, 'HomePage.fromRequest',
        __$HomePage$fromRequest.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HomePage.fromData', __$HomePage$fromData.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HomePage.list', __$HomePage$list.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HomePage.fromJson', __$HomePage$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.homePage);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'items',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.homePageData, []),
                    ]),
                    nullable: false),
                false),
            BridgeParameter(
                'hasNextPage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                false)
          ],
        ),
        isFactory: false,
      ),
      'of': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'title',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'list',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
                    ]),
                    nullable: false),
                false),
            BridgeParameter(
                'horizontalImages',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                true),
            BridgeParameter(
                'hasNextPage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: true,
      ),
      'fromRequest': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'reqeust',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.homePageRequest, []),
                    nullable: false),
                false),
            BridgeParameter(
                'list',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
                    ]),
                    nullable: false),
                false),
            BridgeParameter(
                'hasNextPage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: true,
      ),
      'fromData': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'items',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.homePageData, []),
                    nullable: false),
                false),
            BridgeParameter(
                'hasNextPage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: true,
      ),
      'list': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'items',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.homePageData, []),
                    ]),
                    nullable: false),
                false),
            BridgeParameter(
                'hasNextPage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: true,
      ),
      'fromJson': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'json',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeRef(CoreTypes.string, []),
                      BridgeTypeRef(CoreTypes.dynamic, []),
                    ]),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: true,
      )
    },
    fields: {
      'items': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.homePageData, []),
              ]),
              nullable: false),
          isStatic: false),
      'hasNextPage': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      '+': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.homePage, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'other',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.homePage, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.homePage, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'items',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.homePageData, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'hasNextPage',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: false),
      'toJson': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeRef(CoreTypes.string, []),
                  BridgeTypeRef(CoreTypes.dynamic, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [HomePage] in an [$HomePage]
  $HomePage.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'items':
        return $List.wrap(List.generate($value.items.length, (index) {
          return $HomePageData.wrap($value.items[index]);
        }));
      case 'hasNextPage':
        return $bool($value.hasNextPage);
      case '+':
        return __$combine;
      case 'copyWith':
        return __$copyWith;
      case 'toJson':
        return __$toJson;
      case 'toString':
        return __$toString;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  HomePage get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final HomePage $value;

  @override
  List<HomePageData> get items => $value.items;
  @override
  bool get hasNextPage => $value.hasNextPage;

  @override
  HomePage operator +(HomePage other) => $value + other;
  static const __$combine = $Function(_$combine);
  static $Value? _$combine(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as HomePage;
    final other = args[0]?.$reified as HomePage;
    final $result = $this + other;
    return $HomePage.wrap($result);
  }

  @override
  HomePage copyWith({List<HomePageData>? items, bool? hasNextPage}) =>
      $value.copyWith(
        items: items,
        hasNextPage: hasNextPage,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as HomePage;
    final items = (args[0]?.$reified as List?)?.cast<HomePageData>();
    final hasNextPage = args[1]?.$value as bool?;
    final $result = $this.copyWith(
      items: items,
      hasNextPage: hasNextPage,
    );
    return $HomePage.wrap($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as HomePage;
    final $result = $this.toJson();
    return $Map.wrap(($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    })));
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as HomePage;
    final $result = $this.toString();
    return $String($result);
  }

  static const __$HomePage$new = $Function(_$HomePage$new);
  static $Value? _$HomePage$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final items = (args[0]?.$reified as List).cast<HomePageData>();
    final hasNextPage = args[1]?.$value as bool;
    return $HomePage.wrap(HomePage(
      items: items,
      hasNextPage: hasNextPage,
    ));
  }

  static const __$HomePage$of = $Function(_$HomePage$of);
  static $Value? _$HomePage$of(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final title = args[0]?.$value as String;
    final list = (args[1]?.$reified as List).cast<MediaPreview>();
    final horizontalImages = args[2]?.$value as bool? ?? false;
    final hasNextPage = args[3]?.$value as bool?;
    return $HomePage.wrap(HomePage.of(
      title: title,
      list: list,
      horizontalImages: horizontalImages,
      hasNextPage: hasNextPage,
    ));
  }

  static const __$HomePage$fromRequest = $Function(_$HomePage$fromRequest);
  static $Value? _$HomePage$fromRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final reqeust = args[0]?.$reified as HomePageRequest;
    final list = (args[1]?.$reified as List).cast<MediaPreview>();
    final hasNextPage = args[2]?.$value as bool?;
    return $HomePage.wrap(HomePage.fromRequest(
      reqeust: reqeust,
      list: list,
      hasNextPage: hasNextPage,
    ));
  }

  static const __$HomePage$fromData = $Function(_$HomePage$fromData);
  static $Value? _$HomePage$fromData(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final items = args[0]?.$reified as HomePageData;
    final hasNextPage = args[1]?.$value as bool?;
    return $HomePage.wrap(HomePage.fromData(
      items: items,
      hasNextPage: hasNextPage,
    ));
  }

  static const __$HomePage$list = $Function(_$HomePage$list);
  static $Value? _$HomePage$list(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final items = (args[0]?.$reified as List).cast<HomePageData>();
    final hasNextPage = args[1]?.$value as bool?;
    return $HomePage.wrap(HomePage.list(
      items: items,
      hasNextPage: hasNextPage,
    ));
  }

  static const __$HomePage$fromJson = $Function(_$HomePage$fromJson);
  static $Value? _$HomePage$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $HomePage.wrap(HomePage.fromJson(
      json,
    ));
  }
}

/// dart_eval bimodal wrapper for [HomePageData]
class $HomePageData implements HomePageData, $Instance {
  /// Configure the [$HomePageData] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HomePageData.', __$HomePageData$new.call,
        isBridge: false);
    runtime.registerBridgeFunc($type.spec!.library, 'HomePageData.withRequest',
        __$HomePageData$withRequest.call,
        isBridge: false);
    runtime.registerBridgeFunc($type.spec!.library, 'HomePageData.fromJson',
        __$HomePageData$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.homePageData);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'title',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'list',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
                    ]),
                    nullable: false),
                false),
            BridgeParameter(
                'horizontalImages',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                false)
          ],
        ),
        isFactory: false,
      ),
      'withRequest': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'request',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.homePageRequest, []),
                    nullable: false),
                false),
            BridgeParameter(
                'list',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
                    ]),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
      'fromJson': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'json',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeRef(CoreTypes.string, []),
                      BridgeTypeRef(CoreTypes.dynamic, []),
                    ]),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: true,
      )
    },
    fields: {
      'title': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'list': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
              ]),
              nullable: false),
          isStatic: false),
      'horizontalImages': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.homePageData, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'title',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'horizontalImages',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: false),
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'toJson': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeRef(CoreTypes.string, []),
                  BridgeTypeRef(CoreTypes.dynamic, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [HomePageData] in an [$HomePageData]
  $HomePageData.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'title':
        return $String($value.title);
      case 'list':
        return $List.wrap(List.generate($value.list.length, (index) {
          return $MediaPreview.wrap($value.list[index]);
        }));
      case 'horizontalImages':
        return $bool($value.horizontalImages);

      case 'copyWith':
        return __$copyWith;
      case 'toString':
        return __$toString;
      case 'toJson':
        return __$toJson;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  HomePageData get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final HomePageData $value;

  @override
  String get title => $value.title;
  @override
  List<MediaPreview> get list => $value.list;
  @override
  bool get horizontalImages => $value.horizontalImages;

  @override
  HomePageData copyWith(
          {String? title, List<MediaPreview>? list, bool? horizontalImages}) =>
      $value.copyWith(
        title: title,
        list: list,
        horizontalImages: horizontalImages,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as HomePageData;
    final title = args[0]?.$value as String?;
    final list = (args[1]?.$reified as List?)?.cast<MediaPreview>();
    final horizontalImages = args[2]?.$value as bool?;
    final $result = $this.copyWith(
      title: title,
      list: list,
      horizontalImages: horizontalImages,
    );
    return $HomePageData.wrap($result);
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as HomePageData;
    final $result = $this.toString();
    return $String($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as HomePageData;
    final $result = $this.toJson();
    return $Map.wrap(($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    })));
  }

  static const __$HomePageData$new = $Function(_$HomePageData$new);
  static $Value? _$HomePageData$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final title = args[0]?.$value as String;
    final list = (args[1]?.$reified as List).cast<MediaPreview>();
    final horizontalImages = args[2]?.$value as bool;
    return $HomePageData.wrap(HomePageData(
      title: title,
      list: list,
      horizontalImages: horizontalImages,
    ));
  }

  static const __$HomePageData$withRequest =
      $Function(_$HomePageData$withRequest);
  static $Value? _$HomePageData$withRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final request = args[0]?.$reified as HomePageRequest;
    final list = (args[1]?.$reified as List).cast<MediaPreview>();
    return $HomePageData.wrap(HomePageData.withRequest(
      request,
      list,
    ));
  }

  static const __$HomePageData$fromJson = $Function(_$HomePageData$fromJson);
  static $Value? _$HomePageData$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $HomePageData.wrap(HomePageData.fromJson(
      json,
    ));
  }
}

/// dart_eval bimodal wrapper for [HomePageRequest]
class $HomePageRequest implements HomePageRequest, $Instance {
  /// Configure the [$HomePageRequest] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HomePageRequest.', __$HomePageRequest$new.call,
        isBridge: false);
    runtime.registerBridgeFunc($type.spec!.library, 'HomePageRequest.fromJson',
        __$HomePageRequest$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.homePageRequest);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'title',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'data',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'horizontalImages',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                true),
            BridgeParameter(
                'hasFullData',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                true)
          ],
        ),
        isFactory: false,
      ),
      'fromJson': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'json',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeRef(CoreTypes.string, []),
                      BridgeTypeRef(CoreTypes.dynamic, []),
                    ]),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: true,
      )
    },
    fields: {
      'title': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'data': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'horizontalImages': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
      'hasFullData': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.homePageRequest, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'title',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'horizontalImages',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'hasFullData',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: false),
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'toJson': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeRef(CoreTypes.string, []),
                  BridgeTypeRef(CoreTypes.dynamic, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [HomePageRequest] in an [$HomePageRequest]
  $HomePageRequest.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'title':
        return $String($value.title);
      case 'data':
        return $String($value.data);
      case 'horizontalImages':
        return $bool($value.horizontalImages);
      case 'hasFullData':
        return $bool($value.hasFullData);

      case 'copyWith':
        return __$copyWith;
      case 'toString':
        return __$toString;
      case 'toJson':
        return __$toJson;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  HomePageRequest get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final HomePageRequest $value;

  @override
  String get title => $value.title;
  @override
  String get data => $value.data;
  @override
  bool get horizontalImages => $value.horizontalImages;
  @override
  bool get hasFullData => $value.hasFullData;

  @override
  HomePageRequest copyWith(
          {String? title,
          String? data,
          bool? horizontalImages,
          bool? hasFullData}) =>
      $value.copyWith(
        title: title,
        data: data,
        horizontalImages: horizontalImages,
        hasFullData: hasFullData,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as HomePageRequest;
    final title = args[0]?.$value as String?;
    final data = args[1]?.$value as String?;
    final horizontalImages = args[2]?.$value as bool?;
    final hasFullData = args[3]?.$value as bool?;
    final $result = $this.copyWith(
      title: title,
      data: data,
      horizontalImages: horizontalImages,
      hasFullData: hasFullData,
    );
    return $HomePageRequest.wrap($result);
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as HomePageRequest;
    final $result = $this.toString();
    return $String($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as HomePageRequest;
    final $result = $this.toJson();
    return $Map.wrap(($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    })));
  }

  static const __$HomePageRequest$new = $Function(_$HomePageRequest$new);
  static $Value? _$HomePageRequest$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final title = args[0]?.$value as String;
    final data = args[1]?.$value as String;
    final horizontalImages = args[2]?.$value as bool? ?? false;
    final hasFullData = args[3]?.$value as bool? ?? false;
    return $HomePageRequest.wrap(HomePageRequest(
      title: title,
      data: data,
      horizontalImages: horizontalImages,
      hasFullData: hasFullData,
    ));
  }

  static const __$HomePageRequest$fromJson =
      $Function(_$HomePageRequest$fromJson);
  static $Value? _$HomePageRequest$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $HomePageRequest.wrap(HomePageRequest.fromJson(
      json,
    ));
  }
}
