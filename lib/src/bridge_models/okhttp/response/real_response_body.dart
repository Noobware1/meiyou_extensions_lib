import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response_body.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [RealResponseBody]
class $RealResponseBody implements RealResponseBody, $Instance {
  /// Configure the [$RealResponseBody] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'RealResponseBody.', __$RealResponseBody$new.call);
  }

  late final $Instance _superclass = $ResponseBody.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.realResponseBody);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [
        BridgeTypeRef(OkHttpTypes.responseBody, []),
      ],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
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
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'bytes': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.int, []),
              ]),
              nullable: false),
          isStatic: false),
      'contentType': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {
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
      'contentLength': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
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
      'bytesToString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(CoreTypes.string, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'toBytes': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(CoreTypes.list, [
                    BridgeTypeRef(CoreTypes.int, []),
                  ]),
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

  /// Wrap an [RealResponseBody] in an [$RealResponseBody]
  $RealResponseBody.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'bytes':
        return $List.wrap(List.generate(($value.bytes).length, (index) {
          return $int($value.bytes[index]);
        }));
      case 'contentType':
        return $value.contentType == null
            ? $null()
            : $MediaType.wrap($value.contentType!);
      case 'charStream':
        return $Stream.wrap($value.charStream);
      case 'contentLength':
        return $int($value.contentLength);
      case 'string':
        return $String($value.string);
      case 'bytesToString':
        return $Future
            .wrap($value.bytesToString)
            .then((value) => $String(value)) as $Value?;
      case 'toBytes':
        return $Future
            .wrap($value.toBytes)
            .then((value) => $List.wrap(List.generate((value).length, (index) {
                  return $int(value[index]);
                }))) as $Value?;

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  RealResponseBody get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final RealResponseBody $value;

  @override
  List<int> get bytes => $value.bytes;
  @override
  MediaType? get contentType => $value.contentType;

  @override
  Stream<String> get charStream => $value.charStream;

  @override
  int get contentLength => $value.contentLength;

  @override
  String get string => $value.string;

  @override
  Future<String> get bytesToString => $value.bytesToString;

  @override
  Future<List<int>> get toBytes => $value.toBytes;

  static const __$RealResponseBody$new = $Function(_$RealResponseBody$new);
  static $Value? _$RealResponseBody$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final bytes = (args[0]?.$reified as List).cast<int>();
    final contentType = args[1]?.$value;
    return $RealResponseBody.wrap(RealResponseBody(bytes, contentType));
  }
}
