import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/extenstions.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/crypto/crypto_options.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/models/utils_models/crypto/crypto_utils.dart';
import 'package:meiyou_extensions_lib/src/utils/unwrap.dart';

class $CryptoUtils extends CryptoUtils with $Bridge {
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'CryptoUtils.', $new,
        isBridge: true);
    runtime.registerBridgeFunc(bridgeLibary, 'CryptoUtils.AES', $AES);

    runtime.registerBridgeFunc(
        bridgeLibary, 'CryptoUtils.TripleDES', $TripleDES);
    runtime.registerBridgeFunc(
        bridgeLibary, 'CryptoUtils.HashString', $HashString);
    runtime.registerBridgeFunc(
        bridgeLibary, 'CryptoUtils.EncStringify', $EncStringify);
    runtime.registerBridgeFunc(bridgeLibary, 'CryptoUtils.EncParse', $EncParse);
  }

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'CryptoUtils'));

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type), namedParams: [], params: []))
      },
      methods: {
        'AES': BridgeMethodDef(
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
                BridgeParameter('encrypt',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)), false),
                BridgeParameter(
                    'options',
                    BridgeTypeAnnotation($CryptoOptions.$type, nullable: true),
                    true),
              ],
            ),
            isStatic: true),
        'TripleDES': BridgeMethodDef(
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
                BridgeParameter('encrypt',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)), false),
                BridgeParameter(
                    'options',
                    BridgeTypeAnnotation($CryptoOptions.$type, nullable: true),
                    true),
              ],
            ),
            isStatic: true),
        'HashString': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [
                BridgeParameter(
                    'hasher',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false),
                BridgeParameter(
                    'data',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                    false),
              ],
            ),
            isStatic: true),
        'EncStringify': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [
                BridgeParameter(
                    'name',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false),
                BridgeParameter(
                    'data',
                    BridgeTypeAnnotation(BridgeTypeRef(
                        CoreTypes.list, [BridgeTypeRef(CoreTypes.int)])),
                    false),
              ],
            ),
            isStatic: true),
        'EncParse': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(
                  CoreTypes.list, [BridgeTypeRef(CoreTypes.int)])),
              params: [
                BridgeParameter(
                    'name',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false),
                BridgeParameter(
                    'data',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false),
              ],
            ),
            isStatic: true),
      },
      bridge: true);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $CryptoUtils();
  }

  static $Value? $AES(Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(CryptoUtils.AES(
      ciphertext: args[0]?.$value,
      key: args[1]?.$value,
      encrypt: args[2]?.$value,
      options: args[3]?.$value,
    ));
  }

  static $Value? $TripleDES(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(CryptoUtils.TripleDES(
      ciphertext: args[0]?.$value,
      key: args[1]?.$value,
      encrypt: args[2]?.$value,
      options: args[3]?.$value,
    ));
  }

  static $Value? $HashString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(CryptoUtils.HashString(
      args[0]?.$value,
      args[1]?.$value,
    ));
  }

  static $Value? $EncStringify(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(CryptoUtils.EncStringify(
      args[0]?.$value,
      unwrapList<int>(args[1]?.$value),
    ));
  }

  static $Value? $EncParse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $List.wrap(CryptoUtils.EncParse(
      args[0]?.$value,
      args[1]?.$value,
    ).mapAsList((e) => $int(e)));
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
}
