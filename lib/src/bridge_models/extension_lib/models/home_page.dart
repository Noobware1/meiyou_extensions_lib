import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';

import 'package:meiyou_extensions_lib/src/models/home_page.dart';

/// dart_eval bimodal wrapper for [HomePage]
class $HomePage implements HomePage, $Instance {
  /// Configure the [$HomePage] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HomePage.', __$HomePage$new.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HomePage.of', __$HomePage$of.call);
    runtime.registerBridgeFunc($type.spec!.library, 'HomePage.fromRequest',
        __$HomePage$fromRequest.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HomePage.fromData', __$HomePage$fromData.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HomePage.list', __$HomePage$list.call);
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
                'data',
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
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'entries',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.contentItem, []),
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
                'entries',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.contentItem, []),
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
                'data',
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
                'data',
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
      )
    },
    fields: {
      'data': BridgeFieldDef(
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
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.homePage, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'data',
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
      case 'data':
        return $List.wrap(List.generate($value.data.length, (index) {
          return $HomePageData.wrap($value.data[index]);
        })) as $Value?;
      case 'hasNextPage':
        return $bool($value.hasNextPage);

      case 'copyWith':
        return __$copyWith;
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
  List<HomePageData> get data => $value.data;
  @override
  bool get hasNextPage => $value.hasNextPage;

  @override
  HomePage copyWith({List<HomePageData>? data, bool? hasNextPage}) =>
      $value.copyWith(
        data: data,
        hasNextPage: hasNextPage,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as HomePage;
    final data = (args[0]?.$reified as List?)?.cast<HomePageData>();
    final hasNextPage = args[1]?.$value as bool?;
    final $result = obj.copyWith(
      data: data,
      hasNextPage: hasNextPage,
    );
    return $HomePage.wrap($result);
  }

  static const __$HomePage$new = $Function(_$HomePage$new);
  static $Value? _$HomePage$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = (args[0]?.$reified as List).cast<HomePageData>();
    final hasNextPage = args[1]?.$value as bool;
    return $HomePage.wrap(HomePage(
      data: data,
      hasNextPage: hasNextPage,
    ));
  }

  static const __$HomePage$of = $Function(_$HomePage$of);
  static $Value? _$HomePage$of(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final entries = (args[1]?.$reified as List).cast<ContentItem>();
    final horizontalImages = args[2]?.$value as bool? ?? false;
    final hasNextPage = args[3]?.$value as bool?;
    return $HomePage.wrap(HomePage.of(
      name: name,
      entries: entries,
      horizontalImages: horizontalImages,
      hasNextPage: hasNextPage,
    ));
  }

  static const __$HomePage$fromRequest = $Function(_$HomePage$fromRequest);
  static $Value? _$HomePage$fromRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final reqeust = args[0]?.$reified as HomePageRequest;
    final entries = (args[1]?.$reified as List).cast<ContentItem>();
    final hasNextPage = args[2]?.$value as bool?;
    return $HomePage.wrap(HomePage.fromRequest(
      reqeust: reqeust,
      entries: entries,
      hasNextPage: hasNextPage,
    ));
  }

  static const __$HomePage$fromData = $Function(_$HomePage$fromData);
  static $Value? _$HomePage$fromData(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as HomePageData;
    final hasNextPage = args[1]?.$value as bool?;
    return $HomePage.wrap(HomePage.fromData(
      data: data,
      hasNextPage: hasNextPage,
    ));
  }

  static const __$HomePage$list = $Function(_$HomePage$list);
  static $Value? _$HomePage$list(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = (args[0]?.$reified as List).cast<HomePageData>();
    final hasNextPage = args[1]?.$value as bool?;
    return $HomePage.wrap(HomePage.list(
      data: data,
      hasNextPage: hasNextPage,
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
        $type.spec!.library, 'HomePageData.', __$HomePageData$new.call);
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
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'entries',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.contentItem, []),
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
      )
    },
    fields: {
      'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'entries': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.contentItem, []),
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
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'entries',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.contentItem, []),
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
      case 'name':
        return $String($value.name);
      case 'entries':
        return $List.wrap(List.generate($value.entries.length, (index) {
          return $ContentItem.wrap($value.entries[index]);
        })) as $Value?;
      case 'horizontalImages':
        return $bool($value.horizontalImages);

      case 'copyWith':
        return __$copyWith;
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
  String get name => $value.name;
  @override
  List<ContentItem> get entries => $value.entries;
  @override
  bool get horizontalImages => $value.horizontalImages;

  @override
  HomePageData copyWith(
          {String? name, List<ContentItem>? entries, bool? horizontalImages}) =>
      $value.copyWith(
        name: name,
        entries: entries,
        horizontalImages: horizontalImages,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as HomePageData;
    final name = args[0]?.$value as String?;
    final entries = (args[1]?.$reified as List?)?.cast<ContentItem>();
    final horizontalImages = args[2]?.$value as bool?;
    final $result = obj.copyWith(
      name: name,
      entries: entries,
      horizontalImages: horizontalImages,
    );
    return $HomePageData.wrap($result);
  }

  static const __$HomePageData$new = $Function(_$HomePageData$new);
  static $Value? _$HomePageData$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final entries = (args[1]?.$reified as List).cast<ContentItem>();
    final horizontalImages = args[2]?.$value as bool;
    return $HomePageData.wrap(HomePageData(
      name: name,
      entries: entries,
      horizontalImages: horizontalImages,
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
        $type.spec!.library, 'HomePageRequest.', __$HomePageRequest$new.call);
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
                'name',
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
                false)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'name': BridgeFieldDef(
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
    },
    methods: {
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.homePageRequest, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'name',
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
                  true)
            ],
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
      case 'name':
        return $String($value.name);
      case 'data':
        return $String($value.data);
      case 'horizontalImages':
        return $bool($value.horizontalImages);

      case 'toString':
        return __$toString;
      case 'copyWith':
        return __$copyWith;
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
  String get name => $value.name;
  @override
  String get data => $value.data;
  @override
  bool get horizontalImages => $value.horizontalImages;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as HomePageRequest;
    final $result = obj.toString();
    return $String($result);
  }

  @override
  HomePageRequest copyWith(
          {String? name, String? data, bool? horizontalImages}) =>
      $value.copyWith(
        name: name,
        data: data,
        horizontalImages: horizontalImages,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as HomePageRequest;
    final name = args[0]?.$value as String?;
    final data = args[1]?.$value as String?;
    final horizontalImages = args[2]?.$value as bool?;
    final $result = obj.copyWith(
      name: name,
      data: data,
      horizontalImages: horizontalImages,
    );
    return $HomePageRequest.wrap($result);
  }

  static const __$HomePageRequest$new = $Function(_$HomePageRequest$new);
  static $Value? _$HomePageRequest$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final data = args[1]?.$value as String;
    final horizontalImages = args[2]?.$value as bool;
    return $HomePageRequest.wrap(HomePageRequest(
      name: name,
      data: data,
      horizontalImages: horizontalImages,
    ));
  }
}
