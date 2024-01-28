import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/adapter/client_adapter.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/call.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/interceptor/interceptor.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/proxy.dart';
import 'package:okhttp/adapter.dart';
import 'package:okhttp/interceptor.dart';

import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';

/// dart_eval bimodal wrapper for [OkHttpClient]
class $OkHttpClient implements OkHttpClient, $Instance {
  /// Configure the [$OkHttpClient] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'OkHttpClient.', __$OkHttpClient$new.call);
    runtime.registerBridgeFunc($type.spec!.library, 'OkHttpClient.Builder',
        __$static$method$Builder.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.okHttpClient);

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
          params: [],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'interceptors': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(OkHttpTypes.interceptor, []),
              ]),
              nullable: false),
          isStatic: false),
      'networkInterceptors': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(OkHttpTypes.interceptor, []),
              ]),
              nullable: false),
          isStatic: false),
      'closeResponseBody': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
      'retryOnConnectionFailure': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
      'callTimeoutMillis': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'connectTimeoutMillis': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'readTimeoutMillis': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'writeTimeoutMillis': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'pingIntervalMillis': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'minWebSocketMessageToCompress': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'persistentConnection': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
      'followRedirects': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
      'maxRedirects': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'adapter': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.clientAdapter, []),
              nullable: false),
          isStatic: false),
      'proxy': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.proxy, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'Builder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: true),
      'newCall': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.call, []),
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
      'newBuilder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'destroy': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [OkHttpClient] in an [$OkHttpClient]
  $OkHttpClient.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'interceptors':
        return $List.wrap(List.generate($value.interceptors.length, (index) {
          return $Interceptor.wrap($value.interceptors[index]);
        }));
      case 'networkInterceptors':
        return $List
            .wrap(List.generate($value.networkInterceptors.length, (index) {
          return $Interceptor.wrap($value.networkInterceptors[index]);
        }));
      case 'closeResponseBody':
        return $bool($value.closeResponseBody);
      case 'retryOnConnectionFailure':
        return $bool($value.retryOnConnectionFailure);
      case 'callTimeoutMillis':
        return $int($value.callTimeoutMillis);
      case 'connectTimeoutMillis':
        return $int($value.connectTimeoutMillis);
      case 'readTimeoutMillis':
        return $int($value.readTimeoutMillis);
      case 'writeTimeoutMillis':
        return $int($value.writeTimeoutMillis);
      case 'pingIntervalMillis':
        return $int($value.pingIntervalMillis);
      case 'minWebSocketMessageToCompress':
        return $int($value.minWebSocketMessageToCompress);
      case 'persistentConnection':
        return $bool($value.persistentConnection);
      case 'followRedirects':
        return $bool($value.followRedirects);
      case 'maxRedirects':
        return $int($value.maxRedirects);
      case 'proxy':
        return $Proxy.wrap($value.proxy);
      case 'adapter':
        return $ClientAdapter.wrap($value.adapter);
      case 'newCall':
        return __$newCall;
      case 'newBuilder':
        return __$newBuilder;
      case 'destroy':
        return __$destroy;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  OkHttpClient get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final OkHttpClient $value;

  @override
  List<Interceptor> get interceptors => $value.interceptors;
  @override
  List<Interceptor> get networkInterceptors => $value.networkInterceptors;
  @override
  bool get closeResponseBody => $value.closeResponseBody;
  @override
  bool get retryOnConnectionFailure => $value.retryOnConnectionFailure;
  @override
  int get callTimeoutMillis => $value.callTimeoutMillis;
  @override
  int get connectTimeoutMillis => $value.connectTimeoutMillis;
  @override
  int get readTimeoutMillis => $value.readTimeoutMillis;
  @override
  int get writeTimeoutMillis => $value.writeTimeoutMillis;
  @override
  int get pingIntervalMillis => $value.pingIntervalMillis;
  @override
  int get minWebSocketMessageToCompress => $value.minWebSocketMessageToCompress;
  @override
  bool get persistentConnection => $value.persistentConnection;
  @override
  bool get followRedirects => $value.followRedirects;
  @override
  int get maxRedirects => $value.maxRedirects;
  @override
  ClientAdapter get adapter => $value.adapter;

  @override
  Call newCall(Request request) => $value.newCall(request);
  static const __$newCall = $Function(_$newCall);
  static $Value? _$newCall(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClient;
    final request = args[0]?.$reified as Request;
    final $result = obj.newCall(request);
    return $Call.wrap($result);
  }

  @override
  OkHttpClientBuilder newBuilder() => $value.newBuilder();
  static const __$newBuilder = $Function(_$newBuilder);
  static $Value? _$newBuilder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClient;
    final $result = obj.newBuilder();
    return $OkHttpClientBuilder.wrap($result);
  }

  @override
  void destroy() => $value.destroy();
  static const __$destroy = $Function(_$destroy);
  static $Value? _$destroy(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClient;
    obj.destroy();
    return null;
  }

  static const __$static$method$Builder = $Function(_$static$method$Builder);
  static $Value? _$static$method$Builder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = OkHttpClient.Builder();
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$OkHttpClient$new = $Function(_$OkHttpClient$new);
  static $Value? _$OkHttpClient$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $OkHttpClient.wrap(OkHttpClient());
  }

  @override
  Proxy get proxy => $value.proxy;
}

