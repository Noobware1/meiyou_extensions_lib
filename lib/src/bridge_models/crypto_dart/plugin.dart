import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/aes.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/block_ciphers/aes.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/block_ciphers/block_cipher.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/block_ciphers/triple_des.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/cipher_options.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/crypto_dart.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/encoders.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/encoders/base64.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/encoders/encoder.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/encoders/encoders.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/encoders/hex.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/encoders/utf16.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/encoders/utf8.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/evpkdf.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hash_algorithms.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/hasher.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/md2.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/md4.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/md5.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha1.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha224.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha256.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha3.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha384.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha512.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/tiger.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/whirlpool.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/mode.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/padding.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/pbkdf2.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/cipher_params.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/tripledes.dart';

class CryptoDartPlugin extends EvalPlugin {
  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($Encoder.$declaration);
    registry.defineBridgeClass($Base64.$declaration);
    registry.defineBridgeClass($Hex.$declaration);
    registry.defineBridgeClass($Utf8.$declaration);
    registry.defineBridgeClass($Utf16.$declaration);
    registry.defineBridgeClass($Encoders.$declaration);
    registry.defineBridgeEnum($Padding.$declaration);
    registry.defineBridgeEnum($Mode.$declaration);
    registry.defineBridgeClass($CipherParams.$declaration);
    registry.defineBridgeClass($CipherOptions.$declaration);
    registry.defineBridgeClass($BlockCipher.$declaration);
    registry.defineBridgeClass($AES.$declaration);
    registry.defineBridgeClass($TripleDES.$declaration);
    registry.defineBridgeClass($Hasher.$declaration);
    registry.defineBridgeClass($MD2.$declaration);
    registry.defineBridgeClass($MD4.$declaration);
    registry.defineBridgeClass($MD5.$declaration);
    registry.defineBridgeClass($SHA1.$declaration);
    registry.defineBridgeClass($SHA3.$declaration);
    registry.defineBridgeClass($SHA224.$declaration);
    registry.defineBridgeClass($SHA256.$declaration);
    registry.defineBridgeClass($SHA384.$declaration);
    registry.defineBridgeClass($SHA512.$declaration);
    registry.defineBridgeClass($TIGER.$declaration);
    registry.defineBridgeClass($WHIRLPOOL.$declaration);
    registry.defineBridgeClass($CryptoDart.$declaration);
    registry.defineBridgeClass($HashAlgorithms.$declaration);

    registry.addSource(pkdf2Source);
    registry.addSource(evpkdfSource);
    registry.addSource(aesSource);
    registry.addSource(tripleDesSource);
    registry.addSource(encodersSource);
    registry.addSource(hashersSource);
    registry.addSource(paddingSource);
    registry.addSource(cryptoDartSource);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $Base64.configureForRuntime(runtime);
    $Hex.configureForRuntime(runtime);
    $Utf8.configureForRuntime(runtime);
    $Utf16.configureForRuntime(runtime);
    $Encoders.configureForRuntime(runtime);
    $Padding.configureForRuntime(runtime);
    $Mode.configureForRuntime(runtime);
    $CipherParams.configureForRuntime(runtime);
    $CipherOptions.configureForRuntime(runtime);
    $AES.configureForRuntime(runtime);
    $TripleDES.configureForRuntime(runtime);
    $MD2.configureForRuntime(runtime);
    $MD4.configureForRuntime(runtime);
    $MD5.configureForRuntime(runtime);
    $SHA1.configureForRuntime(runtime);
    $SHA3.configureForRuntime(runtime);
    $SHA224.configureForRuntime(runtime);
    $SHA256.configureForRuntime(runtime);
    $SHA384.configureForRuntime(runtime);
    $SHA512.configureForRuntime(runtime);
    $TIGER.configureForRuntime(runtime);
    $WHIRLPOOL.configureForRuntime(runtime);
    $CryptoDart.configureForRuntime(runtime);
    $HashAlgorithms.configureForRuntime(runtime);
  }

  @override
  String get identifier => 'package:crypto_dart';
}
