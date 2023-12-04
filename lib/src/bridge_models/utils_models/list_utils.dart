import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/models/utils_models/list_utils.dart';


class $ListUtils implements $Instance {
  $ListUtils.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'ListUtils.', $new);
    runtime.registerBridgeFunc(bridgeLibary, 'ListUtils.mapList', $mapList);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'ListUtils'));

  static const $param = BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('E')]);

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type), namedParams: [], params: []))
      },
      methods: {
        'mapList': BridgeMethodDef(
            BridgeFunctionDef(returns: BridgeTypeAnnotation($param), params: [
              BridgeParameter(
                  'list',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('T')])),
                  false),
              BridgeParameter(
                  'toElement',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                  false)
            ], generics: {
              'T': BridgeGenericParam(),
              'E': BridgeGenericParam()
            }),
            isStatic: true)
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'mapList':
        return $Function($mapList);

      default:
        return $null();
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ListUtils.wrap(ListUtils());
  }

  static $List<$Value> $mapList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final fun = args[1] as EvalCallable;
    
    return $List.wrap(ListUtils.mapList(args[0]?.$value,
        (value) => fun.call(runtime, target, [value as $Value])!));
  }

  @override
  final ListUtils $value;
}
