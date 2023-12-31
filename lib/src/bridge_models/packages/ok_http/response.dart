import 'dart:convert';

import 'dart:typed_data';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/convert.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:ok_http_dart/ok_http_dart.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/base_request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/types.dart';
import 'package:ok_http_dart/dom.dart';
import 'package:ok_http_dart/http.dart';
import 'document.dart';

class $OkHttpResponse implements OkHttpResponse, $Instance {
  $OkHttpResponse.wrap(this.$value);

  late final $Instance _superclass = $Object($value);

  static final dartSource =
      DartSource(OkHttpDartTypes.OkHttpResponse.library, '''
  library response;

  export 'src/response.dart';
''');

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        OkHttpDartTypes.okhttpResponseSrc, 'OkHttpResponse.', $new);
  }

  static const $type = BridgeTypeRef(
      BridgeTypeSpec(OkHttpDartTypes.okhttpResponseSrc, 'OkHttpResponse'));

  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($type), params: [
        BridgeParameter(
          'body',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
          false,
        ),
        BridgeParameter(
          'statusCode',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
          false,
        ),
      ], namedParams: [
        BridgeParameter(
          'headers',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.map, [
              BridgeTypeRef(CoreTypes.string),
              BridgeTypeRef(CoreTypes.string),
            ]),
          ),
          true,
        ),
        BridgeParameter(
          'isRedirect',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)),
          true,
        ),
        BridgeParameter(
          'persistentConnection',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)),
          true,
        ),
        BridgeParameter(
          'reasonPhrase',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string), nullable: true),
          true,
        ),
        BridgeParameter(
          'request',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.object)),
          true,
        ),
      ]))
    },
    methods: {},
    fields: {
      'bodyBytes': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            TypedDataTypes.uint8List,
          ),
        ),
      ),
      'contentLength':
          BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int))),
      'headers': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.map, [
            BridgeTypeRef(CoreTypes.string),
            BridgeTypeRef(CoreTypes.string),
          ]),
        ),
      ),
      'isRedirect':
          BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool))),
      'persistentConnection':
          BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool))),
      'reasonPhrase': BridgeFieldDef(BridgeTypeAnnotation(
        BridgeTypeRef(CoreTypes.string),
        nullable: true,
      )),
      'request': BridgeFieldDef(BridgeTypeAnnotation($BaseRequest.$type)),
    },
    getters: {
      'cookie': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
          params: [],
        ),
      ),
      'document': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($Document.$type),
          params: [],
        ),
      ),
      'text': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
          params: [],
        ),
      ),
      'success': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)),
          params: [],
        ),
      ),
      'encoding': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(ConvertTypes.encoding)),
          params: [],
        ),
      ),
    },
    bridge: false,
    wrap: true,
  );

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'bodyBytes':
        return $Uint8List.wrap(bodyBytes);
      case 'contextLength':
        return contentLength == null ? const $null() : $int(contentLength!);
      case 'cookie':
        return $String(cookie);
      case 'document':
        return $Document.wrap(document);
      case 'encoding':
        return $Encoding.wrap(encoding);
      case 'headers':
        return $Map.wrap(headers.map((key, value) =>
            $MapEntry.wrap(MapEntry($String(key), $String(value)))));
      case 'isRedirect':
        return $bool(isRedirect);
      case 'persistentConnection':
        return $bool(persistentConnection);
      case 'reasonPhrase':
        return reasonPhrase == null ? const $null() : $String(reasonPhrase!);
      case 'request':
        return request == null ? const $null() : $BaseRequest.wrap(request!);
      case 'statusCode':
        return $int(statusCode);
      case 'success':
        return $bool(success);
      case 'text':
        return $String(text);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  OkHttpResponse get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final OkHttpResponse $value;

  @override
  Uint8List get bodyBytes => $value.bodyBytes;

  @override
  int? get contentLength => $value.contentLength;

  @override
  String get cookie => $value.cookie;

  @override
  Document get document => $value.document;

  @override
  Encoding get encoding => $value.encoding;

  @override
  Map<String, String> get headers => $value.headers;

  @override
  bool get isRedirect => $value.isRedirect;

  @override
  T json<T>([T Function(dynamic json)? fromJson]) => $value.json<T>(fromJson);

  @override
  T? jsonSafe<T>([T Function(dynamic json)? fromJson]) => $value.jsonSafe<T>();
  @override
  bool get persistentConnection => $value.persistentConnection;

  @override
  String? get reasonPhrase => $value.reasonPhrase;

  @override
  BaseRequest? get request => $value.request;

  @override
  int get statusCode => $value.statusCode;

  @override
  bool get success => $value.success;

  @override
  String get text => $value.text;

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $OkHttpResponse.wrap(
      OkHttpResponse(
        args[0]?.$value,
        args[1]?.$value,
        request: args[2]?.$value,
        headers: args[3]?.$reified,
        isRedirect: args[4]?.$value ?? false,
        persistentConnection: args[5]?.$value ?? true,
        reasonPhrase: args[6]?.$value,
      ),
    );
  }
}
