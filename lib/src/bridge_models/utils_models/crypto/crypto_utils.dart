import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/bridge_models/utils_models/crypto/crypto_options.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/models/utils_models/crypto/crypto_utils.dart';

class $CryptoUtils extends CryptoUtils with $Bridge {
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'CryptoUtils.', $new,
        isBridge: true);
    runtime.registerBridgeFunc(
        bridgeLibary, 'CryptoUtils.cryptoJsAes', $cryptoJsAes);
  }

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'CryptoUtils'));

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type), namedParams: [], params: []))
      },
      methods: {
        'cryptoJsAes': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              namedParams: [
                BridgeParameter(
                    'ciphertext',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false),
                BridgeParameter(
                    'key',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false),
                BridgeParameter(
                    'iv',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                        nullable: true),
                    true),
                BridgeParameter('encrypt',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)), false),
                BridgeParameter(
                    'options',
                    BridgeTypeAnnotation($CryptoOptions.$type, nullable: true),
                    true),
              ],
            ),
            isStatic: true)
      },
      bridge: true);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $CryptoUtils();
  }

  static $Value? $cryptoJsAes(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(CryptoUtils.cryptoJsAes(
      ciphertext: args[0]?.$value,
      key: args[1]?.$value,
      iv: args[2]?.$value,
      encrypt: args[3]?.$value,
      options: args[4]?.$value,
    ));
  }

  @override
  $Value? $bridgeGet(String identifier) {
    // TODO: implement $bridgeGet
    throw UnimplementedError();
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    // TODO: implement $bridgeSet
  }

  // @override
  // final CryptoUtils $value;
}
