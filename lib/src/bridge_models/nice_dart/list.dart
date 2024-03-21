import 'package:nice_dart/nice_dart.dart';

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/nice_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/extenstions/object.dart';

class ListUtils {
  static List<E> orEmpty<E>(List<E>? list) {
    return list.orEmpty();
  }

  static List<E> flatten<E>(List<List<E>> list) {
    return list.flatten();
  }

  static List<R> mapNotNull<E, R>(List<E?> list, R Function(E it) transform) {
    return [
      for (final element in list)
        if (element.isNotNull) transform(element as E)
    ];
  }

  static List<R> mapNotNullIndexed<E, R>(
      List<E?> list, R Function(int index, E it) transform) {
    return [
      for (var i = 0; i < list.length; i++)
        if (list[i].isNotNull) transform(i, list[i] as E)
    ];
  }

  static E get<E>(List<E> list, int index) {
    return list.get(index);
  }

  static E? getOrNull<E>(List<E> list, int index) {
    return list.getOrNull(index);
  }

  static E getOrElse<E>(
      List<E> list, int index, E Function(int index) defaultValue) {
    return list.getOrElse(index, defaultValue);
  }

  static int lastIndex<E>(List<E> list) {
    return list.lastIndex;
  }

  static List<E> dropWhile<E>(List<E> list, bool Function(E it) predicate) {
    return list.dropWhile(predicate);
  }

  static List<E> dropLastWhile<E>(List<E> list, bool Function(E it) predicate) {
    return list.dropLastWhile(predicate);
  }

  static List<E> takeAsList<E>(List<E> list, int n) {
    return list.takeAsList(n);
  }

  static List<E> takeLast<E>(List<E> list, int n) {
    return list.takeLast(n);
  }

  static List<E> takeLastWhile<E>(List<E> list, bool Function(E it) predicate) {
    return list.takeLastWhile(predicate);
  }

  static List<T> mapList<E, T>(List<E> list, T Function(E e) toElement) {
    return list.mapList(toElement);
  }

  static List<T> mapListIndexed<E, T>(
      List<E> list, T Function(int index, E e) toElement) {
    return list.mapListIndexed(toElement);
  }
}

