import 'dart:async';
import 'dart:convert';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/convert.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request_body.dart';
import 'package:okhttp/request.dart' show FormBody, FormBodyBuilder;

/// dart_eval bimodal wrapper for [FormBody]
class $FormBody implements $Instance {
  /// Configure the [$FormBody] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'FormBody.Builder', __$static$method$Builder.call);
  }

  late final $Instance _superclass = $RequestBody.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.formBody);

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
                BridgeTypeRef(OkHttpTypes.formBodyBuilder, []),
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
      'name': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'value': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
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

  /// Wrap an [FormBody] in an [$FormBody]
  $FormBody.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'contentLength':
        return $int($value.contentLength);
      case 'contentType':
        return $MediaType.wrap($value.contentType);
      case 'name':
        return __$name;
      case 'value':
        return __$value;
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
  FormBody get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final FormBody $value;

  static const __$name = $Function(_$name);
  static $Value? _$name(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as FormBody;
    final index = args[0]?.$reified as int;
    final $result = obj.name(index);
    return $String($result);
  }

  static const __$value = $Function(_$value);
  static $Value? _$value(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as FormBody;
    final index = args[0]?.$reified as int;
    final $result = obj.value(index);
    return $String($result);
  }

  static const __$writeTo = $Function(_$writeTo);
  static $Value? _$writeTo(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as FormBody;
    final sink = args[0]?.$reified as StreamSink<List<int>>;
    obj.writeTo(sink);
    return null;
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as FormBody;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$static$method$Builder = $Function(_$static$method$Builder);
  static $Value? _$static$method$Builder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final encoding = args[0]?.$value as Encoding?;
    final $result = FormBody.Builder(encoding);
    return $FormBodyBuilder.wrap($result);
  }
}

/// dart_eval bimodal wrapper for [FormBodyBuilder]
class $FormBodyBuilder implements $Instance {
  /// Configure the [$FormBodyBuilder] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.formBodyBuilder);

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
                BridgeTypeRef(OkHttpTypes.formBodyBuilder, []),
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
      'addEncoded': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.formBodyBuilder, []),
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
      'build': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.formBody, []),
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

  /// Wrap an [FormBodyBuilder] in an [$FormBodyBuilder]
  $FormBodyBuilder.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'encoding':
        return $value.encoding == null
            ? $null()
            : $Encoding.wrap($value.encoding!);
      case 'add':
        return __$add;
      case 'addEncoded':
        return __$addEncoded;
      case 'build':
        return __$build;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  FormBodyBuilder get $reified => $value;

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
  final FormBodyBuilder $value;

  static const __$add = $Function(_$add);
  static $Value? _$add(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as FormBodyBuilder;
    final name = args[0]?.$reified as String;
    final value = args[1]?.$reified as String;
    final $result = obj.add(
      name,
      value,
    );
    return $FormBodyBuilder.wrap($result);
  }

  static const __$addEncoded = $Function(_$addEncoded);
  static $Value? _$addEncoded(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as FormBodyBuilder;
    final name = args[0]?.$reified as String;
    final value = args[1]?.$reified as String;
    final $result = obj.addEncoded(
      name,
      value,
    );
    return $FormBodyBuilder.wrap($result);
  }

  static const __$build = $Function(_$build);
  static $Value? _$build(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as FormBodyBuilder;
    final $result = obj.build();
    return $FormBody.wrap($result);
  }
}
