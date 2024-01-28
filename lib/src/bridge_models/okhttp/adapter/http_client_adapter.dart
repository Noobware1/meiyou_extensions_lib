import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/adapter/client_adapter.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

import 'package:okhttp/adapter.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [HttpClientAdapter]
class $HttpClientAdapter implements HttpClientAdapter, $Instance {
  /// Configure the [$HttpClientAdapter] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'HttpClientAdapter.',
        __$HttpClientAdapter$new.call);
  }

  late final $Instance _superclass = $ClientAdapter.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.httpClientAdapter);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [
        BridgeTypeRef(OkHttpTypes.clientAdapter, []),
      ],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'followRedirects',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                false),
            BridgeParameter(
                'maxRedirects',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: false),
                false),
            BridgeParameter(
                'persistentConnection',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                false)
          ],
        ),
        isFactory: false,
      )
    },
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

  /// Wrap an [HttpClientAdapter] in an [$HttpClientAdapter]
  $HttpClientAdapter.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'addProxy':
        return __$addProxy;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  HttpClientAdapter get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final HttpClientAdapter $value;

  @override
  void close({bool force = false}) => $value.close(force: force);

  static const __$HttpClientAdapter$new = $Function(_$HttpClientAdapter$new);
  static $Value? _$HttpClientAdapter$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final followRedirects = args[0]?.$reified as bool;
    final maxRedirects = args[1]?.$reified as int;
    final persistentConnection = args[2]?.$reified as bool;
    return $HttpClientAdapter.wrap(HttpClientAdapter(
      followRedirects: followRedirects,
      maxRedirects: maxRedirects,
      persistentConnection: persistentConnection,
    ));
  }

  @override
  Future<Response> newCall(Request request) => $value.newCall(request);

  @override
  void addProxy(Proxy proxy) => $value.addProxy(proxy);
  static const __$addProxy = $Function(_$addProxy);
  static $Value? _$addProxy(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final adapter = target?.$value as HttpClientAdapter;
    final proxy = args[0]?.$value as Proxy;
    adapter.addProxy(proxy);
    return null;
  }
}
