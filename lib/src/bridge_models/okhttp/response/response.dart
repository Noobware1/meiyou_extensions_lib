import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response_body.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';

import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [Response]
class $Response implements Response, $Instance {
  /// Configure the [$Response] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Response.Builder', __$static$method$Builder.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.response);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {},
    fields: {
      'request': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.request, []),
              nullable: false),
          isStatic: false),
      'message': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'statusCode': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'headers': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
              nullable: false),
          isStatic: false),
      'body': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.responseBody, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'Builder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.responseBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: true),
      'newBuilder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.responseBuilder, []),
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

  /// Wrap an [Response] in an [$Response]
  $Response.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'request':
        return $Request.wrap($value.request);
      case 'message':
        return $String($value.message);
      case 'statusCode':
        return $int($value.statusCode);
      case 'headers':
        return $Headers.wrap($value.headers);
      case 'body':
        return $ResponseBody.wrap($value.body);

      case 'newBuilder':
        return __$newBuilder;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Response get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Response $value;

  @override
  Request get request => $value.request;
  @override
  String get message => $value.message;
  @override
  int get statusCode => $value.statusCode;
  @override
  Headers get headers => $value.headers;
  @override
  ResponseBody get body => $value.body;

  @override
  ResponseBuilder newBuilder() => $value.newBuilder();
  static const __$newBuilder = $Function(_$newBuilder);
  static $Value? _$newBuilder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Response;
    final $result = obj.newBuilder();
    return $ResponseBuilder.wrap($result);
  }

  static const __$static$method$Builder = $Function(_$static$method$Builder);
  static $Value? _$static$method$Builder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = Response.Builder();
    return $ResponseBuilder.wrap($result);
  }
}

/// dart_eval bimodal wrapper for [ResponseBuilder]
class $ResponseBuilder implements $Instance {
  /// Configure the [$ResponseBuilder] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.responseBuilder);

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
                'response',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.response, []),
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
      'header': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.responseBuilder, []),
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
                BridgeTypeRef(OkHttpTypes.responseBuilder, []),
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
                BridgeTypeRef(OkHttpTypes.responseBuilder, []),
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
      'statusCode': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.responseBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'statusCode',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'headers': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.responseBuilder, []),
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
      'request': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.responseBuilder, []),
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
      'body': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.responseBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'body',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.responseBody, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'message': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.responseBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'message',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'build': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.response, []),
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

  /// Wrap an [ResponseBuilder] in an [$ResponseBuilder]
  $ResponseBuilder.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'header':
        return __$header;
      case 'addHeader':
        return __$addHeader;
      case 'removeHeader':
        return __$removeHeader;
      case 'statusCode':
        return __$statusCode;
      case 'headers':
        return __$headers;
      case 'request':
        return __$request;
      case 'body':
        return __$body;
      case 'message':
        return __$message;
      case 'build':
        return __$build;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ResponseBuilder get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ResponseBuilder $value;

  static const __$header = $Function(_$header);
  static $Value? _$header(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ResponseBuilder;
    final name = args[0]?.$reified as String;
    final value = args[1]?.$reified as String;
    final $result = obj.header(name, value);
    return $ResponseBuilder.wrap($result);
  }

  static const __$addHeader = $Function(_$addHeader);
  static $Value? _$addHeader(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ResponseBuilder;
    final name = args[0]?.$reified as String;
    final value = args[1]?.$reified as String;
    final $result = obj.addHeader(name, value);
    return $ResponseBuilder.wrap($result);
  }

  static const __$removeHeader = $Function(_$removeHeader);
  static $Value? _$removeHeader(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ResponseBuilder;
    final name = args[0]?.$reified as String;
    final $result = obj.removeHeader(name);
    return $ResponseBuilder.wrap($result);
  }

  static const __$statusCode = $Function(_$statusCode);
  static $Value? _$statusCode(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ResponseBuilder;
    final statusCode = args[0]?.$reified as int;
    final $result = obj.statusCode(statusCode);
    return $ResponseBuilder.wrap($result);
  }

  static const __$headers = $Function(_$headers);
  static $Value? _$headers(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ResponseBuilder;
    final headers = args[0]?.$reified as Headers;
    final $result = obj.headers(headers);
    return $ResponseBuilder.wrap($result);
  }

  static const __$request = $Function(_$request);
  static $Value? _$request(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ResponseBuilder;
    final request = args[0]?.$reified as Request;
    final $result = obj.request(request);
    return $ResponseBuilder.wrap($result);
  }

  static const __$body = $Function(_$body);
  static $Value? _$body(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ResponseBuilder;
    final body = args[0]?.$reified as ResponseBody;
    final $result = obj.body(body);
    return $ResponseBuilder.wrap($result);
  }

  static const __$message = $Function(_$message);
  static $Value? _$message(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ResponseBuilder;
    final message = args[0]?.$reified as String;
    final $result = obj.message(message);
    return $ResponseBuilder.wrap($result);
  }

  static const __$build = $Function(_$build);
  static $Value? _$build(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ResponseBuilder;
    final $result = obj.build();
    return $Response.wrap($result);
  }
}
