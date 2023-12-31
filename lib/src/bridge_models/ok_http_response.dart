import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/document.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/models/document.dart';
import 'package:meiyou_extensions_lib/src/models/ok_http_response.dart';

class $OkHttpResponseObject implements okhttpResponseSrcObject, $Instance {
  $OkHttpResponseObject.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        bridgeLibary, 'okhttpResponseSrcObject.', $OkHttpResponseObject.$new);
  }

  late final $Instance _superclass = $Object($value);

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'okhttpResponseSrcObject'));

  static const $declaration = BridgeClassDef(
      BridgeClassType(
        $type,
      ),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
            params: [],
            namedParams: [
              BridgeParameter('text',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
              BridgeParameter('statusCode',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)), false),
              BridgeParameter('headers',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map)), false),
              BridgeParameter('hasError',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)), false),
              BridgeParameter('isRedirect',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)), false),
            ],
          ),
        ),
      },
      fields: {
        'text': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
        'statusCode':
            BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int))),
        'headers':
            BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map))),
        'hasError':
            BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool))),
        'isRedirect':
            BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool))),
      },
      getters: {
        'document': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation($DocumentObject.$type),
        ))
      },
      methods: {
        'json': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef.ref('E')),
              params: [
                BridgeParameter(
                    'fromJson',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                    true)
              ],
              generics: {
                'E': BridgeGenericParam()
              }),
        ),
        'jsonSafe': BridgeMethodDef(
          BridgeFunctionDef(
              returns:
                  BridgeTypeAnnotation(BridgeTypeRef.ref('E'), nullable: true),
              params: [
                BridgeParameter(
                    'fromJson',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                    true)
              ],
              generics: {
                'E': BridgeGenericParam()
              }),
        )
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'text':
        return $String($value.text);
      case 'statusCode':
        return $int($value.statusCode);
      case 'headers':
        return $Map.wrap($value.headers);
      case 'hasError':
        return $bool($value.hasError);
      case 'isRedirect':
        return $bool($value.isRedirect);
      case 'document':
        return $DocumentObject.wrap($value.document);
      case 'json':
        return const $Function($json);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $OkHttpResponseObject.wrap(okhttpResponseSrcObject(
      text: args[0]?.$value,
      statusCode: args[1]?.$value,
      headers: args[2]?.$value,
      hasError: args[3]?.$value,
      isRedirect: args[4]?.$value,
    ));
  }

  static $Value? $json(Runtime runtime, $Value? target, List<$Value?> args) {
    final fromJson = args[0] as EvalCallable?;
    return (target?.$value as okhttpResponseSrcObject).json((json) {
      final decoded = json is $Value ? json : runtime.wrapRecursive(json);
      if (fromJson == null) return decoded;
      return fromJson.call(runtime, target, [decoded]);
    });
  }

  static $Value? $jsonSafe(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final fromJson = args[0] as EvalCallable?;
    return (target?.$value as okhttpResponseSrcObject).jsonSafe((json) {
      try {
        final decoded = json is $Value ? json : runtime.wrapRecursive(json);
        if (fromJson == null) return decoded!;
        return fromJson.call(runtime, target, [decoded])!;
      } catch (e) {
        return $null();
      }
    });
  }

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) =>
      _superclass.$setProperty(runtime, identifier, value);

  @override
  final okhttpResponseSrcObject $value;

  @override
  Map<String, String> get headers => $value.headers;

  @override
  bool get isRedirect => $value.isRedirect;

  @override
  int get statusCode => $value.statusCode;

  @override
  String get text => $value.text;

  @override
  DocumentObject get document => $value.document;

  @override
  bool get hasError => $value.hasError;

  @override
  E json<E>([E Function(dynamic json)? fromJson]) => $value.json(fromJson);

  @override
  E? jsonSafe<E>([E Function(dynamic json)? fromJson]) =>
      $value.jsonSafe(fromJson);
}
