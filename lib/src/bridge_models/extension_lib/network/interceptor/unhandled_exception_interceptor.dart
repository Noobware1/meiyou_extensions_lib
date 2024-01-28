import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/interceptor/interceptor.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';

import 'package:meiyou_extensions_lib/src/network/interceptor/unhandled_exception_interceptor.dart';
import 'package:okhttp/interceptor.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [UnHandledExceptionInterceptor]
class $UnHandledExceptionInterceptor
    implements UnHandledExceptionInterceptor, $Instance {
  /// Configure the [$UnHandledExceptionInterceptor] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library,
        'UnHandledExceptionInterceptor.',
        __$UnHandledExceptionInterceptor$new.call);
  }

  late final $Instance _superclass = $Interceptor.wrap($value);

  static const $type =
      BridgeTypeRef(ExtensionLibTypes.unHandledExceptionInterceptor);

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

  /// Wrap an [UnHandledExceptionInterceptor] in an [$UnHandledExceptionInterceptor]
  $UnHandledExceptionInterceptor.wrap(this.$value);

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
  UnHandledExceptionInterceptor get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final UnHandledExceptionInterceptor $value;

  @override
  Future<Response> intercept(Chain chain) => $value.intercept(chain);

  static const __$intercept = $Function(_$intercept);
  static $Value? _$intercept(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as UnHandledExceptionInterceptor;
    final chain = args[0]?.$value as Chain;
    final $result = obj.intercept(
      chain,
    );
    return $Future.wrap($result.then((value) => $Response.wrap(value)));
  }

  static const __$UnHandledExceptionInterceptor$new =
      $Function(_$UnHandledExceptionInterceptor$new);
  static $Value? _$UnHandledExceptionInterceptor$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $UnHandledExceptionInterceptor.wrap(UnHandledExceptionInterceptor());
  }
}
