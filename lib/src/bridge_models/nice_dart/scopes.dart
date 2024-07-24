import 'package:nice_dart/nice_dart.dart';

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/nice_dart/plugin.dart';

class Scopes {
  static T? apply<T extends Object>(T? instance, void Function(T? it) block) {
    return instance.apply(block);
  }

  static T? also<T extends Object>(T? instance, void Function(T? it) block) {
    return instance.also(block);
  }

  static R? let<T extends Object, R>(T? instance, R Function(T? it) block) {
    return instance.let(block);
  }

  static T? takeIf<T extends Object>(
      T? instance, bool Function(T? it) predicate) {
    return instance.takeIf(predicate);
  }

  static T? takeUnless<T extends Object>(
      T? instance, bool Function(T? it) predicate) {
    return instance.takeUnless(predicate);
  }
}

/// dart_eval bimodal wrapper for [Scopes]
class $Scopes implements Scopes, $Instance {
  /// Configure the [$Scopes] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Scopes.', __$Scopes$new.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Scopes.apply', __$static$method$apply.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Scopes.also', __$static$method$also.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Scopes.let', __$static$method$let.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Scopes.takeIf', __$static$method$takeIf.call);
    runtime.registerBridgeFunc($type.spec!.library, 'Scopes.takeUnless',
        __$static$method$takeUnless.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(nice_dartTypes.scopes);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
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
      'apply': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                  nullable: true),
              params: [
                BridgeParameter(
                    'instance',
                    BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                        nullable: true),
                    false),
                BridgeParameter(
                    'block',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                        nullable: false),
                    false)
              ],
              namedParams: [],
              generics: {
                'T': BridgeGenericParam()
              }),
          isStatic: true),
      'also': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: true),
            params: [
              BridgeParameter(
                  'instance',
                  BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                      nullable: true),
                  false),
              BridgeParameter(
                  'block',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {'T': BridgeGenericParam()},
          ),
          isStatic: true),
      'let': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('R', []),
                nullable: true),
            params: [
              BridgeParameter(
                  'instance',
                  BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                      nullable: true),
                  false),
              BridgeParameter(
                  'block',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {'R': BridgeGenericParam(), 'T': BridgeGenericParam()},
          ),
          isStatic: true),
      'takeIf': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: true),
            params: [
              BridgeParameter(
                  'instance',
                  BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                      nullable: true),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {'T': BridgeGenericParam()},
          ),
          isStatic: true),
      'takeUnless': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: true),
            params: [
              BridgeParameter(
                  'instance',
                  BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                      nullable: true),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {'T': BridgeGenericParam()},
          ),
          isStatic: true),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Scopes] in an [$Scopes]
  $Scopes.wrap(this.$value);

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
  Scopes get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Scopes $value;

  static const __$static$method$apply = $Function(_$static$method$apply);
  static $Value? _$static$method$apply(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final instance = args[0];
    final block = args[1] as EvalCallable;
    final $result = Scopes.apply(
      instance,
      (it) => block.call(runtime, null, [it]),
    );
    return $result ?? $null();
  }

  static const __$static$method$also = $Function(_$static$method$also);
  static $Value? _$static$method$also(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final instance = args[0];
    final block = args[1] as EvalCallable;
    final $result = Scopes.also(
      instance,
      (it) => block.call(runtime, null, [it]),
    );
    return $result ?? const $null();
  }

  static const __$static$method$let = $Function(_$static$method$let);
  static $Value? _$static$method$let(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final instance = args[0];
    final block = args[1] as EvalCallable;
    final $result = Scopes.let(
      instance,
      (it) => block.call(runtime, null, [it]),
    );
    return $result ?? const $null();
  }

  static const __$static$method$takeIf = $Function(_$static$method$takeIf);
  static $Value? _$static$method$takeIf(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final instance = args[0];
    final predicate = args[1] as EvalCallable;
    final $result = Scopes.takeIf(
      instance,
      (it) => predicate.call(runtime, null, [it])!.$value as bool,
    );
    return $result ?? $null();
  }

  static const __$static$method$takeUnless =
      $Function(_$static$method$takeUnless);
  static $Value? _$static$method$takeUnless(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final instance = args[0];
    final predicate = args[1] as EvalCallable;
    final $result = Scopes.takeUnless(
      instance,
      (it) => predicate.call(runtime, null, [it])!.$value as bool,
    );
    return $result ?? $null();
  }

  static const __$Scopes$new = $Function(_$Scopes$new);
  static $Value? _$Scopes$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Scopes.wrap(Scopes());
  }
}
