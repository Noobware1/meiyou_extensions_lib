import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:okhttp/interceptor.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

/// dart_eval biomadial wrapper for [Interceptor]
class $Interceptor implements Interceptor, $Instance {
  /// Configure the [$Interceptor] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Interceptor.', __$Interceptor$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.interceptor);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'intercept',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: true,
      )
    },
    fields: {},
    methods: {
      'intercept': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(OkHttpTypes.response, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'chain',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.chain, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Interceptor] in an [$Interceptor]
  $Interceptor.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'intercept':
        return __$intercept;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Interceptor get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Interceptor $value;

  @override
  Future<Response> intercept(Chain chain) => $value.intercept(chain);
  static const __$intercept = $Function(_$intercept);
  static $Value? _$intercept(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Interceptor;
    final chain = args[0]?.$reified as Chain;
    final $result = obj.intercept(chain);
    return $Future.wrap($result.then((value) => $Response.wrap(value)));
  }

  static const __$Interceptor$new = $Function(_$Interceptor$new);
  static $Value? _$Interceptor$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final intercept = args[0] as EvalCallable;
    return $Interceptor.wrap(Interceptor(
      (chain) => (intercept.call(runtime, null, [$Chain.wrap(chain)])?.$value
              as Future)
          .then(
        (value) => value as Response,
      ),
    ));
  }
}

/// dart_eval bimodal wrapper for [Chain]
class $Chain implements Chain, $Instance {
  /// Configure the [$Chain] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.chain);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'request',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.request, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'request': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.request, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'proceed': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(OkHttpTypes.response, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'request',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.request, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Chain] in an [$Chain]
  $Chain.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'request':
        return $Request.wrap($value.request);

      case 'proceed':
        return __$proceed;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Chain get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Chain $value;

  @override
  Request get request => $value.request;

  @override
  Future<Response> proceed(Request request) => $value.proceed(request);
  static const __$proceed = $Function(_$proceed);
  static $Value? _$proceed(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Chain;
    final request = args[0]?.$reified as Request;
    final $result = obj.proceed(request);
    return $Future.wrap($result.then((value) => $Response.wrap(value)));
  }
}
