// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';

final Headers _DEFAULT_HEADERS = Headers.Builder().build();

Request GET(dynamic url, [Headers? headers]) {
  return Request.Builder()
      .url(url)
      .headers(headers ?? _DEFAULT_HEADERS)
      .build();
}

Request POST(dynamic url, [Headers? headers, RequestBody? body]) {
  return Request.Builder()
      .url(url)
      .post(body)
      .headers(headers ?? _DEFAULT_HEADERS)
      .build();
}

Request PUT(dynamic url, [Headers? headers, RequestBody? body]) {
  return Request.Builder()
      .url(url)
      .put(body)
      .headers(headers ?? _DEFAULT_HEADERS)
      .build();
}

Request DELETE(dynamic url, [Headers? headers, RequestBody? body]) {
  return Request.Builder()
      .url(url)
      .delete(body)
      .headers(headers ?? _DEFAULT_HEADERS)
      .build();
}

class $Requests {
  static const requests = 'package:meiyou_extensions_lib/src/requests.dart';

  /// Configure the [$Requests] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeTopLevelFunction(_GET);
    registry.defineBridgeTopLevelFunction(_POST);
    registry.defineBridgeTopLevelFunction(_PUT);
    registry.defineBridgeTopLevelFunction(_DELETE);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(requests, 'GET', __$GET.call);
    runtime.registerBridgeFunc(requests, 'POST', __$POST.call);
    runtime.registerBridgeFunc(requests, 'PUT', __$PUT.call);
    runtime.registerBridgeFunc(requests, 'DELETE', __$DELETE.call);
  }

  static const _GET = BridgeFunctionDeclaration(
    requests,
    'GET',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.request, []),
          nullable: false),
      params: [
        BridgeParameter(
            'url',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                nullable: false),
            false),
        BridgeParameter(
            'headers',
            BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                nullable: true),
            true)
      ],
      namedParams: [],
    ),
  );

  static const _POST = BridgeFunctionDeclaration(
    requests,
    'POST',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.request, []),
          nullable: false),
      params: [
        BridgeParameter(
            'url',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                nullable: false),
            false),
        BridgeParameter(
            'headers',
            BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                nullable: true),
            true),
        BridgeParameter(
            'body',
            BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.requestBody, []),
                nullable: true),
            true)
      ],
      namedParams: [],
    ),
  );

  static const _PUT = BridgeFunctionDeclaration(
    requests,
    'PUT',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.request, []),
          nullable: false),
      params: [
        BridgeParameter(
            'url',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                nullable: false),
            false),
        BridgeParameter(
            'headers',
            BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                nullable: true),
            true),
        BridgeParameter(
            'body',
            BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.requestBody, []),
                nullable: true),
            true)
      ],
      namedParams: [],
    ),
  );

  static const _DELETE = BridgeFunctionDeclaration(
    requests,
    'DELETE',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.request, []),
          nullable: false),
      params: [
        BridgeParameter(
            'url',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                nullable: false),
            false),
        BridgeParameter(
            'headers',
            BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                nullable: true),
            true),
        BridgeParameter(
            'body',
            BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.requestBody, []),
                nullable: true),
            true)
      ],
      namedParams: [],
    ),
  );

  static const __$GET = $Function(_$GET);
  static $Value? _$GET(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$reified;
    final headers = args[1]?.$value as Headers?;
    final $result = GET(url, headers);
    return $Request.wrap($result);
  }

  static const __$POST = $Function(_$POST);
  static $Value? _$POST(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$reified;
    final headers = args[1]?.$value as Headers?;
    final body = args[2]?.$value as RequestBody?;
    final $result = POST(url, headers, body);
    return $Request.wrap($result);
  }

  static const __$PUT = $Function(_$PUT);
  static $Value? _$PUT(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$reified;
    final headers = args[1]?.$value as Headers?;
    final body = args[2]?.$value as RequestBody?;
    final $result = PUT(url, headers, body);
    return $Request.wrap($result);
  }

  static const __$DELETE = $Function(_$DELETE);
  static $Value? _$DELETE(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$reified;
    final headers = args[1]?.$value as Headers?;
    final body = args[2]?.$value as RequestBody?;
    final $result = DELETE(url, headers, body);
    return $Request.wrap($result);
  }
}
