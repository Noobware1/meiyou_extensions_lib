import 'package:crypto_dart/crypto_dart.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';

/// dart_eval bimodal wrapper for [HashAlgorithms]
class $HashAlgorithms implements HashAlgorithms, $Instance {
  /// Configure the [$HashAlgorithms] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.', __$HashAlgorithms$new.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.SHA512*g', __$static$SHA512.call);
    runtime.registerBridgeFunc($type.spec!.library, 'HashAlgorithms.BLAKE2B*g',
        __$static$BLAKE2B.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.MD2*g', __$static$MD2.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.MD4*g', __$static$MD4.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.MD5*g', __$static$MD5.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'HashAlgorithms.RIPEMD128*g', __$static$RIPEMD128.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'HashAlgorithms.RIPEMD160*g', __$static$RIPEMD160.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'HashAlgorithms.RIPEMD256*g', __$static$RIPEMD256.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'HashAlgorithms.RIPEMD320*g', __$static$RIPEMD320.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.SHA1*g', __$static$SHA1.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.SHA3*g', __$static$SHA3.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.SHA224*g', __$static$SHA224.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.SHA256*g', __$static$SHA256.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.SHA384*g', __$static$SHA384.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.SM3*g', __$static$SM3.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HashAlgorithms.TIGER*g', __$static$TIGER.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'HashAlgorithms.WHIRLPOOL*g', __$static$WHIRLPOOL.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(CryptoDartTypes.hashAlgorithms);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {},
    fields: {
      'SHA512': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'BLAKE2B': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'MD2': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'MD4': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'MD5': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'RIPEMD128': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'RIPEMD160': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'RIPEMD256': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'RIPEMD320': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'SHA1': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'SHA3': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'SHA224': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'SHA256': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'SHA384': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'SM3': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'TIGER': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
      'WHIRLPOOL': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: true),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [HashAlgorithms] in an [$HashAlgorithms]
  $HashAlgorithms.wrap(this.$value);

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
  HashAlgorithms get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final HashAlgorithms $value;

  static const __$static$SHA512 = $Function(_$static$SHA512);
  static $Value? _$static$SHA512(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.SHA512;
    return $String($result);
  }

  static const __$static$BLAKE2B = $Function(_$static$BLAKE2B);
  static $Value? _$static$BLAKE2B(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.BLAKE2B;
    return $String($result);
  }

  static const __$static$MD2 = $Function(_$static$MD2);
  static $Value? _$static$MD2(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.MD2;
    return $String($result);
  }

  static const __$static$MD4 = $Function(_$static$MD4);
  static $Value? _$static$MD4(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.MD4;
    return $String($result);
  }

  static const __$static$MD5 = $Function(_$static$MD5);
  static $Value? _$static$MD5(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.MD5;
    return $String($result);
  }

  static const __$static$RIPEMD128 = $Function(_$static$RIPEMD128);
  static $Value? _$static$RIPEMD128(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.RIPEMD128;
    return $String($result);
  }

  static const __$static$RIPEMD160 = $Function(_$static$RIPEMD160);
  static $Value? _$static$RIPEMD160(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.RIPEMD160;
    return $String($result);
  }

  static const __$static$RIPEMD256 = $Function(_$static$RIPEMD256);
  static $Value? _$static$RIPEMD256(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.RIPEMD256;
    return $String($result);
  }

  static const __$static$RIPEMD320 = $Function(_$static$RIPEMD320);
  static $Value? _$static$RIPEMD320(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.RIPEMD320;
    return $String($result);
  }

  static const __$static$SHA1 = $Function(_$static$SHA1);
  static $Value? _$static$SHA1(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.SHA1;
    return $String($result);
  }

  static const __$static$SHA3 = $Function(_$static$SHA3);
  static $Value? _$static$SHA3(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.SHA3;
    return $String($result);
  }

  static const __$static$SHA224 = $Function(_$static$SHA224);
  static $Value? _$static$SHA224(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.SHA224;
    return $String($result);
  }

  static const __$static$SHA256 = $Function(_$static$SHA256);
  static $Value? _$static$SHA256(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.SHA256;
    return $String($result);
  }

  static const __$static$SHA384 = $Function(_$static$SHA384);
  static $Value? _$static$SHA384(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.SHA384;
    return $String($result);
  }

  static const __$static$SM3 = $Function(_$static$SM3);
  static $Value? _$static$SM3(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.SM3;
    return $String($result);
  }

  static const __$static$TIGER = $Function(_$static$TIGER);
  static $Value? _$static$TIGER(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.TIGER;
    return $String($result);
  }

  static const __$static$WHIRLPOOL = $Function(_$static$WHIRLPOOL);
  static $Value? _$static$WHIRLPOOL(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = HashAlgorithms.WHIRLPOOL;
    return $String($result);
  }

  static const __$HashAlgorithms$new = $Function(_$HashAlgorithms$new);
  static $Value? _$HashAlgorithms$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $HashAlgorithms.wrap(HashAlgorithms());
  }
}

