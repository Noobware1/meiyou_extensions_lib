import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/okhttp/response/response_body.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/okhttp/response/stream_response_body.dart';
import 'dart:io';

import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [IOStreamResponseBody]
class $IOStreamResponseBody implements $Instance {
  /// Configure the [$IOStreamResponseBody] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'IOStreamResponseBody.',
        __$IOStreamResponseBody$new.call);
  }

  late final $Instance _superclass = $StreamResponseBody.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.iOStreamResponseBody);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(OkHttpTypes.streamResponseBody, []),
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
                BridgeTypeAnnotation(
                    BridgeTypeRef(IoTypes.httpClientResponse, []),
                    nullable: false),
                false),
            BridgeParameter(
                'contentTypeString',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'detachSocketCallback': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'close': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(OkHttpTypes.responseBody, []),
                ]),
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

  /// Wrap an [IOStreamResponseBody] in an [$IOStreamResponseBody]
  $IOStreamResponseBody.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'detachSocketCallback':
        return __$detachSocketCallBack;
      case 'close':
        return __$close;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  IOStreamResponseBody get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final IOStreamResponseBody $value;

  static const __$close = $Function(_$close);
  static $Value? _$close(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as IOStreamResponseBody;
    final $result = obj.close();
    return $Future.wrap($result).then((value) => $ResponseBody.wrap(value))
        as $Value?;
  }

  static const __$detachSocketCallBack = $Function(_$detachSocketCallBack);
  static $Value? _$detachSocketCallBack(
      Runtime runtime, $Value? target, List<$Value?> args) {
    (target as IOStreamResponseBody).detachSocketCallback().then((value) {
      // change this
      return null;
    });
    return null;
  }

  static const __$IOStreamResponseBody$new =
      $Function(_$IOStreamResponseBody$new);
  static $Value? _$IOStreamResponseBody$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final response = args[0]?.$reified as HttpClientResponse;
    final contentTypeString = args[1]?.$reified as String;
    return $IOStreamResponseBody.wrap(IOStreamResponseBody(
      response,
      contentTypeString,
    ));
  }
}
