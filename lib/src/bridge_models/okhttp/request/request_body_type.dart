import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:okhttp/request.dart';

/// dart_eval bimodal wrapper for [RequestBodyType]
class $RequestBodyType implements RequestBodyType, $Instance {
  /// Configure the [$RequestBodyType] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'RequestBodyType.BINARY*g', __$static$BINARY.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'RequestBodyType.TEXT*g', __$static$TEXT.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'RequestBodyType.JSON*g', __$static$JSON.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'RequestBodyType.HTML*g', __$static$HTML.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'RequestBodyType.XML*g', __$static$XML.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'RequestBodyType.FORM*g', __$static$FORM.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'RequestBodyType.MULTIPART_MIXED*g', __$static$MULTIPART_MIXED.call);
    runtime.registerBridgeFunc(
        $type.spec!.library,
        'RequestBodyType.MULTIPART_ALTERNATIVE*g',
        __$static$MULTIPART_ALTERNATIVE.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'RequestBodyType.MULTIPART_DIGEST*g', __$static$MULTIPART_DIGEST.call);
    runtime.registerBridgeFunc(
        $type.spec!.library,
        'RequestBodyType.MULTIPART_PARALLEL*g',
        __$static$MULTIPART_PARALLEL.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'RequestBodyType.MULTIPART_FORM*g', __$static$MULTIPART_FORM.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.requestBodyType);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {},
    fields: {
      'BINARY': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: true),
      'TEXT': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: true),
      'JSON': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: true),
      'HTML': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: true),
      'XML': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: true),
      'FORM': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: true),
      'MULTIPART_MIXED': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: true),
      'MULTIPART_ALTERNATIVE': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: true),
      'MULTIPART_DIGEST': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: true),
      'MULTIPART_PARALLEL': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: true),
      'MULTIPART_FORM': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: true),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [RequestBodyType] in an [$RequestBodyType]
  $RequestBodyType.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  RequestBodyType get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final RequestBodyType $value;

  static const __$static$BINARY = $Function(_$static$BINARY);
  static $Value? _$static$BINARY(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBodyType.BINARY;
    return $MediaType.wrap($result);
  }

  static const __$static$TEXT = $Function(_$static$TEXT);
  static $Value? _$static$TEXT(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBodyType.TEXT;
    return $MediaType.wrap($result);
  }

  static const __$static$JSON = $Function(_$static$JSON);
  static $Value? _$static$JSON(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBodyType.JSON;
    return $MediaType.wrap($result);
  }

  static const __$static$HTML = $Function(_$static$HTML);
  static $Value? _$static$HTML(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBodyType.HTML;
    return $MediaType.wrap($result);
  }

  static const __$static$XML = $Function(_$static$XML);
  static $Value? _$static$XML(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBodyType.XML;
    return $MediaType.wrap($result);
  }

  static const __$static$FORM = $Function(_$static$FORM);
  static $Value? _$static$FORM(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBodyType.FORM;
    return $MediaType.wrap($result);
  }

  static const __$static$MULTIPART_MIXED = $Function(_$static$MULTIPART_MIXED);
  static $Value? _$static$MULTIPART_MIXED(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBodyType.MULTIPART_MIXED;
    return $MediaType.wrap($result);
  }

  static const __$static$MULTIPART_ALTERNATIVE =
      $Function(_$static$MULTIPART_ALTERNATIVE);
  static $Value? _$static$MULTIPART_ALTERNATIVE(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBodyType.MULTIPART_ALTERNATIVE;
    return $MediaType.wrap($result);
  }

  static const __$static$MULTIPART_DIGEST =
      $Function(_$static$MULTIPART_DIGEST);
  static $Value? _$static$MULTIPART_DIGEST(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBodyType.MULTIPART_DIGEST;
    return $MediaType.wrap($result);
  }

  static const __$static$MULTIPART_PARALLEL =
      $Function(_$static$MULTIPART_PARALLEL);
  static $Value? _$static$MULTIPART_PARALLEL(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBodyType.MULTIPART_PARALLEL;
    return $MediaType.wrap($result);
  }

  static const __$static$MULTIPART_FORM = $Function(_$static$MULTIPART_FORM);
  static $Value? _$static$MULTIPART_FORM(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = RequestBodyType.MULTIPART_FORM;
    return $MediaType.wrap($result);
  }
}
