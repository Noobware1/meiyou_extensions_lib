import 'dart:typed_data';

import 'package:crypto_dart/crypto_dart.dart';
import 'package:crypto_dart/hashers.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/block_ciphers/aes.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/block_ciphers/triple_des.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/encoders/encoders.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/evpkdf.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/md2.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/md4.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/md5.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/ripemd160.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha1.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha224.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha256.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha3.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha384.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/sha512.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/tiger.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/hashers/whirlpool.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';

final cryptoDartSource = DartSource('package:crypto_dart/crypto_dart.dart', '''
import 'dart:typed_data';
import 'aes.dart';
import 'tripledes.dart';
import 'encoders.dart';
import 'hashers.dart';
export 'src/crypto_dart.dart';
export 'src/hash_algorithms.dart';
export 'src/cipher_options.dart';
export 'src/cipher_params.dart';
export 'src/mode.dart';
export 'padding.dart';
export 'src/block_cipher.dart';

''');

/// dart_eval bimodal wrapper for [CryptoDart]
class $CryptoDart implements $Instance {
  /// Configure the [$CryptoDart] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.enc*g', __$static$enc.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.AES*g', __$static$AES.call);
    runtime.registerBridgeFunc($type.spec!.library, 'CryptoDart.TripleDES*g',
        __$static$TripleDES.call);

    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.MD2', __$static$method$MD2.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.MD4', __$static$method$MD4.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.MD5', __$static$method$MD5.call);
    runtime.registerBridgeFunc($type.spec!.library, 'CryptoDart.RIPEMD160',
        __$static$method$RIPEMD160.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.SHA1', __$static$method$SHA1.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.SHA3', __$static$method$SHA3.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.SHA224', __$static$method$SHA224.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.SHA256', __$static$method$SHA256.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.SHA384', __$static$method$SHA384.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.SHA512', __$static$method$SHA512.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.TIGER', __$static$method$TIGER.call);
    runtime.registerBridgeFunc($type.spec!.library, 'CryptoDart.WHIRLPOOL',
        __$static$method$WHIRLPOOL.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.PBKDF2', __$static$method$PBKDF2.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CryptoDart.EvpKDF', __$static$method$EvpKDF.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'CryptoDart.randomUint8List', __$static$method$randomUint8List.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(CryptoDartTypes.cryptoDart);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {},
    fields: {
      'enc': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.encoders, []),
              nullable: false),
          isStatic: true),
      'AES': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.aes, []),
              nullable: false),
          isStatic: true),
      'TripleDES': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.tripleDes, []),
              nullable: false),
          isStatic: true),
    },
    methods: {
      'MD2': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'MD4': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'MD5': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'RIPEMD160': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'SHA1': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'SHA3': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'SHA224': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'SHA256': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'SHA384': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'SHA512': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'TIGER': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'WHIRLPOOL': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.hasher, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'PBKDF2': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(TypedDataTypes.uint8List, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'hasher',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  true),
              BridgeParameter(
                  'iterations',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  true),
              BridgeParameter(
                  'keySize',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  true),
              BridgeParameter(
                  'salt',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(TypedDataTypes.uint8List, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'password',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'blockLength',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: true),
      'EvpKDF': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CryptoDartTypes.evpKDFResult, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'password',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'salt',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(TypedDataTypes.uint8List, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'keySize',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  true),
              BridgeParameter(
                  'ivSize',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  true),
              BridgeParameter(
                  'iterations',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  true),
              BridgeParameter(
                  'hasher',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  true)
            ],
          ),
          isStatic: true),
      'randomUint8List': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(TypedDataTypes.uint8List, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'nBytes',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [CryptoDart] in an [$CryptoDart]
  $CryptoDart.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  CryptoDart get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final CryptoDart $value;

  static const __$static$enc = $Function(_$static$enc);
  static $Value? _$static$enc(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = CryptoDart.enc;
    return $Encoders.wrap($result);
  }

  static const __$static$AES = $Function(_$static$AES);
  static $Value? _$static$AES(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = CryptoDart.AES;
    return $AES.wrap($result);
  }

  static const __$static$TripleDES = $Function(_$static$TripleDES);
  static $Value? _$static$TripleDES(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = CryptoDart.TripleDES;
    return $TripleDES.wrap($result);
  }

  static const __$static$method$MD2 = $Function(_$static$method$MD2);
  static $Value? _$static$method$MD2(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.MD2(
      data,
    ) as MD2;
    return $MD2.wrap($result);
  }

  static const __$static$method$MD4 = $Function(_$static$method$MD4);
  static $Value? _$static$method$MD4(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.MD4(
      data,
    ) as MD4;
    return $MD4.wrap($result);
  }

  static const __$static$method$MD5 = $Function(_$static$method$MD5);
  static $Value? _$static$method$MD5(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.MD5(
      data,
    ) as MD5;
    return $MD5.wrap($result);
  }

  static const __$static$method$RIPEMD160 =
      $Function(_$static$method$RIPEMD160);
  static $Value? _$static$method$RIPEMD160(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.RIPEMD160(
      data,
    ) as RIPEMD160;
    return $RIPEMD160.wrap($result);
  }

  static const __$static$method$SHA1 = $Function(_$static$method$SHA1);
  static $Value? _$static$method$SHA1(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.SHA1(
      data,
    ) as SHA1;
    return $SHA1.wrap($result);
  }

  static const __$static$method$SHA3 = $Function(_$static$method$SHA3);
  static $Value? _$static$method$SHA3(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.SHA3(
      data,
    ) as SHA3;
    return $SHA3.wrap($result);
  }

  static const __$static$method$SHA224 = $Function(_$static$method$SHA224);
  static $Value? _$static$method$SHA224(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.SHA224(
      data,
    ) as SHA224;
    return $SHA224.wrap($result);
  }

  static const __$static$method$SHA256 = $Function(_$static$method$SHA256);
  static $Value? _$static$method$SHA256(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.SHA256(
      data,
    ) as SHA256;
    return $SHA256.wrap($result);
  }

  static const __$static$method$SHA384 = $Function(_$static$method$SHA384);
  static $Value? _$static$method$SHA384(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.SHA384(
      data,
    ) as SHA384;
    return $SHA384.wrap($result);
  }

  static const __$static$method$SHA512 = $Function(_$static$method$SHA512);
  static $Value? _$static$method$SHA512(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.SHA512(
      data,
    ) as SHA512;
    return $SHA512.wrap($result);
  }

  static const __$static$method$TIGER = $Function(_$static$method$TIGER);
  static $Value? _$static$method$TIGER(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.TIGER(
      data,
    ) as TIGER;
    return $TIGER.wrap($result);
  }

  static const __$static$method$WHIRLPOOL =
      $Function(_$static$method$WHIRLPOOL);
  static $Value? _$static$method$WHIRLPOOL(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = args[0]?.$reified as dynamic;
    final $result = CryptoDart.WHIRLPOOL(
      data,
    ) as WHIRLPOOL;
    return $WHIRLPOOL.wrap($result);
  }

  static const __$static$method$PBKDF2 = $Function(_$static$method$PBKDF2);
  static $Value? _$static$method$PBKDF2(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final hasher = args[0]?.$value as String? ?? HashAlgorithms.SHA256;
    final iterations = args[1]?.$value as int? ?? 250000;
    final keySize = args[2]?.$value as int? ?? 4;
    final salt = args[3]?.$reified as Uint8List;
    final password = args[4]?.$reified as dynamic;
    final blockLength = args[5]?.$value as int?;
    final $result = CryptoDart.PBKDF2(
      hasher: hasher,
      iterations: iterations,
      keySize: keySize,
      salt: salt,
      password: password,
      blockLength: blockLength,
    );
    return $Uint8List.wrap($result);
  }

  static const __$static$method$EvpKDF = $Function(_$static$method$EvpKDF);
  static $Value? _$static$method$EvpKDF(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final password = args[0]?.$reified as dynamic;
    final salt = args[1]?.$reified as Uint8List;
    final keySize = args[2]?.$value as int? ?? 4;
    final ivSize = args[3]?.$value as int? ?? 0;
    final iterations = args[4]?.$value as int? ?? 1;
    final hasher = args[5]?.$value as String? ?? 'MD5';
    final $result = CryptoDart.EvpKDF(
      password: password,
      salt: salt,
      keySize: keySize,
      ivSize: ivSize,
      iterations: iterations,
      hasher: hasher,
    );
    return $EvpKDFResult.wrap($result);
  }

  static const __$static$method$randomUint8List =
      $Function(_$static$method$randomUint8List);
  static $Value? _$static$method$randomUint8List(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final nBytes = args[0]?.$value as int;
    final $result = CryptoDart.randomUint8List(
      nBytes,
    );
    return $Uint8List.wrap($result);
  }
}
