import 'package:crypto_dart/encoders.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/encoders/encoder.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';

class $UTF16 implements $Instance {
  $UTF16.wrap(this.$value);

  late final $Instance _superclass = $Encoder.wrap($value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(CryptoDartTypes.utf16.library, 'UTF16.', $new);
  }

  static const $type = BridgeTypeRef(CryptoDartTypes.utf16);

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
    return $UTF16.wrap(UTF16());
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  UTF16 get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final UTF16 $value;
}
