import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:nice_dart/nice_dart.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/nice_dart/plugin.dart';

/// dart_eval bimodal wrapper for [Result]
class $Result<T> implements Result<T>, $Instance {
  /// Configure the [$Result] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
    registry.defineBridgeTopLevelFunction(
      BridgeFunctionDeclaration(
        $type.spec!.library,
        'runCatching',
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
              BridgeTypeRef(nice_dartTypes.result, [
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
      ),
    );
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Result.', __$Result$new.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Result.success', __$static$method$success.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Result.failure', __$static$method$failure.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'runCatching', __$runCatching.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(nice_dartTypes.result);

  static const $declaration = BridgeClassDef(
    BridgeClassType($type,
        $extends: null,
        $implements: [],
        isAbstract: false,
        generics: {
          'E': BridgeGenericParam(),
        }),
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
                BridgeTypeRef(nice_dartTypes.result, [
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
                BridgeTypeRef(nice_dartTypes.result, [
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
      'getOrThrow': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            params: [],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      'getOrElse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            params: [
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
          isStatic: false),
      'getOrDefault': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            params: [
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
          isStatic: false),
      'fold': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('R', []),
                nullable: false),
            params: [
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
            namedParams: [],
            generics: {
              'R': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      'map': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(nice_dartTypes.result, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'transform',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'R': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      'mapCatching': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(nice_dartTypes.result, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'transform',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'R': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      'recover': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(nice_dartTypes.result, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'transform',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'R': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      'recoverCatching': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(nice_dartTypes.result, [
                  BridgeTypeRef.ref('R', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'transform',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'R': BridgeGenericParam(),
            },
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

      case 'getOrThrow':
        return __$getOrThrow;
      case 'getOrElse':
        return __$getOrElse;
      case 'getOrDefault':
        return __$getOrDefault;
      case 'fold':
        return __$fold;
      case 'map':
        return __$map;
      case 'mapCatching':
        return __$mapCatching;
      case 'recover':
        return __$recover;
      case 'recoverCatching':
        return __$recoverCatching;
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

  static const __$runCatching = $Function(_$runCatching);
  static $Value? _$runCatching(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final block = args[0] as EvalCallable;
    return $Result.wrap(runCatching(() => block.call(runtime, null, [])));
  }

  static const __$getOrThrow = $Function(_$getOrThrow);
  static $Value? _$getOrThrow(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $instance = target!.$value as Result;
    final $result = $instance.getOrThrow();
    return $result;
  }

  static const __$getOrElse = $Function(_$getOrElse);
  static $Value? _$getOrElse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $instance = target!.$value as Result;
    final onFailure = args[0] as EvalCallable;
    final $result = $instance.getOrElse(
      (exception) =>
          onFailure.call(runtime, null, [$Exception.wrap(exception)]),
    );
    return $result;
  }

  static const __$getOrDefault = $Function(_$getOrDefault);
  static $Value? _$getOrDefault(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $instance = target!.$value as Result;
    final defaultValue = args[0];
    final $result = $instance.getOrDefault(defaultValue);
    return $result;
  }

  static const __$fold = $Function(_$fold);
  static $Value? _$fold(Runtime runtime, $Value? target, List<$Value?> args) {
    final $instance = target!.$value as Result;
    final onSuccess = args[0] as EvalCallable;
    final onFailure = args[1] as EvalCallable;
    final $result = $instance.fold(
        (value) => onSuccess.call(runtime, null, [value as $Value?]),
        (exception) => onFailure.call(runtime, null, [
              exception is $Exception ? exception : $Exception.wrap(exception)
            ]));
    return $result;
  }

  static const __$map = $Function(_$map);
  static $Value? _$map(Runtime runtime, $Value? target, List<$Value?> args) {
    final $instance = target!.$value as Result;
    final transform = args[0] as EvalCallable;
    final $result = $instance.map(
      (value) => transform.call(runtime, null, [value as $Value?]),
    );
    return $Result.wrap($result);
  }

  static const __$mapCatching = $Function(_$mapCatching);
  static $Value? _$mapCatching(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $instance = target!.$value as Result;
    final transform = args[0] as EvalCallable;
    final $result = $instance.mapCatching(
      (value) => transform.call(runtime, null, [value as $Value]),
    );
    return $Result.wrap($result);
  }

  static const __$recover = $Function(_$recover);
  static $Value? _$recover(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $instance = target!.$value as Result;
    final transform = args[0] as EvalCallable;
    final $result = $instance.recover(
      (exception) => transform.call(runtime, null,
          [exception is $Exception ? exception : $Exception.wrap(exception)]),
    );
    return $Result.wrap($result);
  }

  static const __$recoverCatching = $Function(_$recoverCatching);
  static $Value? _$recoverCatching(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $instance = target!.$value as Result;
    final transform = args[0] as EvalCallable;
    final $result = $instance.recoverCatching(
      (exception) => transform.call(runtime, null,
          [exception is $Exception ? exception : $Exception.wrap(exception)]),
    );
    return $Result.wrap($result);
  }

  @override
  String toString() => $value.toString();

  static const __$static$method$success = $Function(_static$method$success);
  static $Value? _static$method$success(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = args[0];
    final $result = Result.success(value);
    return $Result.wrap($result);
  }

  static const __$static$method$failure = $Function(_static$method$failure);
  static $Value? _static$method$failure(
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
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(nice_dartTypes.failure);

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
