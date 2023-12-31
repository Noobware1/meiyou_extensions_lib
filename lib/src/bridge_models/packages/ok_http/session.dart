import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/types.dart';
import 'package:ok_http_dart/http.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:ok_http_dart/ok_http_dart.dart';

class $OkHttpClientSession implements OkHttpClientSession, $Instance {
  $OkHttpClientSession.wrap(this.$value);

  late final _superclass = $Object($value);

  static final dartSource = DartSource(OkHttpDartTypes.session.library, '''
  library session;

  export 'src/session.dart';
''');

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        OkHttpDartTypes.sessionSrc, 'OkHttpClientSession.', $new);
  }

  static const $type = BridgeTypeRef(
      BridgeTypeSpec(OkHttpDartTypes.sessionSrc, 'OkHttpClientSession'));

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
  ];

  static const $withBodyMethod = BridgeMethodDef(
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(BridgeTypeRef(
          CoreTypes.future, [BridgeTypeRef(OkHttpDartTypes.OkHttpResponse)])),
      params: [$urlParam],
      namedParams: $withBodyParams,
    ),
    isStatic: false,
  );

  static const $withoutBodyMethod = BridgeMethodDef(
    BridgeFunctionDef(
        returns: BridgeTypeAnnotation(BridgeTypeRef(
            CoreTypes.future, [BridgeTypeRef(OkHttpDartTypes.OkHttpResponse)])),
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
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.future,
                [BridgeTypeRef(OkHttpDartTypes.OkHttpResponse)])),
            params: [
              BridgeParameter(
                  'request',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpDartTypes.OkHttpRequest)),
                  false),
            ],
          ),
        ),
        'close': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ),
            isStatic: false)
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
      case 'close':
        return const $Function($close);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  OkHttpClientSession get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) =>
      _superclass.$setProperty(runtime, identifier, value);

  @override
  final OkHttpClientSession $value;

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $OkHttpClientSession.wrap(OkHttpClientSession());
  }

  @override
  void close() {
    // TODO: implement close
  }

  static $Value? $close(Runtime runtime, $Value? target, List<$Value?> args) {
    (target!.$value as OkHttpClientSession).close();
    return null;
  }

  static $Value? $delete(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClientSession;
    return $Future.wrap(
      client
          .delete(
            args[0]?.$value,
            headers: args[1]?.$reified,
            body: args[2]?.$reified,
            cookie: args[3]?.$value,
            referer: args[4]?.$value,
            params: args[5]?.$reified,
            followRedirects: args[6]?.$value,
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
  }) =>
      $value.delete(
        url,
        headers: headers,
        body: body,
        followRedirects: followRedirects,
        referer: referer,
        cookie: cookie,
        params: params,
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
    final client = target!.$value as OkHttpClientSession;
    return $Future.wrap(client
        .get(
          args[0]?.$value,
          headers: args[1]?.$reified,
          followRedirects: args[2]?.$value,
          referer: args[3]?.$value,
          cookie: args[4]?.$value,
          params: args[5]?.$reified,
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
  }) =>
      $value.get(
        url,
        headers: headers,
        followRedirects: followRedirects,
        referer: referer,
        cookie: cookie,
        params: params,
      );

  static $Value? $head(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClientSession;
    return $Future.wrap(client
        .head(
          args[0]?.$value,
          headers: args[1]?.$reified,
          followRedirects: args[2]?.$value,
          referer: args[3]?.$value,
          cookie: args[4]?.$value,
          params: args[5]?.$reified,
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
  }) =>
      $value.head(
        url,
        headers: headers,
        cookie: cookie,
        followRedirects: followRedirects,
        referer: referer,
        params: params,
      );

  static $Value? $patch(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClientSession;
    return $Future.wrap(client
        .patch(
          args[0]?.$value,
          headers: args[1]?.$reified,
          body: args[2]?.$reified,
          followRedirects: args[3]?.$value,
          referer: args[4]?.$value,
          cookie: args[5]?.$value,
          params: args[6]?.$reified,
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
      );

  static $Value? $post(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClientSession;
    return $Future.wrap(client
        .post(
          args[0]?.$value,
          headers: args[1]?.$reified,
          body: args[2]?.$reified,
          followRedirects: args[3]?.$value,
          referer: args[4]?.$value,
          cookie: args[5]?.$value,
          params: args[6]?.$reified,
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
  }) =>
      $value.post(
        url,
        headers: headers,
        body: body,
        cookie: cookie,
        followRedirects: followRedirects,
        referer: referer,
        params: params,
      );

  static $Value? $put(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClientSession;
    return $Future.wrap(client
        .put(
          args[0]?.$value,
          headers: args[1]?.$reified,
          body: args[2]?.$reified,
          followRedirects: args[3]?.$value,
          referer: args[4]?.$value,
          cookie: args[5]?.$value,
          params: args[6]?.$reified,
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
  }) =>
      $value.put(
        url,
        headers: headers,
        body: body,
        cookie: cookie,
        followRedirects: followRedirects,
        referer: referer,
        params: params,
      );

  static $Value? $request(Runtime runtime, $Value? target, List<$Value?> args) {
    final client = target!.$value as OkHttpClientSession;
    return $Future.wrap(client
        .request(args[0]?.$value)
        .then((value) => $OkHttpResponse.wrap(value)));
  }

  @override
  Future<OkHttpResponse> request(OKHttpRequest request) =>
      $value.request(request);

  @override
  Future<StreamedResponse> send(OKHttpRequest request) => $value.send(request);
}
