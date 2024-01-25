import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:okhttp/okhttp.dart';

import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [Call]
class $Call implements Call, $Instance {
  /// Configure the [$Call] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.call);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {},
    fields: {},
    methods: {
      'execute': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(OkHttpTypes.response, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'cancel': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'clone': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.call, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'newCall': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.call, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'request',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.request, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {
      'originalRequest': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.request, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'isExecuted': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'isCanceled': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'timeout': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
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

  /// Wrap an [Call] in an [$Call]
  $Call.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'originalRequest':
        return $Request.wrap($value.originalRequest);
      case 'isExecuted':
        return $bool($value.isExecuted);
      case 'isCanceled':
        return $bool($value.isCanceled);
      case 'timeout':
        return $Duration.wrap($value.timeout);
      case 'execute':
        return __$execute;
      case 'cancel':
        return __$cancel;
      case 'clone':
        return __$clone;
      case 'newCall':
        return __$newCall;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Call get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Call $value;

  @override
  Request get originalRequest => $value.originalRequest;

  @override
  bool get isExecuted => $value.isExecuted;

  @override
  bool get isCanceled => $value.isCanceled;

  @override
  Duration get timeout => $value.timeout;

  @override
  Future<Response> execute() => $value.execute();
  static const __$execute = $Function(_$execute);
  static $Value? _$execute(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Call;
    final $result = obj.execute();

    return $Future.wrap($result.then((value) => $Response.wrap(value)));
  }

  @override
  void cancel() => $value.cancel();
  static const __$cancel = $Function(_$cancel);
  static $Value? _$cancel(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Call;
    obj.cancel();
    return null;
  }

  @override
  Call clone() => $value.clone();
  static const __$clone = $Function(_$clone);
  static $Value? _$clone(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Call;
    final $result = obj.clone();
    return $Call.wrap($result);
  }

  @override
  Call newCall(Request request) => $value.newCall(
        request,
      );
  static const __$newCall = $Function(_$newCall);
  static $Value? _$newCall(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Call;
    final request = args[0]?.$reified as Request;
    final $result = obj.newCall(request);
    return $Call.wrap($result);
  }
}
