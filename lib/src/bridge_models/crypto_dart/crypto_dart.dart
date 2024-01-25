// ignore_for_file: non_constant_identifier_names

import 'package:crypto_dart/aes.dart';
import 'package:crypto_dart/crypto_dart.dart';
import 'package:crypto_dart/hashers.dart';
import 'package:crypto_dart/tripledes.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:crypto_dart/encoders.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dartx/dartx.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/encoders/encoders.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/md2.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';

import 'block_ciphers/aes.dart';
import 'block_ciphers/triple_des.dart';
import 'hashers/md4.dart';
import 'hashers/md5.dart';
import 'hashers/ripemd160.dart';
import 'hashers/sha1.dart';
import 'hashers/sha224.dart';
import 'hashers/sha256.dart';
import 'hashers/sha3.dart';
import 'hashers/sha384.dart';
import 'hashers/sha512.dart';
import 'hashers/tiger.dart';
import 'hashers/whirlpool.dart';

final cryptoDartSource = DartSource('package:crypto_dart/crypto_dart.dart', '''
library crypto_dart;

import 'dart:typed_data';
import 'aes.dart';
import 'tripledes.dart';
import 'encoders.dart';
import 'hashers.dart';
export 'src/crypto_dart.dart';
export 'src/hash_algorithms.dart';

''');

class $CryptoDart implements $Instance {
  $CryptoDart.wrap(this.$value);

  late final $Instance _superclass = $Object($value);

