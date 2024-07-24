import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/unsupported_operation_exception.dart';

/// dart_eval bimodal wrapper for [UnsupportedOperationException]
class $UnsupportedOperationException
    implements UnsupportedOperationException, $Instance {
  /// Configure the [$UnsupportedOperationException] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library,
        'UnsupportedOperationException.',
        __$UnsupportedOperationException$new.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Exception.wrap($value);

  static const $type =
      BridgeTypeRef(ExtensionLibTypes.unsupportedOperationException);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(CoreTypes.exception, []),
      isAbstract: false,
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
    fields: {},
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [UnsupportedOperationException] in an [$UnsupportedOperationException]
  $UnsupportedOperationException.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  UnsupportedOperationException get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final UnsupportedOperationException $value;

  static const __$UnsupportedOperationException$new =
      $Function(_$UnsupportedOperationException$new);
  static $Value? _$UnsupportedOperationException$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $UnsupportedOperationException.wrap(UnsupportedOperationException());
  }
}
