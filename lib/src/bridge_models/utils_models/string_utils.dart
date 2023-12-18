import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/models/utils_models/string_utils.dart';

class $StringUtils implements $Instance {
  $StringUtils.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'StringUtils.', $new);
    runtime.registerBridgeFunc(bridgeLibary, 'StringUtils.toNum', $toNum);

    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.toNumOrNull', $toNumOrNull);

    runtime.registerBridgeFunc(bridgeLibary, 'StringUtils.toInt', $toInt);

    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.toIntOrNull', $toIntOrNull);

    runtime.registerBridgeFunc(bridgeLibary, 'StringUtils.toDouble', $toDouble);

    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.toDoubleOrNull', $toDoubleOrNull);
    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.substringBefore', $substringBefore);
    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.substringAfter', $substringAfter);
    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.substringBeforeLast', $substringBeforeLast);
    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.substringAfterLast', $substringAfterLast);
    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.toUpperCaseFirst', $toUpperCaseFirst);

    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.trimNewLines', $trimNewLines);
    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.substringSafe', $substringSafe);

    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.trimAllSides', $trimAllSides);
    runtime.registerBridgeFunc(
        bridgeLibary, 'StringUtils.valueToString', $valueToString);
  }

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'StringUtils'));

  static const $param = BridgeParameter(
      'str', BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false);

  static const $patterParam = BridgeParameter(
      'pattern', BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false);

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type), namedParams: [], params: []))
      },
      methods: {
        'toNum': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num)),
                params: [$param]),
            isStatic: true),
        'toNumOrNull': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num),
                  nullable: true),
              params: [$param],
            ),
            isStatic: true),
        'toInt': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
              params: [$param],
            ),
            isStatic: true),
        'toIntOrNull': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                  nullable: true),
              params: [$param],
            ),
            isStatic: true),
        'toDouble': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double)),
              params: [$param],
            ),
            isStatic: true),
        'toDoubleOrNull': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double),
                  nullable: true),
              params: [$param],
            ),
            isStatic: true),
        'trimNewLines': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [$param],
            ),
            isStatic: true),
        'substringBefore': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [$param, $patterParam],
            ),
            isStatic: true),
        'substringAfter': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [$param, $patterParam],
            ),
            isStatic: true),
        'substringBeforeLast': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [$param, $patterParam],
            ),
            isStatic: true),
        'substringAfterLast': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [$param, $patterParam],
            ),
            isStatic: true),
        'toUpperCaseFirst': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [$param],
            ),
            isStatic: true),
        'substringSafe': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [
                $param,
                BridgeParameter('start',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)), false),
                BridgeParameter(
                    'end',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                        nullable: true),
                    true),
              ],
            ),
            isStatic: true),
        'trimAllSides': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [$param],
            ),
            isStatic: true),
        'valueToString': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [
                BridgeParameter(
                    'value',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic),
                        nullable: true),
                    false)
              ],
            ),
            isStatic: true),
      },
      fields: {},
      getters: {},
      setters: {},
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
    // return $null();
  }

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $StringUtils.wrap(StringUtils());
  }

  static $Value? $toNum(Runtime runtime, $Value? target, List<$Value?> args) {
    return $num(StringUtils.toNum(args[0]?.$value));
  }

  static $Value? $toNumOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = StringUtils.toNumOrNull(args[0]?.$value);
    if (value == null) return const $null();
    return $num(value);
  }

  static $Value? $toInt(Runtime runtime, $Value? target, List<$Value?> args) {
    return $int(StringUtils.toInt(args[0]?.$value));
  }

  static $Value? $toIntOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = StringUtils.toIntOrNull(args[0]?.$value);
    return value == null ? const $null() : $int(value);
  }

  static $Value? $toDouble(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $double(StringUtils.toDouble(args[0]?.$value));
  }

  static $Value? $toDoubleOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = StringUtils.toDoubleOrNull(args[0]?.$value);
    return value == null ? const $null() : $double(value);
  }

  static $Value? $trimNewLines(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(StringUtils.trimNewLines(args[0]?.$value));
  }

  static $Value? $substringBefore(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(
        StringUtils.substringBefore(args[0]?.$value, args[1]?.$value));
  }

  static $Value? $substringAfter(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(
        StringUtils.substringAfter(args[0]?.$value, args[1]?.$value));
  }

  static $Value? $substringBeforeLast(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(
        StringUtils.substringBeforeLast(args[0]?.$value, args[1]?.$value));
  }

  static $Value? $substringAfterLast(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(
        StringUtils.substringAfterLast(args[0]?.$value, args[1]?.$value));
  }

  static $Value? $toUpperCaseFirst(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(StringUtils.toUpperCaseFirst(args[0]?.$value));
  }

  static $Value? $substringSafe(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(StringUtils.substringSafe(
        args[0]?.$value, args[1]?.$value, args[2]?.$value));
  }

  static $Value? $trimAllSides(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(StringUtils.trimAllSides(args[0]?.$value));
  }

  static $Value? $valueToString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(StringUtils.valueToString(args[0]?.$value));
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    // TODO: implement $setProperty
  }

  @override
  final StringUtils $value;
}