  // static void addAllImports(BridgeDeclarationRegistry registry) {
  //   registry.addSource(DartSource(CryptoDartTypes.cryptoDart.library, ''));
  // }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.', $new);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.enc*g', $enc);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.AES*g', $_AES);
    runtime.registerBridgeFunc(CryptoDartTypes.cryptoDart.library,
        'CryptoDart.TripleDES*g', $_TripleDES);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.MD2', $_MD2);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.MD4', $_MD4);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.MD5', $_MD5);
    runtime.registerBridgeFunc(CryptoDartTypes.cryptoDart.library,
        'CryptoDart.RIPEMD160', $_RIPEMD160);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.SHA1', $_SHA1);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.SHA3', $_SHA3);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.SHA224', $_SHA224);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.SHA256', $_SHA256);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.SHA384', $_SHA384);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.SHA512', $_SHA512);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.TIGER', $_TIGER);
    runtime.registerBridgeFunc(CryptoDartTypes.cryptoDart.library,
        'CryptoDart.WHIRLPOOL', $_WHIRLPOOL);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.PBKDF2', $PBKDF2);
    runtime.registerBridgeFunc(
        CryptoDartTypes.cryptoDart.library, 'CryptoDart.EvpKDF', $EvpKDF);
  }

  static const $type = BridgeTypeRef(CryptoDartTypes.cryptoDart);

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
          ),
        ),
      },
      fields: {
        'enc': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.encoders)),
            isStatic: true),
        'AES': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.aes)),
            isStatic: true),
        'TripleDES': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.tripleDes)),
            isStatic: true),
      },
      methods: {
        'MD2': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.md2)),
            params: $MD2.$params,
          ),
          isStatic: true,
        ),
        'MD4': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.md4)),
            params: $MD4.$params,
          ),
          isStatic: true,
        ),
        'MD5': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.md5)),
            params: $MD5.$params,
          ),
          isStatic: true,
        ),
        'RIPEMD160': BridgeMethodDef(
          BridgeFunctionDef(
            returns:
                BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.ripemd160)),
            params: $RIPEMD160.$params,
          ),
          isStatic: true,
        ),
        'SHA1': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.sha1)),
            params: $SHA1.$params,
          ),
          isStatic: true,
        ),
        'SHA3': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.sha3)),
            params: $SHA3.$params,
          ),
          isStatic: true,
        ),
        'SHA224': BridgeMethodDef(
          BridgeFunctionDef(
            returns:
                BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.sha224)),
            params: $SHA224.$params,
          ),
          isStatic: true,
        ),
        'SHA256': BridgeMethodDef(
          BridgeFunctionDef(
            returns:
                BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.sha256)),
            params: $SHA256.$params,
          ),
          isStatic: true,
        ),
        'SHA384': BridgeMethodDef(
          BridgeFunctionDef(
            returns:
                BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.sha384)),
            params: $SHA384.$params,
          ),
          isStatic: true,
        ),
        'SHA512': BridgeMethodDef(
          BridgeFunctionDef(
            returns:
                BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.sha512)),
            params: $SHA512.$params,
          ),
          isStatic: true,
        ),
        'TIGER': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.tiger)),
            params: $TIGER.$params,
          ),
          isStatic: true,
        ),
        'WHIRLPOOL': BridgeMethodDef(
          BridgeFunctionDef(
            returns:
                BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.whirlpool)),
            params: $WHIRLPOOL.$params,
          ),
          isStatic: true,
        ),
        'PBKDF2': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                  BridgeTypeRef(TypedDataTypes.uint8List),
                ),
                namedParams: [
                  BridgeParameter(
                      'hasher',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      true),
                  BridgeParameter('iterations',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)), true),
                  BridgeParameter(
                      'blockLength',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
                      false),
                  BridgeParameter('keySize',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)), true),
                  BridgeParameter(
                      'salt',
                      BridgeTypeAnnotation(
                          BridgeTypeRef(TypedDataTypes.uint8List)),
                      false),
                  BridgeParameter(
                      'keyEncoding',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      true),
                  BridgeParameter(
                      'key',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      true),
                ]),
            isStatic: true),
        'EvpKDF': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(
                    CoreTypes.list, [BridgeTypeRef(TypedDataTypes.uint8List)])),
                namedParams: [
                  BridgeParameter(
                      'password',
                      BridgeTypeAnnotation(
                          BridgeTypeRef(TypedDataTypes.uint8List)),
                      false),
                  BridgeParameter(
                      'keySize',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
                      false),
                  BridgeParameter(
                      'ivSize',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
                      false),
                  BridgeParameter(
                      'salt',
                      BridgeTypeAnnotation(
                          BridgeTypeRef(TypedDataTypes.uint8List)),
                      false),
                  BridgeParameter(
                      'iterations',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
                      false),
                  BridgeParameter(
                      'hasher',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      false),
                ]),
            isStatic: true),
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) =>
      runtime.lookupType(CryptoDartTypes.cryptoDart);

  @override
  CryptoDart get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $CryptoDart.wrap(CryptoDart());
  }

  static $Value? $enc(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Encoders.wrap(Encoders());
  }

  static $Value? $_AES(Runtime runtime, $Value? target, List<$Value?> args) {
    return $AES.wrap(AES());
  }

  static $Value? $_TripleDES(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $TripleDES.wrap(TripleDES());
  }

  static $Value? $_MD2(Runtime runtime, $Value? target, List<$Value?> args) {
    return $MD2.wrap(MD2(args[0]?.$value));
  }

  static $Value? $_MD4(Runtime runtime, $Value? target, List<$Value?> args) {
    return $MD4.wrap(MD4(args[0]?.$value));
  }

  static $Value? $_MD5(Runtime runtime, $Value? target, List<$Value?> args) {
    return $MD5.wrap(MD5(args[0]?.$value));
  }

  static $Value? $_RIPEMD160(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $RIPEMD160.wrap(RIPEMD160(args[0]?.$value));
  }

  static $Value? $_SHA1(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SHA1.wrap(SHA1(args[0]?.$value));
  }

  static $Value? $_SHA3(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SHA3.wrap(SHA3(args[0]?.$value));
  }

  static $Value? $_SHA224(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SHA224.wrap(SHA224(args[0]?.$value));
  }

  static $Value? $_SHA256(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SHA256.wrap(SHA256(args[0]?.$value));
  }

  static $Value? $_SHA384(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SHA384.wrap(SHA384(args[0]?.$value));
  }

  static $Value? $_SHA512(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SHA512.wrap(SHA512(args[0]?.$value));
  }

  static $Value? $_TIGER(Runtime runtime, $Value? target, List<$Value?> args) {
    return $TIGER.wrap(TIGER(args[0]?.$value));
  }

  static $Value? $_WHIRLPOOL(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $WHIRLPOOL.wrap(WHIRLPOOL(args[0]?.$value));
  }

  static $Value? $PBKDF2(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Uint8List.wrap(CryptoDart.PBKDF2(
      hasher: args[0]?.$value ?? HashAlgorithms.SHA256,
      iterations: args[1]?.$value ?? 250000,
      blockLength: args[2]?.$value,
      keySize: args[3]?.$value ?? 4,
      salt: args[4]?.$value,
      keyEncoding: args[5]?.$value ?? 'utf8',
      key: args[6]?.$value,
    ));
  }

  static $Value? $EvpKDF(Runtime runtime, $Value? target, List<$Value?> args) {
    return $List.wrap(
      CryptoDart.EvpKDF(
              password: args[0]?.$value,
              keySize: args[1]?.$value,
              ivSize: args[2]?.$value,
              salt: args[3]?.$value,
              iterations: args[4]?.$value,
              hasher: args[5]?.$value)
          .mapList($Uint8List.wrap),
    );
  }

  @override
  final CryptoDart $value;
}
