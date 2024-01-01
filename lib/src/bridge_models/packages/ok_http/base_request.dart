import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/types.dart';
import 'package:ok_http_dart/http.dart';

class $BaseRequest implements $Instance {
  $BaseRequest.wrap(this.$value);

  late final $Instance _superclass = $Object($value);

  static final dartSource = DartSource(OkHttpDartTypes.BaseRequest.library, '''
  library base_request;

  export 'src/base_request.dart';
''');

  static const $type = BridgeTypeRef(OkHttpDartTypes.BaseRequest);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      isAbstract: true,
    ),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(
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
      ))
    },
    methods: {},
    getters: {
      'contentLength': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
              nullable: true),
        ),
      ),
      'followRedirects': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)),
        ),
      ),
      'maxRedirects': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
        ),
      ),
      'persistentConnection': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)),
        ),
      ),
      'finalized': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)),
        ),
      ),
    },
    fields: {
      'method': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
      ),
      'url': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri)),
      ),
      'headers': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.map, [
            BridgeTypeRef(CoreTypes.string),
            BridgeTypeRef(CoreTypes.string),
          ]),
        ),
      ),
    },
    bridge: false,
    wrap: true,
  );

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'contentLength':
        return $value.contentLength == null
            ? const $null()
            : $int($value.contentLength!);
      case 'followRedirects':
        return $bool($value.followRedirects);
      case 'maxRedirects':
        return $int($value.maxRedirects);
      case 'persistentConnection':
        return $bool($value.persistentConnection);
      case 'url':
        return $Uri.wrap($value.url);
      case 'finalized':
        return $bool($value.finalized);
      case 'headers':
        return $Map.wrap($value.headers.map((key, value) =>
            $MapEntry.wrap(MapEntry($String(key), $String(value)))));
      case 'method':
        return $String($value.method);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  BaseRequest get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final BaseRequest $value;
}
