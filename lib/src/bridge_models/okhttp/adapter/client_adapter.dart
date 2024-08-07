import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:okhttp/adapter.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [ClientAdapter]
class $ClientAdapter implements ClientAdapter, $Instance {
  /// Configure the [$ClientAdapter] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.clientAdapter);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {},
    fields: {},
    methods: {
      'newCall': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(OkHttpTypes.response, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'client',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.okHttpClient, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'request',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.request, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'close': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'force',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  true)
            ],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [ClientAdapter] in an [$ClientAdapter]
  $ClientAdapter.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'newCall':
        return __$newCall;
      case 'close':
        return __$close;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ClientAdapter get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ClientAdapter $value;

  @override
  Future<Response> newCall(OkHttpClient client, Request request) =>
      $value.newCall(client, request);
  static const __$newCall = $Function(_$newCall);
  static $Value? _$newCall(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ClientAdapter;
    final client = args[0]?.$value as OkHttpClient;
    final request = args[0]?.$value as Request;
    final $result = obj.newCall(client, request);
    return $Future.wrap($result.then((value) => $Response.wrap(value)));
  }

  @override
  void close({bool force = false}) => $value.close(
        force: force,
      );
  static const __$close = $Function(_$close);
  static $Value? _$close(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ClientAdapter;
    final force = args[0]?.$reified as bool? ?? false;
    obj.close(force: force);
    return null;
  }
}
