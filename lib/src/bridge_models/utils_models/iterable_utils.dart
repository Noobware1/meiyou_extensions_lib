import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/models/utils_models/iterable_utils.dart';

class $IterableUtils extends IterableUtils with $Bridge<IterableUtils> {
  // $IterableUtils.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'IterableUtils.', $new,
        isBridge: true);
    runtime.registerBridgeFunc(
        bridgeLibary, 'IterableUtils.tryElementAt', $tryElementAt);

    runtime.registerBridgeFunc(
        bridgeLibary, 'IterableUtils.mapAsList', $mapAsList);

    runtime.registerBridgeFunc(
        bridgeLibary, 'IterableUtils.mapWithIndex', $mapWithIndex);

    runtime.registerBridgeFunc(
        bridgeLibary, 'IterableUtils.tryfirstWhere', $tryfirstWhere);
  }

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'IterableUtils'));

  static const $param = BridgeParameter(
    'iterable',
    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.iterable)),
    false,
  );

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type), namedParams: [], params: []))
      },
      methods: {
        'tryElementAt': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef.ref('E'),
                    nullable: true),
                params: [
                  $param,
                  BridgeParameter(
                      'index',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
                      false),
                ]),
            isStatic: true),
        'mapAsList': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('T')]),
                    nullable: true),
                params: [
                  $param,
                  BridgeParameter(
                      'toElement',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                      false),
                ],
                generics: {
                  'T': BridgeGenericParam(),
                  'E': BridgeGenericParam(),
                }),
            isStatic: true),
        'mapWithIndex': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('E')]),
                    nullable: true),
                params: [
                  $param,
                  BridgeParameter(
                      'toElement',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                      false),
                ]),
            isStatic: true),
        'tryfirstWhere': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef.ref('E'),
                    nullable: true),
                params: [
                  $param,
                  BridgeParameter(
                      'test',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                      false),
                ],
                namedParams: [
                  BridgeParameter(
                      'orElse',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function),
                          nullable: true),
                      true),
                ]),
            isStatic: true),
      },
      fields: {},
      getters: {},
      setters: {},
      bridge: true);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $IterableUtils();
  }

  static $Value? $tryElementAt(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return IterableUtils.tryElementAt(args[0]?.$value, args[1]?.$value);
  }

  static $Value? $mapAsList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final fun = args[1] as EvalFunction;

    return $List.wrap(IterableUtils.mapAsList(args[0]?.$value, (e) {
      return fun.call(runtime, target, [e as $Value]);
    }));
  }

  static $Value? $mapWithIndex(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final fun = args[1] as EvalFunction;

    return $List.wrap(IterableUtils.mapWithIndex(args[0]?.$value,
        (index, it) => fun.call(runtime, target, [$int(index), it])?.$value));
  }

  static $Value? $tryfirstWhere(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final test = args[1] as EvalFunction;
    final orElse = args[2] as EvalFunction?;

    return IterableUtils.tryfirstWhere<dynamic>(args[0]?.$value as Iterable,
        (element) {
      print(test.call(runtime, target, [(element as $Value?)])?.$value);
      return test.call(runtime, target, [(element)])?.$value;
    },
        orElse: orElse != null
            ? () => orElse.call(runtime, target, [])?.$value
            : null);
  }

  static Iterable<E>? tryWhere<E>(
      Iterable<E> iterable, bool Function(E element) test) {
    try {
      return iterable.where(test);
    } catch (_) {
      return null;
    }
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
