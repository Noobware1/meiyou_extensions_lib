import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request_body.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';

/// dart_eval bimodal wrapper for [Request]
class $Request implements Request, $Instance {
  /// Configure the [$Request] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Request.Builder', __$static$method$Builder.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.request);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {},
    fields: {
      'url': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, []),
              nullable: false),
          isStatic: false),
      'method': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'headers': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
              nullable: false),
          isStatic: false),
      'body': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.requestBody, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'Builder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: true),
      'newBuilder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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

  /// Wrap an [Request] in an [$Request]
  $Request.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'url':
        return $Uri.wrap($value.url);
      case 'method':
        return $String($value.method);
      case 'headers':
        return $Headers.wrap($value.headers);
      case 'body':
        return $value.body == null ? $null() : $RequestBody.wrap($value.body!);

      case 'newBuilder':
        return __$newBuilder;

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Request get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Request $value;

  @override
  Uri get url => $value.url;
  @override
  String get method => $value.method;
  @override
  Headers get headers => $value.headers;
  @override
  RequestBody? get body => $value.body;

  @override
  RequestBuilder newBuilder() => $value.newBuilder();
  static const __$newBuilder = $Function(_$newBuilder);
  static $Value? _$newBuilder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Request;
    final $result = obj.newBuilder();
    return $RequestBuilder.wrap($result);
  }

  @override
  String toString() => $value.toString();
 

  static const __$static$method$Builder = $Function(_$static$method$Builder);
  static $Value? _$static$method$Builder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = Request.Builder();
    return $RequestBuilder.wrap($result);
  }
}

/// dart_eval bimodal wrapper for [RequestBuilder]
class $RequestBuilder implements $Instance {
  /// Configure the [$RequestBuilder] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.requestBuilder);

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
                'request',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.request, []),
                    nullable: true),
                true)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {
      'url': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'header': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addHeader': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'removeHeader': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'headers': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'headers',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'get': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'head': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'post': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'body',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.requestBody, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'delete': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'body',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.requestBody, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'put': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'body',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.requestBody, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'patch': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'body',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.requestBody, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'method': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'method',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'body',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.requestBody, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addQueryParameter': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'key',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addQueryParameterAll': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.requestBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'parameters',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.map, [
                        BridgeTypeRef(CoreTypes.string, []),
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'build': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
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

  /// Wrap an [RequestBuilder] in an [$RequestBuilder]
  $RequestBuilder.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'url':
        return __$url;
      case 'header':
        return __$header;
      case 'addHeader':
        return __$addHeader;
      case 'removeHeader':
        return __$removeHeader;
      case 'headers':
        return __$headers;
      case 'get':
        return __$get;
      case 'head':
        return __$head;
      case 'post':
        return __$post;
      case 'delete':
        return __$delete;
      case 'put':
        return __$put;
      case 'patch':
        return __$patch;
      case 'method':
        return __$method;
      case 'addQueryParameter':
        return __$addQueryParameter;
      case 'addQueryParameterAll':
        return __$addQueryParameterAll;
      case 'build':
        return __$build;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  RequestBuilder get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final RequestBuilder $value;

  static const __$url = $Function(_$url);
  static $Value? _$url(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final url = args[0]?.$reified as dynamic;
    final $result = obj.url(url);
    return $RequestBuilder.wrap($result);
  }

  static const __$header = $Function(_$header);
  static $Value? _$header(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final name = args[0]?.$reified as String;
    final value = args[1]?.$reified as String;
    final $result = obj.header(name, value);
    return $RequestBuilder.wrap($result);
  }

  static const __$addHeader = $Function(_$addHeader);
  static $Value? _$addHeader(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final name = args[0]?.$reified as String;
    final value = args[1]?.$reified as String;
    final $result = obj.addHeader(name, value);
    return $RequestBuilder.wrap($result);
  }

  static const __$removeHeader = $Function(_$removeHeader);
  static $Value? _$removeHeader(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final name = args[0]?.$reified as String;
    final $result = obj.removeHeader(name);
    return $RequestBuilder.wrap($result);
  }

  static const __$headers = $Function(_$headers);
  static $Value? _$headers(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final headers = args[0]?.$reified as Headers;
    final $result = obj.headers(headers);
    return $RequestBuilder.wrap($result);
  }

  static const __$get = $Function(_$get);
  static $Value? _$get(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final $result = obj.get();
    return $RequestBuilder.wrap($result);
  }

  static const __$head = $Function(_$head);
  static $Value? _$head(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final $result = obj.head();
    return $RequestBuilder.wrap($result);
  }

  static const __$post = $Function(_$post);
  static $Value? _$post(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final body = args[0]?.$reified as RequestBody?;
    final $result = obj.post(body);
    return $RequestBuilder.wrap($result);
  }

  static const __$delete = $Function(_$delete);
  static $Value? _$delete(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final body = args[0]?.$reified as RequestBody?;
    final $result = obj.delete(body);
    return $RequestBuilder.wrap($result);
  }

  static const __$put = $Function(_$put);
  static $Value? _$put(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final body = args[0]?.$reified as RequestBody?;
    final $result = obj.put(body);
    return $RequestBuilder.wrap($result);
  }

  static const __$patch = $Function(_$patch);
  static $Value? _$patch(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final body = args[0]?.$reified as RequestBody?;
    final $result = obj.patch(
      body,
    );
    return $RequestBuilder.wrap($result);
  }

  static const __$method = $Function(_$method);
  static $Value? _$method(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final method = args[0]?.$reified as String;
    final body = args[1]?.$reified as RequestBody?;
    final $result = obj.method(method, body);
    return $RequestBuilder.wrap($result);
  }

  static const __$addQueryParameter = $Function(_$addQueryParameter);
  static $Value? _$addQueryParameter(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final key = args[0]?.$reified as String;
    final value = args[1]?.$reified as String;
    final $result = obj.addQueryParameter(key, value);
    return $RequestBuilder.wrap($result);
  }

  static const __$addQueryParameterAll = $Function(_$addQueryParameterAll);
  static $Value? _$addQueryParameterAll(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final parameters = args[0]?.$reified.cast<String, String>();
    final $result = obj.addQueryParameterAll(parameters);
    return $RequestBuilder.wrap($result);
  }

  static const __$build = $Function(_$build);
  static $Value? _$build(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBuilder;
    final $result = obj.build();
    return $Request.wrap($result);
  }
}
