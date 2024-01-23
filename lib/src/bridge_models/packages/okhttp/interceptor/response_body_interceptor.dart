import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/okhttp/interceptor/interceptor.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/okhttp/plugin.dart';
import 'package:okhttp/interceptor.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [ResponseBodyInterceptor]
class $ResponseBodyInterceptor implements ResponseBodyInterceptor, $Instance {
  /// Configure the [$ResponseBodyInterceptor] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'ResponseBodyInterceptor.',
        __$ResponseBodyInterceptor$new.call);
  }

  late final $Instance _superclass = $Interceptor.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.responseBodyInterceptor);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [
        BridgeTypeRef(OkHttpTypes.interceptor, []),
      ],
      isAbstract: false,
    ),
    constructors: {},
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

  /// Wrap an [ResponseBodyInterceptor] in an [$ResponseBodyInterceptor]
  $ResponseBodyInterceptor.wrap(this.$value);

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
  ResponseBodyInterceptor get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ResponseBodyInterceptor $value;

  static const __$ResponseBodyInterceptor$new =
      $Function(_$ResponseBodyInterceptor$new);
  static $Value? _$ResponseBodyInterceptor$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $ResponseBodyInterceptor.wrap(ResponseBodyInterceptor());
  }

  @override
  Future<Response> intercept(Chain chain) => $value.intercept(chain);
}
