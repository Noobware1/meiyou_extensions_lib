import 'package:crypto_dart/hashers.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';

import 'hasher.dart';

class $MD4 implements $Instance {
  $MD4.wrap(this.$value);

  late final _superclass = $Hasher.wrap($value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(CryptoDartTypes.md4.library, 'MD4.', $new);
  }

  static const $type = BridgeTypeRef(CryptoDartTypes.md4);

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
    return $MD4.wrap(MD4(args[0]?.$reified));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  MD4 get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final MD4 $value;
}
