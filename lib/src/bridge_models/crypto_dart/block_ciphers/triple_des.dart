import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:crypto_dart/tripledes.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/block_ciphers/block_cipher.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';

class $TripleDES implements $Instance {
  $TripleDES.wrap(this.$value);

  late final _superclass = $BlockCipher.wrap($value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        CryptoDartTypes.tripleDes.library, 'TripleDES.', $new);
  }

  static const $type = BridgeTypeRef(CryptoDartTypes.tripleDes);

  static const $declaration =
      BridgeClassDef(BridgeClassType($type, $extends: $BlockCipher.$type),
          constructors: {
            '': BridgeConstructorDef(
              BridgeFunctionDef(
                returns: BridgeTypeAnnotation($type),
              ),
            ),
          },
          wrap: true);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $TripleDES.wrap(TripleDES());
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final TripleDES $value;
}