/// dart_eval bimodal wrapper for [OkHttpClientBuilder]
class $OkHttpClientBuilder implements $Instance {
  /// Configure the [$OkHttpClientBuilder] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.okHttpClientBuilder);

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
                'client',
                BridgeTypeAnnotation(
                    BridgeTypeRef(OkHttpTypes.okHttpClient, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {
      'addInterceptor': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'interceptor',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.interceptor, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addNetworkInterceptor': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'interceptor',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.interceptor, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'retryOnConnectionFailure': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'retryOnConnectionFailure',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'closeResponseBody': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'closeResponseBody',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'callTimeoutMillis': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'callTimeoutMillis',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'connectTimeoutMillis': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'connectTimeoutMillis',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'readTimeoutMillis': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'readTimeoutMillis',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'writeTimeoutMillis': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'writeTimeoutMillis',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'pingIntervalMillis': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'pingIntervalMillis',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'minWebSocketMessageToCompress': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'minWebSocketMessageToCompress',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'persistentConnection': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'persistentConnection',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'followRedirects': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'followRedirects',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'maxRedirects': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'maxRedirects',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addAdapter': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'adapter',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.clientAdapter, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'proxy': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClientBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'proxy',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(OkHttpTypes.proxy, []),
                    nullable: true,
                  ),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'build': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.okHttpClient, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {
      'interceptors': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(OkHttpTypes.interceptor, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'networkInterceptors': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(OkHttpTypes.interceptor, []),
                ]),
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

  /// Wrap an [OkHttpClientBuilder] in an [$OkHttpClientBuilder]
  $OkHttpClientBuilder.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'interceptors':
        return $List.wrap(List.generate(($value.interceptors).length, (index) {
          return $Interceptor.wrap($value.interceptors[index]);
        }));
      case 'networkInterceptors':
        return $List
            .wrap(List.generate(($value.networkInterceptors).length, (index) {
          return $Interceptor.wrap($value.networkInterceptors[index]);
        }));
      case 'addInterceptor':
        return __$addInterceptor;
      case 'addNetworkInterceptor':
        return __$addNetworkInterceptor;
      case 'retryOnConnectionFailure':
        return __$retryOnConnectionFailure;
      case 'closeResponseBody':
        return __$closeResponseBody;
      case 'callTimeoutMillis':
        return __$callTimeoutMillis;
      case 'connectTimeoutMillis':
        return __$connectTimeoutMillis;
      case 'readTimeoutMillis':
        return __$readTimeoutMillis;
      case 'writeTimeoutMillis':
        return __$writeTimeoutMillis;
      case 'pingIntervalMillis':
        return __$pingIntervalMillis;
      case 'minWebSocketMessageToCompress':
        return __$minWebSocketMessageToCompress;
      case 'persistentConnection':
        return __$persistentConnection;
      case 'followRedirects':
        return __$followRedirects;
      case 'maxRedirects':
        return __$maxRedirects;
      case 'addAdapter':
        return __$addAdapter;
      case 'proxy':
        return __$proxy;
      case 'build':
        return __$build;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  OkHttpClientBuilder get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final OkHttpClientBuilder $value;

  static const __$addInterceptor = $Function(_$addInterceptor);
  static $Value? _$addInterceptor(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final interceptor = args[0]?.$reified as Interceptor;
    final $result = obj.addInterceptor(interceptor);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$addNetworkInterceptor = $Function(_$addNetworkInterceptor);
  static $Value? _$addNetworkInterceptor(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final interceptor = args[0]?.$reified as Interceptor;
    final $result = obj.addNetworkInterceptor(interceptor);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$retryOnConnectionFailure =
      $Function(_$retryOnConnectionFailure);
  static $Value? _$retryOnConnectionFailure(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final retryOnConnectionFailure = args[0]?.$reified as bool;
    final $result = obj.retryOnConnectionFailure(retryOnConnectionFailure);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$closeResponseBody = $Function(_$closeResponseBody);
  static $Value? _$closeResponseBody(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final closeResponseBody = args[0]?.$reified as bool;
    final $result = obj.closeResponseBody(closeResponseBody);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$callTimeoutMillis = $Function(_$callTimeoutMillis);
  static $Value? _$callTimeoutMillis(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final callTimeoutMillis = args[0]?.$reified as int;
    final $result = obj.callTimeoutMillis(
      callTimeoutMillis,
    );
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$connectTimeoutMillis = $Function(_$connectTimeoutMillis);
  static $Value? _$connectTimeoutMillis(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final connectTimeoutMillis = args[0]?.$reified as int;
    final $result = obj.connectTimeoutMillis(connectTimeoutMillis);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$readTimeoutMillis = $Function(_$readTimeoutMillis);
  static $Value? _$readTimeoutMillis(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final readTimeoutMillis = args[0]?.$reified as int;
    final $result = obj.readTimeoutMillis(readTimeoutMillis);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$writeTimeoutMillis = $Function(_$writeTimeoutMillis);
  static $Value? _$writeTimeoutMillis(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final writeTimeoutMillis = args[0]?.$reified as int;
    final $result = obj.writeTimeoutMillis(writeTimeoutMillis);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$pingIntervalMillis = $Function(_$pingIntervalMillis);
  static $Value? _$pingIntervalMillis(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final pingIntervalMillis = args[0]?.$reified as int;
    final $result = obj.pingIntervalMillis(pingIntervalMillis);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$minWebSocketMessageToCompress =
      $Function(_$minWebSocketMessageToCompress);
  static $Value? _$minWebSocketMessageToCompress(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final minWebSocketMessageToCompress = args[0]?.$reified as int;
    final $result =
        obj.minWebSocketMessageToCompress(minWebSocketMessageToCompress);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$persistentConnection = $Function(_$persistentConnection);
  static $Value? _$persistentConnection(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final persistentConnection = args[0]?.$reified as bool;
    final $result = obj.persistentConnection(persistentConnection);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$followRedirects = $Function(_$followRedirects);
  static $Value? _$followRedirects(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final followRedirects = args[0]?.$reified as bool;
    final $result = obj.followRedirects(followRedirects);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$maxRedirects = $Function(_$maxRedirects);
  static $Value? _$maxRedirects(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final maxRedirects = args[0]?.$reified as int;
    final $result = obj.maxRedirects(maxRedirects);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$addAdapter = $Function(_$addAdapter);
  static $Value? _$addAdapter(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final adapter = args[0]?.$reified as ClientAdapter;
    final $result = obj.addAdapter(adapter);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$proxy = $Function(_$proxy);
  static $Value? _$proxy(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final proxy = args[0]?.$value as Proxy?;
    final $result = obj.proxy(proxy);
    return $OkHttpClientBuilder.wrap($result);
  }

  static const __$build = $Function(_$build);
  static $Value? _$build(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as OkHttpClientBuilder;
    final $result = obj.build();
    return $OkHttpClient.wrap($result);
  }
}
