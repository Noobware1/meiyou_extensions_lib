import 'package:crypto_dart/hashers.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/types.dart';

import 'hasher.dart';

class $RIPEMD160 implements $Instance {
  $RIPEMD160.wrap(this.$value);

  late final _superclass = $Hasher.wrap($value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        CryptoDartTypes.ripemd160.library, 'RIPEMD160.', $new);
  }

  static const $type = BridgeTypeRef(CryptoDartTypes.md5);

  static const $params = [
    BridgeParameter(
        'data', BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)), false)
  ];
  static const $declaration = BridgeClassDef(
    BridgeClassType(BridgeTypeRef(CryptoDartTypes.hasher)),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.hasher)),
          params: $params,
        ),
      ),
    },
    wrap: true,
  );

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $RIPEMD160.wrap(RIPEMD160(args[0]?.$reified));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  RIPEMD160 get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final RIPEMD160 $value;
}
