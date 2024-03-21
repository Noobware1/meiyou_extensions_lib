import 'package:crypto_dart/hashers.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';

import 'hasher.dart';

class $SHA384 implements $Instance {
  $SHA384.wrap(this.$value);

  late final _superclass = $Hasher.wrap($value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(CryptoDartTypes.sha384.library, 'SHA384.', $new);
  }

  static const $type = BridgeTypeRef(CryptoDartTypes.sha384);

  static const $params = [
    BridgeParameter(
        'data', BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)), false)
  ];
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, $extends: BridgeTypeRef(CryptoDartTypes.hasher)),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: $params,
        ),
      ),
    },
    wrap: true,
  );

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SHA384.wrap(SHA384(args[0]?.$reified));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  SHA384 get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final SHA384 $value;
}
