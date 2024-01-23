import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/packages/okhttp/byte_stream.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/okhttp/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/okhttp/response/response_body.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [StreamResponseBody]
class $StreamResponseBody implements $Instance {
  /// Configure the [$StreamResponseBody] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $ByteStream.wrap($value);
  late final $Instance _superclass1 = $ResponseBody.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.streamResponseBody);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(OkHttpTypes.byteStream, []),
      $implements: [
        BridgeTypeRef(OkHttpTypes.responseBody, []),
      ],
      isAbstract: true,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'stream',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.stream, []),
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
      'contentLength': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'contentType': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
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
    getters: {
      'string': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'bytes': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(CoreTypes.int, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'charStream': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stream, [
                  BridgeTypeRef(CoreTypes.string, []),
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

  /// Wrap an [StreamResponseBody] in an [$StreamResponseBody]
  $StreamResponseBody.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'contentLength':
        return $int($value.contentLength);
      case 'contentType':
        return $value.contentType == null
            ? $null()
            : $MediaType.wrap($value.contentType!);
      case 'string':
        return $String($value.string);
      case 'bytes':
        return $List.wrap(List.generate(($value.bytes).length, (index) {
          return $int($value.bytes[index]);
        }));
      case 'charStream':
        return $Stream.wrap($value.charStream);
      case 'close':
        return __$close;
      default:
        try {
          return _superclass.$getProperty(runtime, identifier);
        } on UnimplementedError {
          return _superclass1.$getProperty(runtime, identifier);
        }
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  StreamResponseBody get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    try {
      return _superclass.$setProperty(runtime, identifier, value);
    } on UnimplementedError {
      return _superclass1.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final StreamResponseBody $value;

  static const __$close = $Function(_$close);
  static $Value? _$close(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as StreamResponseBody;
    final $result = obj.close();
    return $Future.wrap($result).then((value) => $ResponseBody.wrap(value))
        as $Value?;
  }
}
