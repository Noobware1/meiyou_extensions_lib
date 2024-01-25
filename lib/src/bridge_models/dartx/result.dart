import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dartx/dartx.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/plugin.dart';

/// dart_eval bimodal wrapper for [Result]
class $Result<T> implements Result<T>, $Instance {
  /// Configure the [$Result] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Result.', __$Result$new.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Result.success', __$static$method$success.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Result.failure', __$static$method$failure.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(DartXTypes.result, [
    BridgeTypeRef.ref('T', []),
  ]);

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
          params: [
            BridgeParameter(
                'value',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'value': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'success': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(DartXTypes.result, [
                  BridgeTypeRef.ref('T', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'failure': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(DartXTypes.result, [
                  BridgeTypeRef.ref('T', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'exception',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.exception, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'getOrNull': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'exceptionOrNull': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.exception, []),
                nullable: true),
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
    getters: {
      'isSuccess': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'isFailure': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Result] in an [$Result]
  $Result.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'value':
        return $value.value;
      case 'isSuccess':
        return $bool($value.isSuccess);
      case 'isFailure':
        return $bool($value.isFailure);
      case 'getOrNull':
        return __$getOrNull;
      case 'exceptionOrNull':
        return __$exceptionOrNull;
      case 'toString':
        return __$toString;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Result get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Result $value;

  @override
  dynamic get value => $value.value;

  @override
  bool get isSuccess => $value.isSuccess;

  @override
  bool get isFailure => $value.isFailure;

  @override
  T? getOrNull() => $value.getOrNull();
  static const __$getOrNull = $Function(_$getOrNull);
  static $Value? _$getOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Result;
    final $result = obj.getOrNull();
    return $result ?? $null();
  }

  @override
  Exception? exceptionOrNull() => $value.exceptionOrNull();
  static const __$exceptionOrNull = $Function(_$exceptionOrNull);
  static $Value? _$exceptionOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Result;
    final $result = obj.exceptionOrNull();
    return $result == null
        ? $null()
        : ($result is $Exception ? $result : $Exception.wrap($result));
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Result;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$static$method$success = $Function(_$static$method$success);
  static $Value? _$static$method$success(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = args[0];
    final $result = Result.success(value);
    return $Result.wrap($result);
  }

  static const __$static$method$failure = $Function(_$static$method$failure);
  static $Value? _$static$method$failure(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final exception = $Exception.wrap(args[0]?.$value);
    final $result = Result.failure(exception);
    return $Result.wrap($result);
  }

  static const __$Result$new = $Function(_$Result$new);
  static $Value? _$Result$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = args[0];
    return $Result.wrap(Result(value));
  }
}

/// dart_eval bimodal wrapper for [Failure]
class $Failure implements $Instance {
  /// Configure the [$Failure] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(DartXTypes.failure);

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
          params: [
            BridgeParameter(
                'exception',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.exception, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'exception': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.exception, []),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Failure] in an [$Failure]
  $Failure.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'exception':
        return $Exception.wrap($value.exception);

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Failure get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Failure $value;
}

Result<R> _runCatching<R>(R Function() block) => runCatching(block);

class ResultsUtils {
  static Result<R> runCatching<R>(R Function() block) {
    return _runCatching(block);
  }

  static T getOrThrow<T>(Result<T> result) {
    return result.getOrThrow();
  }

  static T getOrElse<T>(
      Result<T> result, T Function(Exception exception) onFailure) {
    return result.getOrElse(onFailure);
  }

  static T getOrDefault<T>(Result<T> result, T defaultValue) {
    return result.getOrDefault(defaultValue);
  }

  static R fold<T, R>(Result<T> result,
      {required R Function(T value) onSuccess,
      required R Function(Exception exception) onFailure}) {
    return result.fold(onSuccess, onFailure);
  }

  static Result<R> map<T, R>(Result<T> result, R Function(T value) transform) {
    return result.map(transform);
  }

  static Result<R> mapCatching<T, R>(
      Result<T> result, R Function(T value) transform) {
    return result.mapCatching(transform);
  }

  static Result<R> recover<T, R>(
      Result<T> result, R Function(Exception exception) transform) {
    return result.recover(transform);
  }

  static Result<R> recoverCatching<T, R>(
      Result<T> result, R Function(Exception exception) transform) {
    return result.recoverCatching(transform);
  }
}

/// dart_eval bimodal wrapper for [ResultsUtils]
class $ResultsUtils implements ResultsUtils, $Instance {
  /// Configure the [$ResultsUtils] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ResultsUtils.', __$ResultsUtils$new);
    runtime.registerBridgeFunc($type.spec!.library, 'ResultsUtils.runCatching',
        __$static$method$runCatching.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ResultsUtils.getOrThrow',
        __$static$method$getOrThrow.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ResultsUtils.getOrElse',
        __$static$method$getOrElse.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ResultsUtils.getOrDefault',
        __$static$method$getOrDefault.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ResultsUtils.fold', __$static$method$fold.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ResultsUtils.map', __$static$method$map.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ResultsUtils.mapCatching',
        __$static$method$mapCatching.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ResultsUtils.recover',
        __$static$method$recover.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'ResultsUtils.recoverCatching', __$static$method$recoverCatching.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(DartXTypes.resultsUtils);

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
      'runCatching': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(DartXTypes.result, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'block',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'R': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'getOrThrow': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            params: [
              BridgeParameter(
                  'result',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(DartXTypes.result, [
                        BridgeTypeRef.ref('T', []),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'getOrElse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            params: [
              BridgeParameter(
                  'result',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(DartXTypes.result, [
                        BridgeTypeRef.ref('T', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'onFailure',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'getOrDefault': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            params: [
              BridgeParameter(
                  'result',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(DartXTypes.result, [
                        BridgeTypeRef.ref('T', []),
                      ]),
                      nullable: false),
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'fold': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('R', []),
                nullable: false),
            params: [
              BridgeParameter(
                  'result',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(DartXTypes.result, [
                        BridgeTypeRef.ref('T', []),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [
              BridgeParameter(
                  'onSuccess',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'onFailure',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            generics: {
              'R': BridgeGenericParam(),
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'map': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(DartXTypes.result, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'result',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(DartXTypes.result, [
                        BridgeTypeRef.ref('T', []),
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
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'mapCatching': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(DartXTypes.result, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'result',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(DartXTypes.result, [
                        BridgeTypeRef.ref('T', []),
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
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'recover': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(DartXTypes.result, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'result',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(DartXTypes.result, [
                        BridgeTypeRef.ref('T', []),
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
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: true),
      'recoverCatching': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(DartXTypes.result, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'result',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(DartXTypes.result, [
                        BridgeTypeRef.ref('T', []),
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
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: true),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [ResultsUtils] in an [$ResultsUtils]
  $ResultsUtils.wrap(this.$value);

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
  ResultsUtils get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ResultsUtils $value;

  static const __$static$method$runCatching =
      $Function(_$static$method$runCatching);
  static $Value? _$static$method$runCatching(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final block = args[0] as EvalCallable;
    final $result = ResultsUtils.runCatching(
      () => block.call(runtime, null, []),
    );
    return $Result.wrap($result);
  }

  static const __$static$method$getOrThrow =
      $Function(_$static$method$getOrThrow);
  static $Value? _$static$method$getOrThrow(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final result = args[0]?.$value as Result;
    final $result = ResultsUtils.getOrThrow(result);
    return $result;
  }

  static const __$static$method$getOrElse =
      $Function(_$static$method$getOrElse);
  static $Value? _$static$method$getOrElse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final result = args[0]?.$value;
    final onFailure = args[1] as EvalCallable;
    final $result = ResultsUtils.getOrElse(
      result,
      (exception) =>
          onFailure.call(runtime, null, [$Exception.wrap(exception)]),
    );
    return $result;
  }

  static const __$static$method$getOrDefault =
      $Function(_$static$method$getOrDefault);
  static $Value? _$static$method$getOrDefault(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final result = args[0]?.$value as Result;
    final defaultValue = args[1];
    final $result = ResultsUtils.getOrDefault(result, defaultValue);
    return $result;
  }

  static const __$static$method$fold = $Function(_$static$method$fold);
  static $Value? _$static$method$fold(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final result = args[0]?.$value as Result;
    final onSuccess = args[1] as EvalCallable;
    final onFailure = args[2] as EvalCallable;
    final $result = ResultsUtils.fold(result,
        onSuccess: (value) => onSuccess.call(runtime, null, [value as $Value?]),
        onFailure: (exception) => onFailure.call(runtime, null, [
              exception is $Exception ? exception : $Exception.wrap(exception)
            ]));
    return $result;
  }

  static const __$static$method$map = $Function(_$static$method$map);
  static $Value? _$static$method$map(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final result = args[0]?.$value as Result;
    final transform = args[1] as EvalCallable;
    final $result = ResultsUtils.map(
      result,
      (value) => transform.call(runtime, null, [value as $Value?]),
    );
    return $Result.wrap($result);
  }

  static const __$static$method$mapCatching =
      $Function(_$static$method$mapCatching);
  static $Value? _$static$method$mapCatching(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final result = args[0]?.$value as Result;
    final transform = args[1] as EvalCallable;
    final $result = ResultsUtils.mapCatching(
      result,
      (value) => transform.call(runtime, null, [value as $Value]),
    );
    return $Result.wrap($result);
  }

  static const __$static$method$recover = $Function(_$static$method$recover);
  static $Value? _$static$method$recover(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final result = args[0]?.$value as Result;
    final transform = args[1] as EvalCallable;
    final $result = ResultsUtils.recover(
      result,
      (exception) => transform.call(runtime, null,
          [exception is $Exception ? exception : $Exception.wrap(exception)]),
    );
    return $Result.wrap($result);
  }

  static const __$static$method$recoverCatching =
      $Function(_$static$method$recoverCatching);
  static $Value? _$static$method$recoverCatching(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final result = args[0]?.$value as Result;
    final transform = args[1] as EvalCallable;
    final $result = ResultsUtils.recoverCatching(
      result,
      (exception) => transform.call(runtime, null,
          [exception is $Exception ? exception : $Exception.wrap(exception)]),
    );
    return $Result.wrap($result);
  }

  static const __$ResultsUtils$new = $Function(_$ResultsUtils$new);
  static $Value? _$ResultsUtils$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $ResultsUtils.wrap(ResultsUtils());
  }
}
