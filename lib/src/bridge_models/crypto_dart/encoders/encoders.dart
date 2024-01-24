import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:crypto_dart/encoders.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';
import 'base64.dart';
import 'hex.dart';
import 'utf16.dart';
import 'utf8.dart';

class $Encoders implements $Instance {
  $Encoders.wrap(this.$value);

  late final $Instance _superclass = $Object($value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        CryptoDartTypes.encoders.library, 'Encoders.', $new);
  }

  static const $type = BridgeTypeRef(CryptoDartTypes.encoders);

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
          ),
        ),
      },
      getters: {
        'BASE64': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
              BridgeTypeRef(CryptoDartTypes.base64),
            ),
          ),
        ),
        'HEX': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
              BridgeTypeRef(CryptoDartTypes.hex),
            ),
          ),
        ),
        'UTF8': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
              BridgeTypeRef(CryptoDartTypes.utf8),
            ),
          ),
        ),
        'UTF16': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
              BridgeTypeRef(CryptoDartTypes.utf16),
            ),
          ),
        ),
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'BASE64':
        return $Base64.wrap($value.BASE64);
      case 'HEX':
        return $Hex.wrap($value.HEX);
      case 'UTF8':
        return $Utf8.wrap($value.UTF8);
      case 'UTF16':
        return $Utf16.wrap($value.UTF16);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) =>
      runtime.lookupType(CryptoDartTypes.encoders);

  @override
  Encoders get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Encoders.wrap(Encoders());
  }

  @override
  final Encoders $value;
}
