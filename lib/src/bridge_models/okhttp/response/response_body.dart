import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/document.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/okhttp_extensions.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [ResponseBody]
class $ResponseBody implements ResponseBody, $Instance {
  /// Configure the [$ResponseBody] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ResponseBody.empty*g', __$static$empty.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.responseBody);

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
      )
    },
    fields: {
      'empty': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.responseBody, []),
              nullable: false),
          isStatic: true),
    },
    methods: {
      'json': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            params: [
              BridgeParameter(
                  'fromJson',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  true)
            ],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      'jsonSafe': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: true),
            params: [
              BridgeParameter(
                  'fromJson',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  true)
            ],
            namedParams: [],
            generics: {
              'T': BridgeGenericParam(),
            },
          ),
          isStatic: false),
    },
    getters: {
      'document': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
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
      'string': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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

  /// Wrap an [ResponseBody] in an [$ResponseBody]
  $ResponseBody.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'document':
        return $Document.wrap(Document.html(string));
      case 'json':
        return __$json;
      case 'jsonSafe':
        return __$jsonSafe;
      case 'contentLength':
        return $int($value.contentLength);
      case 'contentType':
        return $value.contentType == null
            ? $null()
            : $MediaType.wrap($value.contentType!);
      case 'bytes':
        return $List.wrap(List.generate(($value.bytes).length, (index) {
          return $int($value.bytes[index]);
        }));
      case 'string':
        return $String($value.string);
      case 'charStream':
        return $Stream.wrap($value.charStream);

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ResponseBody get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ResponseBody $value;

  static const __$static$empty = $Function(_$static$empty);
  static $Value? _$static$empty(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = ResponseBody.empty;
    return $ResponseBody.wrap($result);
  }

  @override
  int get contentLength => $value.contentLength;

  @override
  MediaType? get contentType => $value.contentType;

  @override
  List<int> get bytes => $value.bytes;

  @override
  String get string => $value.string;

  @override
  Stream<String> get charStream => $value.charStream;

  static const __$json = $Function(_$json);
  static $Value? _$json(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ResponseBody;
    final fromJson = args[0] as EvalCallable?;

    final $result = obj.json((json) {
      final decoded = runtime.wrapRecursive(json);
      if (fromJson == null) return decoded;
      return fromJson.call(runtime, target, [decoded]);
    });
    return $result;
  }

  static const __$jsonSafe = $Function(_$jsonSafe);
  static $Value? _$jsonSafe(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ResponseBody;
    final fromJson = args[0] as EvalCallable?;
    final $result = obj.jsonSafe((json) {
      final decoded = runtime.wrapRecursive(json);
      if (fromJson == null) return decoded;
      return fromJson.call(runtime, target, [decoded]);
    });
    return $result ?? $null();
  }
}
