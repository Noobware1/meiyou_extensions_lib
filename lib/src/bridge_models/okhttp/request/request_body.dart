import 'dart:async';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:okhttp/request.dart' show RequestBody;
import 'package:okhttp/okhttp.dart' show MediaType;

/// dart_eval bimodal wrapper for [RequestBody]
class $RequestBody implements RequestBody, $Instance {
  /// Configure the [$RequestBody] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'RequestBody.fromString',
        __$RequestBody$fromString.call);
    runtime.registerBridgeFunc($type.spec!.library, 'RequestBody.fromMap',
        __$RequestBody$fromMap.call);
    runtime.registerBridgeFunc($type.spec!.library, 'RequestBody.fromBytes',
        __$RequestBody$fromBytes.call);
    runtime.registerBridgeFunc($type.spec!.library, 'RequestBody.fromStream',
        __$RequestBody$fromStream.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'RequestBody.empty*g', __$static$empty.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.requestBody);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [],
        ),
        isFactory: false,
      ),
      'fromString': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'content',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'contentType',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
                    nullable: true),
                true)
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
      'fromMap': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'map',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeRef(CoreTypes.string, []),
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: false),
                false),
            BridgeParameter(
                'contentType',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
                    nullable: true),
                true)
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
      'fromBytes': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'bytes',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.int, []),
                    ]),
                    nullable: false),
                false),
            BridgeParameter(
                'contentType',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
                    nullable: true),
                true)
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
      'fromStream': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'stream',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.stream, [
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.int),
                      ]),
                    ]),
                    nullable: false),
                false),
            BridgeParameter(
                'contentType',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
                    nullable: true),
                true),
            BridgeParameter(
                'contentLength',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: true),
                true)
          ],
          namedParams: [],
        ),
        isFactory: true,
      )
    },
    fields: {
      'empty': BridgeFieldDef(BridgeTypeAnnotation($type, nullable: false),
          isStatic: true),
    },
    methods: {
      'writeTo': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'sink',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(AsyncTypes.streamSink, [
                        BridgeTypeRef(CoreTypes.list, [
                          BridgeTypeRef(CoreTypes.int, []),
                        ]),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {
      'contentLength': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'contentType': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.mediaType, []),
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

  /// Wrap an [RequestBody] in an [$RequestBody]
  $RequestBody.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'contentLength':
        return $int($value.contentLength);
      case 'contentType':
        return $value.contentType == null
            ? $null()
            : $MediaType.wrap($value.contentType!);
      case 'writeTo':
        return __$writeTo;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  RequestBody get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final RequestBody $value;

  static const __$static$empty = $Function(_$static$empty);
  static $Value? _$static$empty(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBody.empty;
    return $RequestBody.wrap($result);
  }

  @override
  int get contentLength => $value.contentLength;

  @override
  MediaType? get contentType => $value.contentType;

  @override
  void writeTo(StreamSink<List<int>> sink) => $value.writeTo(
        sink,
      );
  static const __$writeTo = $Function(_$writeTo);
  static $Value? _$writeTo(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as RequestBody;
    final sink = args[0]?.$value as StreamSink<List<int>>;
    obj.writeTo(sink);
    return null;
  }

  static const __$RequestBody$fromString = $Function(_$RequestBody$fromString);
  static $Value? _$RequestBody$fromString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final content = args[0]?.$reified as String;
    final contentType = args[1]?.$reified as MediaType?;
    return $RequestBody.wrap(RequestBody.fromString(content, contentType));
  }

  static const __$RequestBody$fromMap = $Function(_$RequestBody$fromMap);
  static $Value? _$RequestBody$fromMap(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final map = args[0]?.$reified.cast<String, dynamic>();
    final contentType = args[1]?.$value as MediaType?;
    return $RequestBody.wrap(RequestBody.fromMap(map, contentType));
  }

  static const __$RequestBody$fromBytes = $Function(_$RequestBody$fromBytes);
  static $Value? _$RequestBody$fromBytes(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final bytes = args[0]?.$reified.cast<int>();
    final contentType = args[1]?.$value as MediaType?;
    return $RequestBody.wrap(RequestBody.fromBytes(bytes, contentType));
  }

  static const __$RequestBody$fromStream = $Function(_$RequestBody$fromStream);
  static $Value? _$RequestBody$fromStream(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final stream = args[0]?.$reified as Stream<List<int>>;
    final contentType = args[1]?.$value as MediaType?;
    final contentLength = args[2]?.$reified as int?;
    return $RequestBody.wrap(
      RequestBody.fromStream(stream, contentType, contentLength),
    );
  }
}
