import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/search_response.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/extenstions/value.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';

class $HomePageData implements HomePageData, $Instance {
  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'HomePageData'));

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'HomePageData.', $new);
    runtime.registerBridgeFunc(bridgeLibary, 'HomePageData.fromMap', $fromMap);
  }

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
            BridgeParameter('name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
            BridgeParameter('data',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
            BridgeParameter('horizontalImages',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)), true),
          ], params: []),
        )
      },
      methods: {
        'fromMap': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.iterable, [$HomePageData.$type])),
                params: [
                  BridgeParameter(
                      'map',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map)),
                      false),
                  BridgeParameter('horizontalImages',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)), true)
                ]),
            isStatic: true)
      },
      fields: {
        'name': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
        'data': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
        'horizontalImages':
            BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool))),
      },
      wrap: true);

  $HomePageData.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $HomePageData.wrap(HomePageData(
        name: args[0]!.$value,
        data: args[1]!.$value,
        horizontalImages: args[2]?.$value ?? false));
  }

  static $Value? $fromMap(Runtime runtime, $Value? target, List<$Value?> args) {
    final map = args[0].unwrapMap<String, String>()!;
    return $Iterable.wrap(HomePageData.fromMap(map, args[1]?.$value ?? false)
        .map((e) => $HomePageData.wrap(e)));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String($value.name);
      case 'data':
        return $String($value.data);
      case 'horizontalImages':
        return $bool($value.horizontalImages);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  late final $Instance _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  HomePageData get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final HomePageData $value;

  @override
  String get data => $value.data;

  @override
  bool get horizontalImages => $value.horizontalImages;

  @override
  String get name => $value.name;

  @override
  String toString() {
    return $value.toString();
  }
}

class $HomePageRequest implements HomePageRequest, $Instance {
  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'HomePageRequest'));

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'HomePageRequest.', $new);
  }

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
            BridgeParameter('name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
            BridgeParameter('data',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
            BridgeParameter('horizontalImages',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)), true),
          ], params: []),
        )
      },
      fields: {
        'name': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
        'data': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
        'horizontalImages':
            BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool))),
      },
      wrap: true);

  $HomePageRequest.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $HomePageRequest.wrap(HomePageRequest(
        name: args[0]!.$value,
        data: args[1]!.$value,
        horizontalImages: args[2]?.$value ?? false));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String($value.name);
      case 'data':
        return $String($value.data);
      case 'horizontalImages':
        return $bool($value.horizontalImages);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  late final $Instance _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  HomePageRequest get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final HomePageRequest $value;

  @override
  String get data => $value.data;

  @override
  bool get horizontalImages => $value.horizontalImages;

  @override
  String get name => $value.name;

  @override
  String toString() {
    return $value.toString();
  }
}

class $HomePage implements HomePage, $Instance {
  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'HomePage'));

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'HomePage.', $new);
  }

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
            BridgeParameter(
                'data', BridgeTypeAnnotation($HomePageList.$type), false),
            BridgeParameter('page',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)), true),
            BridgeParameter(
                'hasNextPage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool),
                    nullable: true),
                true),
          ], params: []),
        )
      },
      fields: {
        'data': BridgeFieldDef(BridgeTypeAnnotation($HomePageList.$type)),
        'page':
            BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int))),
        'hasNextPage': BridgeFieldDef(BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.bool),
            nullable: true)),
      },
      wrap: true);

  $HomePage.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $HomePage.wrap(HomePage(
        data: args[0]!.$value,
        page: args[1]?.$value ?? 1,
        hasNextPage: args[2]?.$value));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'data':
        return $HomePageList.wrap($value.data);
      case 'page':
        return $int($value.page);
      case 'hasNextPage':
        return $value.hasNextPage != null
            ? $bool($value.hasNextPage!)
            : const $null();

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  late final $Instance _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  HomePage get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final HomePage $value;

  @override
  bool? get hasNextPage => $value.hasNextPage;

  @override
  HomePageList get data => $value.data;

  @override
  int get page => $value.page;

  @override
  String toString() {
    return $value.toString();
  }
}

class $HomePageList implements HomePageList, $Instance {
  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'HomePageList'));

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'HomePageList.', $new);
  }

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
            namedParams: [
              BridgeParameter('name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [$SearchResponse.$type])),
                  false),
              // BridgeParameter(
              //     'loadMoreData',
              //     BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function),
              //         nullable: true),
              //     true),
            ],
            params: []))
      },
      fields: {
        'name': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
        'data': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [$SearchResponse.$type])),
        ),
        // 'loadMoreData': BridgeFieldDef(BridgeTypeAnnotation(
        //     BridgeTypeRef(CoreTypes.function),
        //     nullable: true)),
      },
      wrap: true);

  $HomePageList.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $HomePageList.wrap(HomePageList(
      name: args[0]?.$value,
      data: args[1].unwrapList<SearchResponse>()!,
      // loadMoreData:
      //     args[2]?.$value as Future<List<SearchResponse>> Function(int page)?,
    ));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String($value.name);
      case 'data':
        return $List.wrap($value.data);

      // case 'loadMoreData':
      //   return const $Function($loadMoreData);

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  late final $Instance _superclass = $Object($value);

  // static $Value? $loadMoreData(
  //     Runtime runtime, $Value? target, List<$Value?> args) {
  //   final fun = (target as HomePageList).loadMoreData;
  //   if (fun != null) {
  //     return $Future.wrap(fun.call(args[0]?.$value).then((value) =>
  //         $List.wrap(value.mapAsList((it) => $SearchResponse.wrap(it)))));
  //   }
  //   return const $null();
  // }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  HomePageList get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final HomePageList $value;

  @override
  List<SearchResponse> get data => $value.data;

  @override
  String get name => $value.name;

  // @override
  // Future<List<SearchResponse>> Function(int page)? get loadMoreData =>
  //     $value.loadMoreData;

  @override
  String toString() {
    return $value.toString();
  }
}
