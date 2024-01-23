import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/okhttp/interceptor/interceptor.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/okhttp/plugin.dart';
import 'dart:io';

import 'package:okhttp/interceptor.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [ConnectInterceptor]
class $ConnectInterceptor implements ConnectInterceptor, $Instance {
  /// Configure the [$ConnectInterceptor] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'ConnectInterceptor.',
        __$ConnectInterceptor$new.call);
  }

  late final $Instance _superclass = $Interceptor.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.connectInterceptor);

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

  /// Wrap an [ConnectInterceptor] in an [$ConnectInterceptor]
  $ConnectInterceptor.wrap(this.$value);

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
  ConnectInterceptor get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ConnectInterceptor $value;

  @override
  Future<Response> intercept(Chain chain) => $value.intercept(chain);

  static const __$ConnectInterceptor$new = $Function(_$ConnectInterceptor$new);
  static $Value? _$ConnectInterceptor$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $ConnectInterceptor.wrap(ConnectInterceptor());
  }
}
