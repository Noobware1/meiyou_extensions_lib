import 'package:dartx/dartx.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/plugin.dart';
import 'package:meiyou_extensions_lib/src/extenstions/object.dart';

class IterableUtils {
  static Iterable<E> orEmpty<E>(Iterable<E>? iterable) {
    return iterable.orEmpty();
  }

  static Iterable<E> flatten<E>(Iterable<Iterable<E>> list) {
    return list.flatten();
  }

  static Iterable<R> mapNotNull<E, R>(
      Iterable<E?> iterable, R Function(E it) transform) sync* {
    for (final element in iterable) {
      if (element.isNotNull) {
        yield transform(element as E);
      }
    }
  }

  static Iterable<R> mapNotNullIndexed<E, R>(
      Iterable<E?> iterable, R Function(int index, E it) transform) sync* {
    for (var index = 0; index < iterable.length; index++) {
      final element = iterable.elementAt(index);
      if (element.isNotNull) {
        yield transform(index, element as E);
      }
    }
  }

  static E get<E>(Iterable<E> iterable, int index) {
    return iterable.get(index);
  }

  static E? getOrNull<E>(Iterable<E> iterable, int index) {
    return iterable.getOrNull(index);
  }

  static E getOrElse<E>(
      Iterable<E> iterable, int index, E Function(int index) defaultValue) {
    return iterable.getOrElse(index, defaultValue);
  }

  static int lastIndex<E>(Iterable<E> iterable) {
    return iterable.lastIndex;
  }

  static void forEachIndexed<E>(
      Iterable<E> iterable, void Function(int index, E it) action) {
    return iterable.forEachIndexed(action);
  }

  static Iterable<R> mapIndexed<E, R>(
      Iterable<E> iterable, R Function(int index, E it) action) {
    return iterable.mapIndexed(action);
  }

  static bool containsAll<E>(Iterable<E> iterable, Iterable<E> elements) {
    return iterable.containsAll(elements);
  }

  static List<E> filterIndexed<E>(
      Iterable<E> iterable, bool Function(int index, E it) predicate) {
    return iterable.filterIndexed(predicate);
  }

  static List<E> filterIndexedTo<E>(Iterable<E> iterable, List<E> destination,
      bool Function(int index, E it) predicate) {
    return iterable.filterIndexedTo(destination, predicate);
  }

  static List<E> filterNot<E>(
      Iterable<E> iterable, bool Function(E it) predicate) {
    return iterable.filterNot(predicate);
  }

  static List<E> filterNotTo<E>(Iterable<E> iterable, List<E> destination,
      bool Function(E it) predicate) {
    return iterable.filterNotTo(destination, predicate);
  }
}

