import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/models/utils_models/num_utils.dart';

class $NumUtils extends NumUtils with $Bridge<NumUtils> {
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'NumUtils.', $new, isBridge: true);
    runtime.registerBridgeFunc(bridgeLibary, 'NumUtils.compareTo', $compareTo);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'NumUtils'));

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type), namedParams: [], params: []))
      },
      methods: {
        'compareTo': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
                params: [
                  BridgeParameter(
                      'a',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                      false),
                  BridgeParameter(
                      'b',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                      false),
                ]),
            isStatic: true)
      },
      bridge: true);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $NumUtils();
  }

  static $Value? $compareTo(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $int(NumUtils.compareTo(args[0]?.$value, args[1]?.$value));
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
