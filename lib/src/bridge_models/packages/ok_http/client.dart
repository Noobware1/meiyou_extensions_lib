import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/base_request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/session.dart';
import 'package:meiyou_extensions_lib/src/extenstions/value.dart';
import 'package:ok_http_dart/ok_http_dart.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/types.dart';
import 'package:ok_http_dart/http.dart';

class $OkHttpClient implements OkHttpClient, $Instance {
  $OkHttpClient.wrap(this.$value);

  late final _superclass = $Object($value);

  static final dartSource = DartSource(OkHttpDartTypes.OkHttpClient.library, '''
  library client;

  export 'src/client.dart';
''');

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        OkHttpDartTypes.OkHttpClient.library, 'OkHttpClient.', $new);
  }

  static const $type = BridgeTypeRef(OkHttpDartTypes.OkHttpClient);

  static const $urlParam = BridgeParameter(
      'url', BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false);

  static const $withoutBodyParams = <BridgeParameter>[
    BridgeParameter(
        'headers',
        BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.map, [
              BridgeTypeRef(CoreTypes.string),
              BridgeTypeRef(CoreTypes.string),
            ]),
            nullable: true),
        true),
    BridgeParameter(
        'followRedirects',
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool), nullable: true),
        true),
    BridgeParameter(
        'referer',
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool), nullable: true),
        true),
    BridgeParameter(
        'cookie',
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool), nullable: true),
        true),
    BridgeParameter(
        'params',
        BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.map, [
              BridgeTypeRef(CoreTypes.string),
              BridgeTypeRef(CoreTypes.dynamic),
            ]),
            nullable: true),
        true),
    BridgeParameter(
        'verify',
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool), nullable: true),
        true),
    BridgeParameter(
        'retry',
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool), nullable: true),
        true),
  ];

  static const $withBodyParams = <BridgeParameter>[
    BridgeParameter(
        'headers',
        BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.map, [
              BridgeTypeRef(CoreTypes.string),
              BridgeTypeRef(CoreTypes.string),
            ]),
            nullable: true),
        true),
    BridgeParameter(
        'body',
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.object), nullable: true),
        true),
    BridgeParameter(
        'followRedirects',
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool), nullable: true),
        true),
    BridgeParameter(
        'referer',
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool), nullable: true),
        true),
    BridgeParameter(
        'cookie',
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool), nullable: true),
        true),
    BridgeParameter(
        'params',
        BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.map, [
              BridgeTypeRef(CoreTypes.string),
              BridgeTypeRef(CoreTypes.dynamic),
            ]),
            nullable: true),
        true),
    BridgeParameter(
        'verify',
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool), nullable: true),
        true),
    BridgeParameter(
        'retry',
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool), nullable: true),
        true),
  ];

  static const $withBodyMethod = BridgeMethodDef(
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.future, [$OkHttpResponse.$type])),
      params: [$urlParam],
      namedParams: $withBodyParams,
    ),
    isStatic: false,
  );

  static const $withoutBodyMethod = BridgeMethodDef(
    BridgeFunctionDef(
        returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [$OkHttpResponse.$type])),
        params: [$urlParam],
        namedParams: $withoutBodyParams),
    isStatic: false,
  );

  static const $declaration = BridgeClassDef(
      BridgeClassType(
        $type,
      ),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
          ),
        ),
      },
      methods: {
        'delete': $withBodyMethod,
        'get': $withoutBodyMethod,
        'head': $withoutBodyMethod,
        'patch': $withBodyMethod,
        'post': $withBodyMethod,
        'put': $withBodyMethod,
        'request': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [$OkHttpResponse.$type])),
            params: [
              BridgeParameter(
                  'request', BridgeTypeAnnotation($BaseRequest.$type), false),
            ],
          ),
        ),
        'session': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($OkHttpClientSession.$type),
          ),
        ),
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'delete':
        return const $Function($delete);
      case 'get':
        return const $Function($get);
      case 'head':
        return const $Function($head);
      case 'patch':
        return const $Function($patch);
      case 'post':
        return const $Function($post);
      case 'put':
        return const $Function($put);
      case 'request':
        return const $Function($request);
      case 'session':
        return const $Function($session);
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
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final OkHttpClient $value;

  @override
  Client createClient([bool verify = true, bool retry = false]) =>
      $value.createClient(verify, retry);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $OkHttpClient.wrap(OkHttpClient());
  }

  static Map<String, String>? convertHeaders($Value? headers) {
    return headers.unwrapMap<String, String>();
  }

  static Map<String, dynamic>? convertParams($Value? params) {
    return params.unwrapMap<String, dynamic>();
  }

  static Object? convertBody($Value? body) {
    final value = body?.$value;
    if (value is String) return value;
    if (value is List) return value;
    if (value is Map) return value.cast<String, String>();
    return null;
  }

  static $Value? $delete(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClient;
    return $Future.wrap(
      client
          .delete(
            args[0]?.$value,
            headers: convertHeaders(args[1]),
            body: convertBody(args[2]),
            cookie: args[3]?.$value,
            referer: args[4]?.$value,
            params: convertParams(args[5]),
            followRedirects: args[6]?.$value,
            verify: args[7]?.$value,
            retry: args[8]?.$value,
          )
          .then((value) => $OkHttpResponse.wrap(value)),
    );
  }

  @override
  Future<OkHttpResponse> delete(
    String url, {
    Map<String, String>? headers,
    Object? body,
    bool? followRedirects,
    String? referer,
    String? cookie,
    Map<String, dynamic>? params,
    bool? verify,
    bool? retry,
  }) =>
      $value.delete(
        url,
        headers: headers,
        body: body,
        followRedirects: followRedirects,
        referer: referer,
        cookie: cookie,
        params: params,
        verify: verify,
        retry: retry,
      );

  @override
  Future<OkHttpResponse> download(
      {String? method,
      String? url,
      required savePath,
      Duration? timeout,
      String? referer,
      void Function(int recevied, int total)? onReceiveProgress,
      Map<String, dynamic>? params,
      bool deleteOnError = true,
      Map<String, String>? headers,
      Object? body,
      OKHttpRequest? request}) {
    // TODO: implement download
    throw UnimplementedError();
  }

  static $Value? $get(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClient;
    return $Future.wrap(client
        .get(
          args[0]?.$value,
          headers: convertHeaders(args[1]),
          followRedirects: args[2]?.$value,
          referer: args[3]?.$value,
          cookie: args[4]?.$value,
          params: convertParams(args[5]),
          verify: args[6]?.$value,
          retry: args[7]?.$value,
        )
        .then((value) => $OkHttpResponse.wrap(value)));
  }

  @override
  Future<OkHttpResponse> get(
    String url, {
    Map<String, String>? headers,
    bool? followRedirects,
    String? referer,
    String? cookie,
    Map<String, dynamic>? params,
    bool? verify,
    bool? retry,
  }) =>
      $value.get(
        url,
        headers: headers,
        followRedirects: followRedirects,
        referer: referer,
        cookie: cookie,
        params: params,
        verify: verify,
        retry: retry,
      );

  static $Value? $head(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClient;
    return $Future.wrap(client
        .head(
          args[0]?.$value,
          headers: convertHeaders(args[1]),
          followRedirects: args[2]?.$value,
          referer: args[3]?.$value,
          cookie: args[4]?.$value,
          params: convertParams(args[5]),
          verify: args[6]?.$value,
          retry: args[7]?.$value,
        )
        .then((value) => $OkHttpResponse.wrap(value)));
  }

  @override
  Future<OkHttpResponse> head(
    String url, {
    Map<String, String>? headers,
    String? cookie,
    bool? followRedirects,
    String? referer,
    Map<String, dynamic>? params,
    bool? verify,
    bool? retry,
  }) =>
      $value.head(
        url,
        headers: headers,
        cookie: cookie,
        followRedirects: followRedirects,
        referer: referer,
        params: params,
        verify: verify,
        retry: retry,
      );

  static $Value? $patch(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClient;
    return $Future.wrap(client
        .patch(
          args[0]?.$value,
          headers: convertHeaders(args[1]),
          body: convertBody(args[2]),
          cookie: args[3]?.$value,
          referer: args[4]?.$value,
          params: convertParams(args[5]),
          followRedirects: args[6]?.$value,
          verify: args[7]?.$value,
          retry: args[8]?.$value,
        )
        .then((value) => $OkHttpResponse.wrap(value)));
  }

  @override
  Future<OkHttpResponse> patch(String url,
          {Map<String, String>? headers,
          Object? body,
          bool? followRedirects,
          String? referer,
          String? cookie,
          Map<String, dynamic>? params,
          bool? verify,
          bool? retry}) =>
      $value.patch(
        url,
        headers: headers,
        body: body,
        followRedirects: followRedirects,
        referer: referer,
        cookie: cookie,
        params: params,
        verify: verify,
        retry: retry,
      );

  static $Value? $post(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClient;
    return $Future.wrap(client
        .post(
          args[0]?.$value,
          headers: convertHeaders(args[1]),
          body: convertBody(args[2]),
          cookie: args[3]?.$value,
          referer: args[4]?.$value,
          params: convertParams(args[5]),
          followRedirects: args[6]?.$value,
          verify: args[7]?.$value,
          retry: args[8]?.$value,
        )
        .then((value) => $OkHttpResponse.wrap(value)));
  }

  @override
  Future<OkHttpResponse> post(
    String url, {
    Map<String, String>? headers,
    Object? body,
    String? cookie,
    bool? followRedirects,
    String? referer,
    Map<String, dynamic>? params,
    bool? verify,
    bool? retry,
  }) =>
      $value.post(
        url,
        headers: headers,
        body: body,
        cookie: cookie,
        followRedirects: followRedirects,
        referer: referer,
        params: params,
        verify: verify,
        retry: retry,
      );

  static $Value? $put(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClient;
    return $Future.wrap(client
        .put(
          args[0]?.$value,
          headers: convertHeaders(args[1]),
          body: convertBody(args[2]),
          cookie: args[3]?.$value,
          referer: args[4]?.$value,
          params: convertParams(args[5]),
          followRedirects: args[6]?.$value,
          verify: args[7]?.$value,
          retry: args[8]?.$value,
        )
        .then((value) => $OkHttpResponse.wrap(value)));
  }

  @override
  Future<OkHttpResponse> put(
    String url, {
    Map<String, String>? headers,
    Object? body,
    String? cookie,
    bool? followRedirects,
    String? referer,
    Map<String, dynamic>? params,
    bool? verify,
    bool? retry,
  }) =>
      $value.put(
        url,
        headers: headers,
        body: body,
        cookie: cookie,
        followRedirects: followRedirects,
        referer: referer,
        params: params,
        verify: verify,
        retry: retry,
      );

  static $Value? $request(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClient;
    return $Future.wrap(client
        .request(args[0]?.$value)
        .then((value) => $OkHttpResponse.wrap(value)));
  }

  @override
  Future<OkHttpResponse> request(OKHttpRequest request) =>
      $value.request(request);

  @override
  Future<StreamedResponse> send(Client client, OKHttpRequest request) =>
      $value.send(client, request);

  @override
  OkHttpClientSession session() {
    // TODO: implement session
    throw UnimplementedError();
  }

  static $Value? $session(Runtime runtime, $Value? target, List<$Value?> args) {
    return $OkHttpClientSession
        .wrap((target!.$value as OkHttpClient).session());
  }
}