/// dart_eval bimodal wrapper for [IterableUtils]
class $IterableUtils implements IterableUtils, $Instance {
  /// Configure the [$IterableUtils] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'IterableUtils.', __$IterableUtils$new.call);
    runtime.registerBridgeFunc($type.spec!.library, 'IterableUtils.orEmpty',
        __$static$method$orEmpty.call);
    runtime.registerBridgeFunc($type.spec!.library, 'IterableUtils.flatten',
        __$static$method$flatten.call);
    runtime.registerBridgeFunc($type.spec!.library, 'IterableUtils.mapNotNull',
        __$static$method$mapNotNull.call);
    runtime.registerBridgeFunc(
        $type.spec!.library,
        'IterableUtils.mapNotNullIndexed',
        __$static$method$mapNotNullIndexed.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'IterableUtils.get', __$static$method$get.call);
    runtime.registerBridgeFunc($type.spec!.library, 'IterableUtils.getOrNull',
        __$static$method$getOrNull.call);
    runtime.registerBridgeFunc($type.spec!.library, 'IterableUtils.getOrElse',
        __$static$method$getOrElse.call);
    runtime.registerBridgeFunc($type.spec!.library, 'IterableUtils.lastIndex',
        __$static$method$lastIndex.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'IterableUtils.forEachIndexed', __$static$method$forEachIndexed.call);
    runtime.registerBridgeFunc($type.spec!.library, 'IterableUtils.mapIndexed',
        __$static$method$mapIndexed.call);
    runtime.registerBridgeFunc($type.spec!.library, 'IterableUtils.containsAll',
        __$static$method$containsAll.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'IterableUtils.filterIndexed', __$static$method$filterIndexed.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'IterableUtils.filterIndexedTo', __$static$method$filterIndexedTo.call);
    runtime.registerBridgeFunc($type.spec!.library, 'IterableUtils.filterNot',
        __$static$method$filterNot.call);
    runtime.registerBridgeFunc($type.spec!.library, 'IterableUtils.filterNotTo',
        __$static$method$filterNotTo.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(DartXTypes.iterableUtils);

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
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {
      'orEmpty': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'E': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.iterable, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'flatten': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'E': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.iterable, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
                        BridgeTypeRef(CoreTypes.iterable, [
                          BridgeTypeRef.ref('E', []),
                        ]),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'mapNotNull': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'R': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.iterable, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
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
          ),
          isStatic: true),
      'mapNotNullIndexed': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'R': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.iterable, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
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
          ),
          isStatic: true),
      'get': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'E': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('E', []),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
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
          ),
          isStatic: true),
      'getOrNull': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'E': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('E', []),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
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
          ),
          isStatic: true),
      'getOrElse': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'E': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('E', []),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
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
          ),
          isStatic: true),
      'lastIndex': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'E': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'forEachIndexed': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'E': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'action',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'mapIndexed': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'R': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.iterable, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'action',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'containsAll': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'E': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'elements',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'filterIndexed': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'E': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
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
          ),
          isStatic: true),
      'filterIndexedTo': BridgeMethodDef(
          BridgeFunctionDef(
            generics: {
              'E': BridgeGenericParam(),
            },
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'destination',
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
          ),
          isStatic: true),
      'filterNot': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
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
          ),
          isStatic: true),
      'filterNotTo': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'iterable',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.iterable, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'destination',
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
          ),
          isStatic: true),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [IterableUtils] in an [$IterableUtils]
  $IterableUtils.wrap(this.$value);

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
  IterableUtils get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final IterableUtils $value;

  static const __$static$method$orEmpty = $Function(_$static$method$orEmpty);
  static $Value? _$static$method$orEmpty(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final $result = IterableUtils.orEmpty(iterable);
    return $Iterable.wrap($result);
  }

  static const __$static$method$flatten = $Function(_$static$method$flatten);
  static $Value? _$static$method$flatten(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]?.$value as Iterable<Iterable>;
    final $result = IterableUtils.flatten(list);
    return $Iterable.wrap($result);
  }

  static const __$static$method$mapNotNull =
      $Function(_$static$method$mapNotNull);
  static $Value? _$static$method$mapNotNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value as Iterable;
    final transform = args[1] as EvalCallable;
    final $result = IterableUtils.mapNotNull(
      iterable,
      (it) => transform.call(runtime, null, [it as $Value?]),
    );
    return $Iterable.wrap($result);
  }

  static const __$static$method$mapNotNullIndexed =
      $Function(_$static$method$mapNotNullIndexed);
  static $Value? _$static$method$mapNotNullIndexed(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value as Iterable;
    final transform = args[1] as EvalCallable;
    final $result = IterableUtils.mapNotNullIndexed(
      iterable,
      (index, it) =>
          transform.call(runtime, null, [$int(index), it as $Value?]),
    );
    return $Iterable.wrap($result);
  }

  static const __$static$method$get = $Function(_$static$method$get);
  static $Value? _$static$method$get(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final index = args[1]?.$value as int;
    final $result = IterableUtils.get(iterable, index);
    return $result as $Value?;
  }

  static const __$static$method$getOrNull =
      $Function(_$static$method$getOrNull);
  static $Value? _$static$method$getOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final index = args[1]?.$reified as int;
    final $result = IterableUtils.getOrNull(iterable, index);
    return $result == null ? $null() : $result! as $Value;
  }

  static const __$static$method$getOrElse =
      $Function(_$static$method$getOrElse);
  static $Value? _$static$method$getOrElse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final index = args[1]?.$reified as int;
    final defaultValue = args[2] as EvalCallable;
    final $result = IterableUtils.getOrElse(
      iterable,
      index,
      (index) => defaultValue.call(runtime, null, [$int(index)]),
    );
    return $result;
  }

  static const __$static$method$lastIndex =
      $Function(_$static$method$lastIndex);
  static $Value? _$static$method$lastIndex(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final $result = IterableUtils.lastIndex(iterable);
    return $int($result);
  }

  static const __$static$method$forEachIndexed =
      $Function(_$static$method$forEachIndexed);
  static $Value? _$static$method$forEachIndexed(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final action = args[1] as EvalCallable;
    IterableUtils.forEachIndexed(
      iterable,
      (index, it) => action.call(runtime, null, [$int(index), it as $Value?]),
    );
    return null;
  }

  static const __$static$method$mapIndexed =
      $Function(_$static$method$mapIndexed);
  static $Value? _$static$method$mapIndexed(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final action = args[1] as EvalCallable;
    final $result = IterableUtils.mapIndexed(
      iterable,
      (index, it) => action.call(runtime, null, [$int(index), it as $Value?]),
    );
    return $Iterable.wrap($result);
  }

  static const __$static$method$containsAll =
      $Function(_$static$method$containsAll);
  static $Value? _$static$method$containsAll(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final elements = args[1]?.$value;
    final $result = IterableUtils.containsAll(
      iterable,
      elements,
    );
    return $bool($result);
  }

  static const __$static$method$filterIndexed =
      $Function(_$static$method$filterIndexed);
  static $Value? _$static$method$filterIndexed(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final predicate = args[1] as EvalCallable;
    final $result = IterableUtils.filterIndexed(
      iterable,
      (index, it) => predicate.call(
        runtime,
        null,
        [$int(index), it as $Value?],
      )?.$value as bool,
    );
    return $List.wrap($result);
  }

  static const __$static$method$filterIndexedTo =
      $Function(_$static$method$filterIndexedTo);
  static $Value? _$static$method$filterIndexedTo(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final destination = args[1]?.$value;
    final predicate = args[2] as EvalCallable;
    final $result = IterableUtils.filterIndexedTo(
      iterable,
      destination,
      (index, it) => predicate
          .call(runtime, null, [$int(index), it as $Value?])?.$value as bool,
    );
    return $List.wrap($result);
  }

  static const __$static$method$filterNot =
      $Function(_$static$method$filterNot);
  static $Value? _$static$method$filterNot(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final predicate = args[1] as EvalCallable;
    final $result = IterableUtils.filterNot(
      iterable,
      (it) => predicate.call(runtime, null, [it as $Value?])?.$value as bool,
    );
    return $List.wrap($result);
  }

  static const __$static$method$filterNotTo =
      $Function(_$static$method$filterNotTo);
  static $Value? _$static$method$filterNotTo(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final iterable = args[0]?.$value;
    final destination = args[1]?.$value;
    final predicate = args[2] as EvalCallable;
    final $result = IterableUtils.filterNotTo(
      iterable,
      destination,
      (it) => predicate.call(runtime, null, [it as $Value?])!.$value as bool,
    );
    return $List.wrap($result);
  }

  static const __$IterableUtils$new = $Function(_$IterableUtils$new);
  static $Value? _$IterableUtils$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $IterableUtils.wrap(IterableUtils());
  }
}