/// dart_eval bimodal wrapper for [ListUtils]
class $ListUtils implements ListUtils, $Instance {
  /// Configure the [$ListUtils] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ListUtils.', __$ListUtils$new.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.orEmpty',
        __$static$method$orEmpty.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.flatten',
        __$static$method$flatten.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.mapNotNull',
        __$static$method$mapNotNull.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'ListUtils.mapNotNullIndexed', __$static$method$mapNotNullIndexed.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ListUtils.get', __$static$method$get.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.getOrNull',
        __$static$method$getOrNull.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.getOrElse',
        __$static$method$getOrElse.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.lastIndex',
        __$static$method$lastIndex.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.dropWhile',
        __$static$method$dropWhile.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.dropLastWhile',
        __$static$method$dropLastWhile.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.takeAsList',
        __$static$method$takeAsList.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.takeLast',
        __$static$method$takeLast.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.takeLastWhile',
        __$static$method$takeLastWhile.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.mapList',
        __$static$method$mapList.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ListUtils.mapListIndexed',
        __$static$method$mapListIndexed.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(nice_dartTypes.listUtils);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {},
    fields: {},
    methods: {
      'orEmpty': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: true),
                  false)
            ],
            generics: {
              'E': BridgeGenericParam(),
            },
            namedParams: [],
          ),
          isStatic: true),
      'flatten': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.list, [
                          BridgeTypeRef.ref('E', []),
                        ]),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'mapNotNull': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'transform',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'R': BridgeGenericParam(),
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'mapNotNullIndexed': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'transform',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'R': BridgeGenericParam(),
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'get': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('E', []),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'getOrNull': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('E', []),
                nullable: true),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'getOrElse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('E', []),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'lastIndex': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'dropWhile': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'dropLastWhile': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'takeAsList': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'n',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'takeLast': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'n',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'takeLastWhile': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'mapList': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('T', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'toElement',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'mapListIndexed': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('T', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'toElement',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: true),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [ListUtils] in an [$ListUtils]
  $ListUtils.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ListUtils get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ListUtils $value;

  static const __$static$method$orEmpty = $Function(_$static$method$orEmpty);
  static $Value? _$static$method$orEmpty(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final $result = ListUtils.orEmpty(list);
    return $List.wrap($result);
  }

  static const __$static$method$flatten = $Function(_$static$method$flatten);
  static $Value? _$static$method$flatten(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = (args[0]?.$value as List)
        .mapList((e) => (e is $Value ? e.$value : e) as List);
    final $result = ListUtils.flatten(list);
    return $List.wrap($result);
  }

  static const __$static$method$mapNotNull =
      $Function(_$static$method$mapNotNull);
  static $Value? _$static$method$mapNotNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final transform = args[1] as EvalCallable;
    final $result = ListUtils.mapNotNull(
      list,
      (it) => transform.call(runtime, null, [it as $Value?]),
    );
    return $List.wrap($result);
  }

  static const __$static$method$mapNotNullIndexed =
      $Function(_$static$method$mapNotNullIndexed);
  static $Value? _$static$method$mapNotNullIndexed(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final transform = args[1] as EvalCallable;
    final $result = ListUtils.mapNotNullIndexed(
      list,
      (index, it) =>
          transform.call(runtime, null, [$int(index), it as $Value?]),
    );
    return $List.wrap($result);
  }

  static const __$static$method$get = $Function(_$static$method$get);
  static $Value? _$static$method$get(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final index = args[1]?.$reified as int;
    final $result = ListUtils.get(list, index);
    return $result;
  }

  static const __$static$method$getOrNull =
      $Function(_$static$method$getOrNull);
  static $Value? _$static$method$getOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final index = args[1]?.$reified as int;
    final $result = ListUtils.getOrNull(list, index);
    return $result ?? const $null();
  }

  static const __$static$method$getOrElse =
      $Function(_$static$method$getOrElse);
  static $Value? _$static$method$getOrElse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final index = args[1]?.$reified as int;
    final defaultValue = args[2] as EvalCallable;
    final $result = ListUtils.getOrElse(
      list,
      index,
      (index) => defaultValue.call(runtime, null, [$int(index)]),
    );
    return $result;
  }

  static const __$static$method$lastIndex =
      $Function(_$static$method$lastIndex);
  static $Value? _$static$method$lastIndex(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final $result = ListUtils.lastIndex(list);
    return $int($result);
  }

  static const __$static$method$dropWhile =
      $Function(_$static$method$dropWhile);
  static $Value? _$static$method$dropWhile(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final predicate = args[1] as EvalCallable;
    final $result = ListUtils.dropWhile(
      list,
      (it) => predicate.call(runtime, null, [it as $Value?])!.$value as bool,
    );
    return $List.wrap($result);
  }

  static const __$static$method$dropLastWhile =
      $Function(_$static$method$dropLastWhile);
  static $Value? _$static$method$dropLastWhile(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final predicate = args[1] as EvalCallable;
    final $result = ListUtils.dropLastWhile(
      list,
      (it) => predicate.call(runtime, null, [it as $Value?])!.$value as bool,
    );
    return $List.wrap($result);
  }

  static const __$static$method$takeAsList =
      $Function(_$static$method$takeAsList);
  static $Value? _$static$method$takeAsList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final n = args[1]?.$value as int;
    final $result = ListUtils.takeAsList(list, n);
    return $List.wrap($result);
  }

  static const __$static$method$takeLast = $Function(_$static$method$takeLast);
  static $Value? _$static$method$takeLast(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final n = args[1]?.$value as int;
    final $result = ListUtils.takeLast(list, n);
    return $List.wrap($result);
  }

  static const __$static$method$takeLastWhile =
      $Function(_$static$method$takeLastWhile);
  static $Value? _$static$method$takeLastWhile(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final predicate = args[1] as EvalCallable;
    final $result = ListUtils.takeLastWhile(
      list,
      (it) => predicate.call(runtime, null, [it as $Value])!.$value as bool,
    );
    return $List.wrap($result);
  }

  static const __$static$method$mapList = $Function(_$static$method$mapList);
  static $Value? _$static$method$mapList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final toElement = args[1] as EvalCallable;
    final $result = ListUtils.mapList(
      list,
      (e) => toElement.call(runtime, null, [e as $Value?]),
    );
    return $List.wrap($result);
  }

  static const __$static$method$mapListIndexed =
      $Function(_$static$method$mapListIndexed);
  static $Value? _$static$method$mapListIndexed(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value;
    final toElement = args[1] as EvalCallable;
    final $result = ListUtils.mapListIndexed(
      list,
      (index, e) => toElement.call(runtime, null, [$int(index), e as $Value?]),
    );
    return $List.wrap($result);
  }

  static const __$ListUtils$new = $Function(_$ListUtils$new);
  static $Value? _$ListUtils$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $ListUtils.wrap(ListUtils());
  }
}
