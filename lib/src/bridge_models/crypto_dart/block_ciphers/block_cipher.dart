// ignore_for_file: non_constant_identifier_names

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/cipher_params.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';
import 'package:crypto_dart/crypto_dart.dart';

class $BlockCipher implements $Instance {
  $BlockCipher.wrap(this.$value);

  static const $type = BridgeTypeRef(CryptoDartTypes.blockCipher);

  static const $encrypt = BridgeMethodDef(
      BridgeFunctionDef(
          returns:
              BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.cipherParams)),
          params: [
            BridgeParameter('plainText',
                BridgeTypeAnnotation(BridgeTypeRef.ref('Text')), false),
            BridgeParameter(
                'key', BridgeTypeAnnotation(BridgeTypeRef.ref('Key')), false),
          ],
          namedParams: [
            BridgeParameter(
                'options',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CryptoDartTypes.cipherOptions),
                    nullable: true),
                true)
          ],
          generics: {
            'Text': BridgeGenericParam(),
            'Key': BridgeGenericParam(),
          }),
      isStatic: false);

  static const $decrypt = BridgeMethodDef(BridgeFunctionDef(
      returns: BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List)),
      params: [
        BridgeParameter('ciphertext',
            BridgeTypeAnnotation(BridgeTypeRef.ref('Text')), false),
        BridgeParameter(
            'key', BridgeTypeAnnotation(BridgeTypeRef.ref('Key')), false),
      ],
      namedParams: [
        BridgeParameter(
            'options',
            BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.cipherOptions),
                nullable: true),
            true)
      ],
      generics: {
        'Text': BridgeGenericParam(),
        'Key': BridgeGenericParam(),
      }));

  static const $declaration = BridgeClassDef(
      BridgeClassType($type, isAbstract: true),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
          ),
        ),
      },
      methods: {
        'encrypt': $BlockCipher.$encrypt,
        'decrypt': $BlockCipher.$decrypt
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'encrypt':
        return const $Function($_encrypt);
      case 'decrypt':
        return const $Function($_decrypt);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  late final $Instance _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  BlockCipher get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) =>
      _superclass.$setProperty(runtime, identifier, value);

  static $Value? $_encrypt(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $CipherParams.wrap((target!.$value as BlockCipher).encrypt(
      args[0]?.$reified,
      args[1]?.$reified,
      options: args[2]?.$reified,
    ));
  }

  static $Value? $_decrypt(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Uint8List.wrap((target!.$value as BlockCipher).decrypt(
      args[0]?.$reified,
      args[1]?.$reified,
      options: args[2]?.$reified,
    ));
  }

  @override
  final BlockCipher $value;
}
