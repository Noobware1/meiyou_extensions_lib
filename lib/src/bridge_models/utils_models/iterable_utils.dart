import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/extenstions/value.dart';
import 'package:meiyou_extensions_lib/src/models/utils_models/iterable_utils.dart';

class $IterableUtils implements $Instance {
  $IterableUtils.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'IterableUtils.', $new);
    runtime.registerBridgeFunc(
        bridgeLibary, 'IterableUtils.mapIndexed', $mapIndexed);
    runtime.registerBridgeFunc(
        bridgeLibary, 'IterableUtils.mapNotNull', $mapNotNull);

    runtime.registerBridgeFunc(bridgeLibary, 'IterableUtils.mapWhen', $mapWhen);

    runtime.registerBridgeFunc(
        bridgeLibary, 'IterableUtils.whereNotNull', $whereNotNull);

    runtime.registerBridgeFunc(
        bridgeLibary, 'IterableUtils.firstWhereOrNull', $firstWhereOrNull);
    runtime.registerBridgeFunc(bridgeLibary, 'IterableUtils.faltten', $faltten);
  }

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'IterableUtils'));

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type), namedParams: [], params: []))
      },
      methods: {
        'mapIndexed': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(
                    CoreTypes.iterable, [BridgeTypeRef.ref('B')])),
                params: [
                  BridgeParameter(
                      'iterable',
                      BridgeTypeAnnotation(BridgeTypeRef(
                          CoreTypes.iterable, [BridgeTypeRef.ref('A')])),
                      false),
                  BridgeParameter(
                      'toElement',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                      false)
                ],
                generics: {
                  'A': BridgeGenericParam(),
                  'B': BridgeGenericParam()
                }),
            isStatic: true),
        'mapNotNull': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(
                    CoreTypes.iterable, [BridgeTypeRef.ref('B')])),
                params: [
                  BridgeParameter(
                      'iterable',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.iterable, [
                        BridgeTypeRef.ref('A'),
                        BridgeTypeRef(CoreTypes.nullType)
                      ])),
                      false),
                  BridgeParameter(
                      'toElement',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                      false)
                ],
                generics: {
                  'A': BridgeGenericParam(),
                  'B': BridgeGenericParam()
                }),
            isStatic: true),
        'mapWhen': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(
                    CoreTypes.iterable, [BridgeTypeRef.ref('B')])),
                params: [
                  BridgeParameter(
                      'iterable',
                      BridgeTypeAnnotation(BridgeTypeRef(
                          CoreTypes.iterable, [BridgeTypeRef.ref('A')])),
                      false),
                  BridgeParameter(
                      'toElement',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                      false),
                  BridgeParameter(
                      'test',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                      false)
                ],
                generics: {
                  'A': BridgeGenericParam(),
                  'B': BridgeGenericParam()
                }),
            isStatic: true),
        'whereNotNull': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(
                    CoreTypes.iterable, [BridgeTypeRef.ref('A')])),
                params: [
                  BridgeParameter(
                      'iterable',
                      BridgeTypeAnnotation(
                        BridgeTypeRef(CoreTypes.iterable, [
                          BridgeTypeRef.ref('A'),
                          BridgeTypeRef(CoreTypes.nullType)
                        ]),
                      ),
                      false),
                ],
                generics: {
                  'A': BridgeGenericParam(),
                }),
            isStatic: true),
        'firstWhereOrNull': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef.ref('A'),
                    nullable: true),
                params: [
                  BridgeParameter(
                      'iterable',
                      BridgeTypeAnnotation(
                        BridgeTypeRef(CoreTypes.iterable, [
                          BridgeTypeRef.ref('A'),
                        ]),
                      ),
                      false),
                  BridgeParameter(
                      'test',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                      false)
                ],
                namedParams: [
                  BridgeParameter(
                      'orElse',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function)),
                      true)
                ],
                generics: {
                  'A': BridgeGenericParam(),
                }),
            isStatic: true),
        'faltten': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.iterable, [BridgeTypeRef.ref('A')]),
                    nullable: true),
                params: [
                  BridgeParameter(
                      'iterable',
                      BridgeTypeAnnotation(
                        BridgeTypeRef(CoreTypes.iterable, [
                          BridgeTypeRef(
                              CoreTypes.iterable, [BridgeTypeRef.ref('A')]),
                        ]),
                      ),
                      false),
                ],
                generics: {
                  'A': BridgeGenericParam(),
                }),
            isStatic: true),
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return null;
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $IterableUtils.wrap(IterableUtils());
  }

  static $Iterable<$Value> $mapIndexed(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final fun = args[1] as EvalCallable;

    return $Iterable.wrap(IterableUtils.mapIndexed(
        args[0]?.$value,
        (index, value) =>
            fun.call(runtime, target, [$int(index), value as $Value?])!));
  }

  static $Iterable<$Value> $mapNotNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final fun = args[1] as EvalCallable;

    return $Iterable.wrap(IterableUtils.mapNotNull(args[0]?.$value,
        (value) => fun.call(runtime, target, [value as $Value])!));
  }

  static $Iterable<$Value> $mapWhen(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final fun = args[1] as EvalCallable;
    final test = args[2] as EvalCallable;
    return $Iterable.wrap(
      IterableUtils.mapWhen(
          args[0]?.$value,
          (value) => fun.call(runtime, target, [value as $Value])!,
          (value) =>
              test.call(runtime, target, [value as $Value])!.$value as bool),
    );
  }

  static $Iterable<$Value> $whereNotNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Iterable.wrap(IterableUtils.whereNotNull(args[0]?.$value));
  }

  static $Value? $firstWhereOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final test = args[1] as EvalCallable;
    final orElse = args[2] as EvalCallable?;
    return IterableUtils.firstWhereOrNull(args[0]?.$value,
        (value) => test.call(runtime, target, [value])!.$value as bool,
        orElse:
            orElse == null ? null : () => orElse.call(runtime, target, [])!);
  }

  static $Value $faltten(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Iterable
        .wrap(IterableUtils.faltten(args[0].unwrapIterable<Iterable>()!));
  }

  @override
  final IterableUtils $value;
}
