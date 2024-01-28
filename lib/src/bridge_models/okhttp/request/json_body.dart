import 'dart:async';
import 'dart:convert';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/convert.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request_body.dart';
import 'package:okhttp/request.dart' show JsonBody, JsonBodyBuilder;
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

/// dart_eval bimodal wrapper for [JsonBody]
class $JsonBody implements $Instance {
  /// Configure the [$JsonBody] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'JsonBody.Builder', __$static$method$Builder.call);
  }

  late final $Instance _superclass = $RequestBody.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.jsonBody);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(OkHttpTypes.requestBody, []),
      $implements: [],
      isAbstract: false,
    ),
    constructors: {},
    fields: {},
    methods: {
      'Builder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.jsonBodyBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'encoding',
                  BridgeTypeAnnotation(BridgeTypeRef(ConvertTypes.encoding, []),
                      nullable: true),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: true),
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
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
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

  /// Wrap an [JsonBody] in an [$JsonBody]
  $JsonBody.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'contentLength':
        return $int($value.contentLength);
      case 'contentType':
        return $MediaType.wrap($value.contentType);
      case 'writeTo':
        return __$writeTo;
      case 'toString':
        return __$toString;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  JsonBody get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final JsonBody $value;

  static const __$writeTo = $Function(_$writeTo);
  static $Value? _$writeTo(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as JsonBody;
    final sink = args[0]?.$reified as StreamSink<List<int>>;
    obj.writeTo(sink);
    return null;
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as JsonBody;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$static$method$Builder = $Function(_$static$method$Builder);
  static $Value? _$static$method$Builder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final encoding = args[0]?.$reified as Encoding?;
    final $result = JsonBody.Builder(
      encoding,
    );
    return $JsonBodyBuilder.wrap($result);
  }
}

/// dart_eval bimodal wrapper for [JsonBodyBuilder]
class $JsonBodyBuilder implements $Instance {
  /// Configure the [$JsonBodyBuilder] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.jsonBodyBuilder);

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
                'encoding',
                BridgeTypeAnnotation(BridgeTypeRef(ConvertTypes.encoding, []),
                    nullable: true),
                true)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'encoding': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ConvertTypes.encoding, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'add': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.jsonBodyBuilder, []),
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
      'addAll': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.jsonBodyBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'map',
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
                BridgeTypeRef(OkHttpTypes.jsonBody, []),
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

  /// Wrap an [JsonBodyBuilder] in an [$JsonBodyBuilder]
  $JsonBodyBuilder.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'encoding':
        return $value.encoding == null
            ? $null()
            : $Encoding.wrap($value.encoding!);

      case 'add':
        return __$add;
      case 'addAll':
        return __$addAll;
      case 'build':
        return __$build;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  JsonBodyBuilder get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'encoding':
        $value.encoding = value.$reified as Encoding?;
        break;

      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final JsonBodyBuilder $value;

  static const __$add = $Function(_$add);
  static $Value? _$add(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as JsonBodyBuilder;
    final name = args[0]?.$reified as String;
    final value = args[1]?.$reified as String;
    final $result = obj.add(
      name,
      value,
    );
    return $JsonBodyBuilder.wrap($result);
  }

  static const __$addAll = $Function(_$addAll);
  static $Value? _$addAll(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as JsonBodyBuilder;
    final map = args[0]?.$reified.cast<String, String>();
    final $result = obj.addAll(
      map,
    );
    return $JsonBodyBuilder.wrap($result);
  }

  static const __$build = $Function(_$build);
  static $Value? _$build(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as JsonBodyBuilder;
    final $result = obj.build();
    return $JsonBody.wrap($result);
  }
}
