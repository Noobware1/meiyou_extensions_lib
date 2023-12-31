import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:crypto_dart/aes.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/block_ciphers/block_cipher.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/types.dart';

class $AES implements $Instance {
  $AES.wrap(this.$value);

  late final _superclass = $BlockCipher.wrap($value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(CryptoDartTypes.aes.library, 'AES.', $new);
  }

  static const $type = BridgeTypeRef(CryptoDartTypes.aes);

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
    return $AES.wrap(AES());
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  AES get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final AES $value;
}
