import 'package:crypto_dart/crypto_dart.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/types.dart';

import 'mode.dart';
import 'padding.dart';

class $CipherOptions implements $Instance {
  $CipherOptions.wrap(this.$value);

  late final _superclass = $Object($value);

  static const $type = BridgeTypeRef(CryptoDartTypes.cipherOptions);

  static configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'CipherOptions.', $new);
  }

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
    ),
    constructors: {
      '': BridgeConstructorDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
        BridgeParameter(
            'iv',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic),
                nullable: true),
            true),
        BridgeParameter(
            'padding',
            BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.padding),
                nullable: true),
            true),
        BridgeParameter(
            'salt',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic),
                nullable: true),
            true),
        BridgeParameter(
            'textEncoding',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                nullable: true),
            true),
        BridgeParameter(
            'ivEncoding',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                nullable: true),
            true),
        BridgeParameter(
            'keyEncoding',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                nullable: true),
            true),
        BridgeParameter(
            'saltEncoding',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                nullable: true),
            true),
        BridgeParameter(
            'mode',
            BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.mode),
                nullable: true),
            true),
      ]))
    },
    fields: {
      'iv': BridgeFieldDef(BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.dynamic),
          nullable: true)),
      'padding': BridgeFieldDef(BridgeTypeAnnotation(
          BridgeTypeRef(CryptoDartTypes.padding),
          nullable: true)),
      'salt': BridgeFieldDef(BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.dynamic),
          nullable: true)),
      'textEncoding': BridgeFieldDef(BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string),
          nullable: true)),
      'ivEncoding': BridgeFieldDef(BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string),
          nullable: true)),
      'keyEncoding': BridgeFieldDef(BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string),
          nullable: true)),
      'saltEncoding': BridgeFieldDef(BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string),
          nullable: true)),
      'mode': BridgeFieldDef(BridgeTypeAnnotation(
          BridgeTypeRef(CryptoDartTypes.mode),
          nullable: true)),
    },
    bridge: false,
    wrap: true,
  );

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'iv':
        return $value.iv == null ? const $null() : runtime.wrap($value.iv);
      case 'salt':
        return $value.salt == null ? const $null() : runtime.wrap($value.iv);
      case 'keyEncoding':
        return $value.keyEncoding == null
            ? const $null()
            : $String($value.keyEncoding!);
      case 'ivEncoding':
        return $value.ivEncoding == null
            ? const $null()
            : $String($value.ivEncoding!);
      case 'saltEncoding':
        return $value.saltEncoding == null
            ? const $null()
            : $String($value.saltEncoding!);
      case 'textEncoding':
        return $value.textEncoding == null
            ? const $null()
            : $String($value.textEncoding!);
      case 'mode':
        return $value.mode == null ? const $null() : $Mode.wrap($value.mode!);
      case 'padding':
        return $value.padding == null
            ? const $null()
            : $Padding.wrap($value.padding!);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  CipherOptions get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final CipherOptions $value;

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $CipherOptions.wrap(CipherOptions(
      iv: args[0]?.$reified,
      padding: args[1]?.$value,
      salt: args[2]?.$reified,
      textEncoding: args[3]?.$value,
      ivEncoding: args[4]?.$value,
      keyEncoding: args[5]?.$value,
      saltEncoding: args[6]?.$value,
      mode: args[7]?.$value,
    ));
  }
}
