import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/interceptor/interceptor.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/network/interceptor/interceptor_impl.dart';
import 'package:okhttp/interceptor.dart';
import 'package:okhttp/response.dart';

class $InterceptorImpl extends InterceptorImpl with $Bridge<InterceptorImpl> {
  /// Configure the [$InterceptorImpl] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      $type.spec!.library,
      'InterceptorImpl.',
      __$InterceptorImpl$new.call,
      isBridge: true,
    );
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.interceptorImpl);

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
          params: [],
          namedParams: [],
        ),
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
    bridge: true,
    wrap: false,
  );

  @override
  $Value? $bridgeGet(String identifier) {
    throw UnimplementedError();
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    // TODO: implement $bridgeSet
  }

  @override
  Future<Response> intercept(Chain chain) {
    return ($_invoke('intercept', [$Chain.wrap(chain)]) as Future)
        .then((value) => value as Response);
  }

  static const __$InterceptorImpl$new = $Function(_$InterceptorImpl$new);
  static $Value? _$InterceptorImpl$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $InterceptorImpl();
  }
}
