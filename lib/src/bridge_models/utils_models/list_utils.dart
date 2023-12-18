import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/models/utils_models/list_utils.dart';
import 'package:meiyou_extenstions/src/utils/unwrap.dart';

class $ListUtils implements $Instance {
  $ListUtils.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'ListUtils.', $new);
    runtime.registerBridgeFunc(bridgeLibary, 'ListUtils.map', $map);
    runtime.registerBridgeFunc(
        bridgeLibary, 'ListUtils.mapIndexed', $mapIndexed);
    runtime.registerBridgeFunc(
        bridgeLibary, 'ListUtils.mapNotNull', $mapNotNull);
    runtime.registerBridgeFunc(
        bridgeLibary, 'ListUtils.whereNotNull', $whereNotNull);
    runtime.registerBridgeFunc(
        bridgeLibary, 'ListUtils.firstWhereOrNull', $firstWhereOrNull);
    runtime.registerBridgeFunc(bridgeLibary, 'ListUtils.faltten', $faltten);
    runtime.registerBridgeFunc(
        bridgeLibary, 'ListUtils.addIfNotNull', $addIfNotNull);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'ListUtils'));

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type), namedParams: [], params: []))
      },
      methods: {
        'map': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('B')])),
                params: [
                  BridgeParameter(
                      'list',
                      BridgeTypeAnnotation(BridgeTypeRef(
                          CoreTypes.list, [BridgeTypeRef.ref('A')])),
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
        'mapIndexed': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('B')])),
                params: [
                  BridgeParameter(
                      'list',
                      BridgeTypeAnnotation(BridgeTypeRef(
                          CoreTypes.list, [BridgeTypeRef.ref('A')])),
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
                returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('B')])),
                params: [
                  BridgeParameter(
                      'list',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list, [
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
        'whereNotNull': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('A')])),
                params: [
                  BridgeParameter(
                      'list',
                      BridgeTypeAnnotation(
                        BridgeTypeRef(CoreTypes.list, [
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
                      'list',
                      BridgeTypeAnnotation(
                        BridgeTypeRef(CoreTypes.list, [
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
                    BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('A')]),
                    nullable: true),
                params: [
                  BridgeParameter(
                      'list',
                      BridgeTypeAnnotation(
                        BridgeTypeRef(CoreTypes.list, [
                          BridgeTypeRef(
                              CoreTypes.list, [BridgeTypeRef.ref('A')]),
                        ]),
                      ),
                      false),
                ],
                generics: {
                  'A': BridgeGenericParam(),
                }),
            isStatic: true),
        'addIfNotNull': BridgeMethodDef(
            BridgeFunctionDef(
                returns:
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
                params: [
                  BridgeParameter(
                      'list',
                      BridgeTypeAnnotation(
                        BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('A')]),
                      ),
                      false),
                  BridgeParameter(
                      'value',
                      BridgeTypeAnnotation(BridgeTypeRef.ref('A'),
                          nullable: true),
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
    switch (identifier) {
      case 'map':
        return $Function($map);

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

  static $List<$Value> $map(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final fun = args[1] as EvalCallable;

    return $List.wrap(ListUtils.map(args[0]?.$value,
        (value) => fun.call(runtime, target, [value as $Value?])!));
  }

  static $List<$Value> $mapIndexed(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final fun = args[1] as EvalCallable;

    return $List.wrap(ListUtils.mapIndexed(
        args[0]?.$value,
        (index, value) =>
            fun.call(runtime, target, [$int(index), value as $Value?])!));
  }

  static $List<$Value> $mapNotNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final fun = args[1] as EvalCallable;

    return $List.wrap(ListUtils.mapNotNull(args[0]?.$value,
        (value) => fun.call(runtime, target, [value as $Value])!));
  }

  static $List<$Value> $whereNotNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $List.wrap(ListUtils.whereNotNull(args[0]?.$value));
  }

  static $Value? $firstWhereOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final test = args[1] as EvalCallable;
    final orElse = args[2] as EvalCallable?;
    return ListUtils.firstWhereOrNull(args[0]?.$value,
        (value) => test.call(runtime, target, [value])!.$value as bool,
        orElse:
            orElse == null ? null : () => orElse.call(runtime, target, [])!);
  }

  static $Value $faltten(Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]!.$value as List;
    return $List.wrap(ListUtils.faltten(
        list is List<$Value> ? unwrapList<List>(list) : list as List<List>));
  }

  static $Value? $addIfNotNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = args[0]!.$value as List;
    final value = list is List<$Value> ? args[1] : args[1]!.$value;
    ListUtils.addIfNotNull(list, value);
    return null;
  }

  @override
  final ListUtils $value;
}
