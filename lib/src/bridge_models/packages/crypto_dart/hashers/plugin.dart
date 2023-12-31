import 'package:dart_eval/src/eval/runtime/runtime.dart';
import 'package:dart_eval/dart_eval_bridge.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/hasher.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/md2.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/md4.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/md5.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/sha1.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/sha224.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/sha256.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/sha3.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/sha384.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/sha512.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/tiger.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/hashers/whirlpool.dart';

class CryptoDartHasherPlugin extends EvalPlugin {
  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
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
  }

  @override
  void configureForRuntime(Runtime runtime) {
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
  }

  @override
  String get identifier =>
      'package:meiyou_extensions_lib/packages/crypto_dart/hashers';
}
