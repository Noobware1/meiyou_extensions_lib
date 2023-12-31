import 'package:dart_eval/dart_eval.dart';
import 'package:crypto_dart/encoders.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/encoders/encoder.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/types.dart';

class $Base64 implements $Instance {
  $Base64.wrap(this.$value);

  late final $Instance _superclass = $Encoder.wrap($value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(CryptoDartTypes.base64.library, 'Base64.', $new);
  }



  static const $type = BridgeTypeRef(CryptoDartTypes.base64);

  static const $declaration = BridgeClassDef(
      BridgeClassType($type, $extends: BridgeTypeRef(CryptoDartTypes.encoder)),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
          ),
        ),
      },
      wrap: true);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Base64.wrap(Base64());
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Base64 get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final Base64 $value;
}
