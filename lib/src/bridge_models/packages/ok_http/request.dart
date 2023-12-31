import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/convert.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:ok_http_dart/ok_http_dart.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/base_request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/types.dart';

class $OkHttpRequest implements $Instance {
  $OkHttpRequest.wrap(this.$value);

  late final _superclass = $BaseRequest.wrap($value);

  static final dartSource =
      DartSource(OkHttpDartTypes.OkHttpRequest.library, '''
  library request;

  export 'src/request.dart';
''');

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        OkHttpDartTypes.OkHttpRequestSrc, 'OkHttpRequest.', $new);
    runtime.registerBridgeFunc(
        OkHttpDartTypes.OkHttpRequestSrc, 'OkHttpRequest.builder', $builder);
  }

  static const $type = BridgeTypeRef(
      BridgeTypeSpec(OkHttpDartTypes.OkHttpRequestSrc, 'OkHttpRequest'));

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: $BaseRequest.$type,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
              'method',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              false,
            ),
            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri)),
              false,
            ),
          ],
        ),
      ),
      'builder': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
          BridgeParameter('method',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
          BridgeParameter('url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
          BridgeParameter(
              'headers',
              BridgeTypeAnnotation(
                  BridgeTypeRef(CoreTypes.map, [
                    BridgeTypeRef(CoreTypes.string),
                    BridgeTypeRef(CoreTypes.string)
                  ]),
                  nullable: true),
              true),
          BridgeParameter(
              'params',
              BridgeTypeAnnotation(
                  BridgeTypeRef(CoreTypes.map, [
                    BridgeTypeRef(CoreTypes.string),
                    BridgeTypeRef(CoreTypes.dynamic)
                  ]),
                  nullable: true),
              true),
          BridgeParameter(
              'cookie',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                  nullable: true),
              true),
          BridgeParameter(
              'body',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.object),
                  nullable: true),
              true),
          BridgeParameter(
              'referer',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                  nullable: true),
              true),
          BridgeParameter(
              'followRedirects',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool),
                  nullable: true),
              true),
        ]),
        isFactory: true,
      )
    },
    getters: {
      'body': BridgeMethodDef(BridgeFunctionDef(
        returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
      )),
      'bodyBytes': BridgeMethodDef(BridgeFunctionDef(
        returns: BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List)),
      )),
      'bodyFields': BridgeMethodDef(BridgeFunctionDef(
        returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map, [
          BridgeTypeRef(CoreTypes.string),
          BridgeTypeRef(CoreTypes.string),
        ])),
      )),
      'encoding': BridgeMethodDef(BridgeFunctionDef(
        returns: BridgeTypeAnnotation(BridgeTypeRef(ConvertTypes.encoding)),
      )),
    },
    methods: {
      'addBody': BridgeMethodDef(BridgeFunctionDef(
        returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
        params: [
          BridgeParameter(
            'body',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.object),
                nullable: true),
            false,
          ),
        ],
      )),
      'addCookie': BridgeMethodDef(BridgeFunctionDef(
        returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
        params: [
          BridgeParameter(
            'cookie',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                nullable: true),
            false,
          ),
        ],
      )),
      'addHeaders': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          params: [
            BridgeParameter(
              'headers',
              BridgeTypeAnnotation(
                  BridgeTypeRef(CoreTypes.map, [
                    BridgeTypeRef(CoreTypes.string),
                    BridgeTypeRef(CoreTypes.string),
                  ]),
                  nullable: true),
              false,
            ),
          ],
        ),
      ),
      'addReferer': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          params: [
            BridgeParameter(
              'referer',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                  nullable: true),
              false,
            ),
          ],
        ),
      ),
      'cloneRequest': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
        ),
      ),
    },
    bridge: false,
    wrap: true,
  );

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'body':
        return $String($value.body);
      case 'bodyBytes':
        return $Uint8List.wrap($value.bodyBytes);
      case 'bodyFields':
        return $Map.wrap($value.bodyFields.map((key, value) =>
            $MapEntry.wrap(MapEntry($String(key), $String(value)))));
      case 'encoding':
        return $Encoding.wrap($value.encoding);
      case 'addBody':
        return const $Function($addBody);
      case 'addCookie':
        return const $Function($addCookie);
      case 'addHeaders':
        return const $Function($addHeaders);
      case 'addReferer':
        return const $Function($addReferer);
      case 'cloneRequest':
        return const $Function($cloneRequest);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  OKHttpRequest get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $OkHttpRequest.wrap(OKHttpRequest(
      args[0]?.$value,
      args[1]?.$value,
    ));
  }

  static $Value? $builder(Runtime runtime, $Value? target, List<$Value?> args) {
    return $OkHttpRequest.wrap(OKHttpRequest.builder(
      method: args[0]?.$value,
      url: args[1]?.$value,
      headers: args[2]?.$value,
      params: args[3]?.$reified,
      cookie: args[4]?.$value,
      body: args[5]?.$reified,
      referer: args[6]?.$value,
      followRedirects: args[7]?.$value,
    ));
  }

  static $Value? $addBody(Runtime runtime, $Value? target, List<$Value?> args) {
    (target?.$value as OKHttpRequest).addBody(args[0]?.$reified);
    return null;
  }

  static $Value? $addCookie(
      Runtime runtime, $Value? target, List<$Value?> args) {
    (target?.$value as OKHttpRequest).addCookie(args[0]?.$value);
    return null;
  }

  static $Value? $addHeaders(
      Runtime runtime, $Value? target, List<$Value?> args) {
    (target?.$value as OKHttpRequest).addHeaders(args[0]?.$value);
    return null;
  }

  static $Value? $addReferer(
      Runtime runtime, $Value? target, List<$Value?> args) {
    (target?.$value as OKHttpRequest).addReferer(args[0]?.$value);
    return null;
  }

  static $Value? $cloneRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $OkHttpRequest
        .wrap((target?.$value as OKHttpRequest).cloneRequest());
  }

  @override
  final OKHttpRequest $value;
}
