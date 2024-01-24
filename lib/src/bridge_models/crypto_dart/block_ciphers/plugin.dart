import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/block_ciphers/aes.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/block_ciphers/block_cipher.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/block_ciphers/triple_des.dart';

class BlockCipherPlugin extends EvalPlugin {
  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($BlockCipher.$declaration);
    registry.defineBridgeClass($AES.$declaration);
    registry.defineBridgeClass($TripleDES.$declaration);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $AES.configureForRuntime(runtime);
    $TripleDES.configureForRuntime(runtime);
  }

  @override
  String get identifier =>
      'package:meiyou_extensions_lib/packages/crypto_dart/block_ciphers';
}
