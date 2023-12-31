import 'dart:typed_data';

import 'package:crypto_dart/crypto_dart.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/types.dart';

import 'mode.dart';
import 'padding.dart';

class $CipherParams implements CipherParams, $Instance {
  $CipherParams.wrap(this.$value);

  late final $Instance _superclass = $Object($value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        CryptoDartTypes.cipherParams.library, 'CipherParams.', $new);
  }

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      BridgeTypeRef(CryptoDartTypes.cipherParams),
    ),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(
          returns:
              BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.cipherParams)),
          namedParams: [
            BridgeParameter(
                'key',
                BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List)),
                false),
            BridgeParameter(
                'iv',
                BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List)),
                false),
            BridgeParameter(
                'salt',
                BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List),
                    nullable: true),
                false),
            BridgeParameter(
                'cipherText',
                BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List)),
                false),
            BridgeParameter(
                'mode',
                BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.mode)),
                false),
            BridgeParameter(
                'padding',
                BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.padding),
                    nullable: true),
                false),
          ]))
    },
    fields: {
      'key': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List))),
      'iv': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List))),
      'salt': BridgeFieldDef(BridgeTypeAnnotation(
          BridgeTypeRef(TypedDataTypes.uint8List),
          nullable: true)),
      'cipherText': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List))),
      'mode': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.mode))),
      'padding': BridgeFieldDef(BridgeTypeAnnotation(
          BridgeTypeRef(CryptoDartTypes.padding),
          nullable: true)),
    },
    methods: {
      'toString': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
          params: [
            BridgeParameter(
                'encoder',
                BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.encoder),
                    nullable: true),
                true)
          ]))
    },
    bridge: false,
    wrap: true,
  );

  static $Value? $new(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    return $CipherParams.wrap(CipherParams(
      key: args[0]!.$value,
      iv: args[1]!.$value,
      salt: args[2]?.$value,
      cipherText: args[3]!.$value,
      mode: args[4]!.$value,
      padding: args[5]?.$value,
    ));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'cipherText':
        return $Uint8List.wrap(cipherText);
      case 'iv':
        return $Uint8List.wrap(iv);
      case 'key':
        return $Uint8List.wrap(key);
      case 'mode':
        return $Mode.wrap(mode);
      case 'padding':
        return padding == null ? const $null() : $Padding.wrap(padding!);
      case 'salt':
        return salt == null ? const $null() : $Uint8List.wrap(salt!);
      case 'toString':
        return const $Function($_toString);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) =>
      runtime.lookupType(CryptoDartTypes.cipherParams);

  @override
  CipherParams get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final CipherParams $value;

  @override
  Uint8List get cipherText => $value.cipherText;

  @override
  Uint8List get iv => $value.iv;

  @override
  Uint8List get key => $value.key;

  @override
  Mode get mode => $value.mode;

  @override
  Padding? get padding => $value.padding;

  @override
  Uint8List? get salt => $value.salt;

  @override
  String toString([Encoder? encoder]) {
    return $value.toString(encoder);
  }

  static $Value? $_toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String((target!.$value as CipherParams).toString(args[0]?.$value));
  }
}
