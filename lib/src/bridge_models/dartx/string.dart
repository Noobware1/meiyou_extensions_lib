// import 'package:dartx/src/extensions/iterable.dart';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/io.dart';
import 'package:dartx/dartx.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/plugin.dart';

class StringUtils {
  const StringUtils();

  static String? orEmpty(String? str) => str.orEmpty();

  static int lastIndex(String str) => str.lastIndex;

  static String capitalize(String str) => str.captialize();

  static String decapitalize(String str) => str.decapitalize();

  static String get(String str, int index) => str.get(index);

  static String? getOrNull(String str, int index) => str.getOrNull(index);

  static String getOrElse(
          String str, int index, String Function(int index) defaultValue) =>
      str.getOrElse(index, defaultValue);

  static String plus(String str, dynamic other) => str.plus(other);

  static String? max(String str) => str.max;

  static String? min(String str) => str.min;

  static bool equals(String str, String other, {ignoreCase = false}) =>
      str.equals(other, ignoreCase: ignoreCase);

  static String drop(String str, int n) => str.drop(n);

  static String dropLast(String str, int n) => str.dropLast(n);

  static String filter(String str, bool Function(String it) predicate) =>
      str.filter(predicate);

  static StringSink filterTo(
          String str, StringSink c, bool Function(String it) predicate) =>
      str.filterTo(c, predicate);

  static String filterIndexed(
          String str, bool Function(int index, String it) predicate) =>
      str.filterIndexed(predicate);

  static StringSink filterIndexedTo(String str, StringSink destination,
          bool Function(int index, String it) predicate) =>
      str.filterIndexedTo(destination, predicate);

  static String filterNot(String str, bool Function(String it) predicate) =>
      str.filterNot(predicate);

  static StringSink filterNotTo(String str, StringSink destination,
          bool Function(String it) predicate) =>
      str.filterNotTo(destination, predicate);

  static String dropWhile(String str, bool Function(String it) predicate) =>
      str.dropWhile(predicate);

  static String dropLastWhile(String str, bool Function(String it) predicate) =>
      str.dropLastWhile(predicate);

  static String take(String str, int n) => str.take(n);

  static String takeLast(String str, int n) => str.takeLast(n);

  static String takeWhile(String str, bool Function(String it) predicate) =>
      str.takeWhile(predicate);

  static String takeLastWhile(String str, bool Function(String it) predicate) =>
      str.takeLastWhile(predicate);

  static RegExp toRegex(String str) => str.toRegex();

  static List<String> toList(String str) => str.toList();

  static int codeUnitBefore(String str, int index) => str.codeUnitBefore(index);

  static String reversed(String str) => str.reversed;

  static num toNum(String str) => str.toNum();

  static int toInt(String str) => str.toInt();

  static double toDouble(String str) => str.toDouble();

  static String substringBefore(String str, String pattern) =>
      str.substringBefore(pattern);

  static String substringAfter(String str, String pattern) =>
      str.substringAfter(pattern);

  static String substringBeforeLast(String str, String pattern) =>
      str.substringBeforeLast(pattern);

  static String substringAfterLast(String str, String pattern) =>
      str.substringAfterLast(pattern);

  static num? toNumOrNull(String? str) => str.toNumOrNull();

  static int? toIntOrNull(String? str) => str.toIntOrNull();

  static double? toDoubleOrNull(String? str) => str.toDoubleOrNull();

  static String valueToString(dynamic value) => value.toString();
}

/// dart_eval bimodal wrapper for [StringUtils]
class $StringUtils implements StringUtils, $Instance {
  /// Configure the [$StringUtils] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'StringUtils.', __$StringUtils$new.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.orEmpty',
        __$static$method$orEmpty.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.lastIndex',
        __$static$method$lastIndex.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.capitalize',
        __$static$method$capitalize.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.decapitalize',
        __$static$method$decapitalize.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'StringUtils.get', __$static$method$get.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.getOrNull',
        __$static$method$getOrNull.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.getOrElse',
        __$static$method$getOrElse.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'StringUtils.plus', __$static$method$plus.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'StringUtils.max', __$static$method$max.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'StringUtils.min', __$static$method$min.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.equals',
        __$static$method$equals.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'StringUtils.drop', __$static$method$drop.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.dropLast',
        __$static$method$dropLast.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.filter',
        __$static$method$filter.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.filterTo',
        __$static$method$filterTo.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.filterIndexed',
        __$static$method$filterIndexed.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'StringUtils.filterIndexedTo', __$static$method$filterIndexedTo.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.filterNot',
        __$static$method$filterNot.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.filterNotTo',
        __$static$method$filterNotTo.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.dropWhile',
        __$static$method$dropWhile.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.dropLastWhile',
        __$static$method$dropLastWhile.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'StringUtils.take', __$static$method$take.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.takeLast',
        __$static$method$takeLast.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.takeWhile',
        __$static$method$takeWhile.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.takeLastWhile',
        __$static$method$takeLastWhile.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.toRegex',
        __$static$method$toRegex.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.toList',
        __$static$method$toList.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'StringUtils.codeUnitBefore', __$static$method$codeUnitBefore.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.reversed',
        __$static$method$reversed.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'StringUtils.toNum', __$static$method$toNum.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'StringUtils.toInt', __$static$method$toInt.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.toDouble',
        __$static$method$toDouble.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'StringUtils.substringBefore', __$static$method$substringBefore.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'StringUtils.substringAfter', __$static$method$substringAfter.call);
    runtime.registerBridgeFunc(
        $type.spec!.library,
        'StringUtils.substringBeforeLast',
        __$static$method$substringBeforeLast.call);
    runtime.registerBridgeFunc(
        $type.spec!.library,
        'StringUtils.substringAfterLast',
        __$static$method$substringAfterLast.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.toNumOrNull',
        __$static$method$toNumOrNull.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.toIntOrNull',
        __$static$method$toIntOrNull.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'StringUtils.toDoubleOrNull', __$static$method$toDoubleOrNull.call);
    runtime.registerBridgeFunc($type.spec!.library, 'StringUtils.valueToString',
        __$static$method$valueToString.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(DartXTypes.stringUtils);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {
      'orEmpty': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'lastIndex': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'capitalize': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'decapitalize': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'get': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'getOrNull': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'getOrElse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'defaultValue',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'plus': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'other',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'max': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'min': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'equals': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'other',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [
              BridgeParameter(
                  'ignoreCase',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  true)
            ],
          ),
          isStatic: true),
      'drop': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'n',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'dropLast': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'n',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'filter': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'filterTo': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(IoTypes.stringSink, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'c',
                  BridgeTypeAnnotation(BridgeTypeRef(IoTypes.stringSink, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'filterIndexed': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'filterIndexedTo': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(IoTypes.stringSink, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'destination',
                  BridgeTypeAnnotation(BridgeTypeRef(IoTypes.stringSink, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'filterNot': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'filterNotTo': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(IoTypes.stringSink, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'destination',
                  BridgeTypeAnnotation(BridgeTypeRef(IoTypes.stringSink, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'dropWhile': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'dropLastWhile': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'take': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'n',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'takeLast': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'n',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'takeWhile': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'takeLastWhile': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'predicate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'toRegex': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.regExp, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'toList': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(CoreTypes.string, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'codeUnitBefore': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'reversed': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'toNum': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'toInt': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'toDouble': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'substringBefore': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'pattern',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'substringAfter': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'pattern',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'substringBeforeLast': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'pattern',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'substringAfterLast': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'pattern',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'toNumOrNull': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'toIntOrNull': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'toDoubleOrNull': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'str',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'valueToString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [StringUtils] in an [$StringUtils]
  $StringUtils.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  StringUtils get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final StringUtils $value;

  static const __$static$method$orEmpty = $Function(_$static$method$orEmpty);
  static $Value? _$static$method$orEmpty(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.orEmpty(str);
    return $result == null ? $null() : $String($result);
  }

  static const __$static$method$lastIndex =
      $Function(_$static$method$lastIndex);
  static $Value? _$static$method$lastIndex(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.lastIndex(str);
    return $int($result);
  }

  static const __$static$method$capitalize =
      $Function(_$static$method$capitalize);
  static $Value? _$static$method$capitalize(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.capitalize(str);
    return $String($result);
  }

  static const __$static$method$decapitalize =
      $Function(_$static$method$decapitalize);
  static $Value? _$static$method$decapitalize(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.decapitalize(str);
    return $String($result);
  }

  static const __$static$method$get = $Function(_$static$method$get);
  static $Value? _$static$method$get(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final index = args[1]?.$reified as int;
    final $result = StringUtils.get(str, index);
    return $String($result);
  }

  static const __$static$method$getOrNull =
      $Function(_$static$method$getOrNull);
  static $Value? _$static$method$getOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final index = args[1]?.$reified as int;
    final $result = StringUtils.getOrNull(str, index);
    return $result == null ? $null() : $String($result);
  }

  static const __$static$method$getOrElse =
      $Function(_$static$method$getOrElse);
  static $Value? _$static$method$getOrElse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final index = args[1]?.$reified as int;
    final defaultValue = args[2] as EvalCallable;
    final $result = StringUtils.getOrElse(
      str,
      index,
      (index) =>
          defaultValue.call(runtime, null, [$int(index)])?.$value as String,
    );
    return $String($result);
  }

  static const __$static$method$plus = $Function(_$static$method$plus);
  static $Value? _$static$method$plus(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final other = args[1]?.$reified as dynamic;
    final $result = StringUtils.plus(str, other);
    return $String($result);
  }

  static const __$static$method$max = $Function(_$static$method$max);
  static $Value? _$static$method$max(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.max(str);
    return $result == null ? $null() : $String($result);
  }

  static const __$static$method$min = $Function(_$static$method$min);
  static $Value? _$static$method$min(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.min(str);
    return $result == null ? $null() : $String($result);
  }

  static const __$static$method$equals = $Function(_$static$method$equals);
  static $Value? _$static$method$equals(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final other = args[1]?.$reified as String;
    final ignoreCase = args[2]?.$value ?? false;
    final $result = StringUtils.equals(str, other, ignoreCase: ignoreCase);
    return $bool($result);
  }

  static const __$static$method$drop = $Function(_$static$method$drop);
  static $Value? _$static$method$drop(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final n = args[1]?.$reified as int;
    final $result = StringUtils.drop(str, n);
    return $String($result);
  }

  static const __$static$method$dropLast = $Function(_$static$method$dropLast);
  static $Value? _$static$method$dropLast(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final n = args[1]?.$reified as int;
    final $result = StringUtils.dropLast(str, n);
    return $String($result);
  }

  static const __$static$method$filter = $Function(_$static$method$filter);
  static $Value? _$static$method$filter(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final predicate = args[1] as EvalCallable;
    final $result = StringUtils.filter(
      str,
      (it) => predicate.call(runtime, null, [$String(it)])!.$value as bool,
    );
    return $String($result);
  }

  static const __$static$method$filterTo = $Function(_$static$method$filterTo);
  static $Value? _$static$method$filterTo(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final c = args[1]?.$reified as StringSink;
    final predicate = args[2] as EvalCallable;
    final $result = StringUtils.filterTo(
      str,
      c,
      (it) => predicate.call(runtime, null, [$String(it)])?.$value as bool,
    );
    return $StringSink.wrap($result);
  }

  static const __$static$method$filterIndexed =
      $Function(_$static$method$filterIndexed);
  static $Value? _$static$method$filterIndexed(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final predicate = args[1] as EvalCallable;
    final $result = StringUtils.filterIndexed(
      str,
      (index, it) => predicate
          .call(runtime, null, [$int(index), $String(it)])!.$value as bool,
    );
    return $String($result);
  }

  static const __$static$method$filterIndexedTo =
      $Function(_$static$method$filterIndexedTo);
  static $Value? _$static$method$filterIndexedTo(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final destination = args[1]?.$reified as StringSink;
    final predicate = args[2] as EvalCallable;
    final $result = StringUtils.filterIndexedTo(
      str,
      destination,
      (index, it) => predicate
          .call(runtime, null, [$int(index), $String(it)])!.$value as bool,
    );
    return $StringSink.wrap($result);
  }

  static const __$static$method$filterNot =
      $Function(_$static$method$filterNot);
  static $Value? _$static$method$filterNot(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final predicate = args[1] as EvalCallable;
    final $result = StringUtils.filterNot(
      str,
      (it) => predicate.call(runtime, null, [$String(it)])!.$value as bool,
    );
    return $String($result);
  }

  static const __$static$method$filterNotTo =
      $Function(_$static$method$filterNotTo);
  static $Value? _$static$method$filterNotTo(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final destination = args[1]?.$reified as StringSink;
    final predicate = args[2] as EvalCallable;
    final $result = StringUtils.filterNotTo(
      str,
      destination,
      (it) => predicate.call(runtime, null, [$String(it)])!.$value as bool,
    );
    return $StringSink.wrap($result);
  }

  static const __$static$method$dropWhile =
      $Function(_$static$method$dropWhile);
  static $Value? _$static$method$dropWhile(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final predicate = args[1] as EvalCallable;
    final $result = StringUtils.dropWhile(
      str,
      (it) => predicate.call(runtime, null, [$String(it)])!.$value as bool,
    );
    return $String($result);
  }

  static const __$static$method$dropLastWhile =
      $Function(_$static$method$dropLastWhile);
  static $Value? _$static$method$dropLastWhile(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final predicate = args[1] as EvalCallable;
    final $result = StringUtils.dropLastWhile(
      str,
      (it) => predicate.call(runtime, null, [$String(it)])!.$value as bool,
    );
    return $String($result);
  }

  static const __$static$method$take = $Function(_$static$method$take);
  static $Value? _$static$method$take(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final n = args[1]?.$reified as int;
    final $result = StringUtils.take(
      str,
      n,
    );
    return $String($result);
  }

  static const __$static$method$takeLast = $Function(_$static$method$takeLast);
  static $Value? _$static$method$takeLast(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final n = args[1]?.$reified as int;
    final $result = StringUtils.takeLast(
      str,
      n,
    );
    return $String($result);
  }

  static const __$static$method$takeWhile =
      $Function(_$static$method$takeWhile);
  static $Value? _$static$method$takeWhile(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final predicate = args[1] as EvalCallable;
    final $result = StringUtils.takeWhile(
      str,
      (it) => predicate.call(runtime, null, [$String(it)])!.$value as bool,
    );
    return $String($result);
  }

  static const __$static$method$takeLastWhile =
      $Function(_$static$method$takeLastWhile);
  static $Value? _$static$method$takeLastWhile(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final predicate = args[1] as EvalCallable;
    final $result = StringUtils.takeLastWhile(
      str,
      (it) => predicate.call(runtime, null, [$String(it)])!.$value as bool,
    );
    return $String($result);
  }

  static const __$static$method$toRegex = $Function(_$static$method$toRegex);
  static $Value? _$static$method$toRegex(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.toRegex(str);
    return $RegExp.wrap($result);
  }

  static const __$static$method$toList = $Function(_$static$method$toList);
  static $Value? _$static$method$toList(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.toList(str);
    return $List.wrap(List.generate($result.length, (index) {
      return $String($result[index]);
    }));
  }

  static const __$static$method$codeUnitBefore =
      $Function(_$static$method$codeUnitBefore);
  static $Value? _$static$method$codeUnitBefore(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final index = args[1]?.$reified as int;
    final $result = StringUtils.codeUnitBefore(str, index);
    return $int($result);
  }

  static const __$static$method$reversed = $Function(_$static$method$reversed);
  static $Value? _$static$method$reversed(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.reversed(str);
    return $String($result);
  }

  static const __$static$method$toNum = $Function(_$static$method$toNum);
  static $Value? _$static$method$toNum(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.toNum(str);
    return $num($result);
  }

  static const __$static$method$toInt = $Function(_$static$method$toInt);
  static $Value? _$static$method$toInt(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.toInt(str);
    return $int($result);
  }

  static const __$static$method$toDouble = $Function(_$static$method$toDouble);
  static $Value? _$static$method$toDouble(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.toDouble(str);
    return $double($result);
  }

  static const __$static$method$substringBefore =
      $Function(_$static$method$substringBefore);
  static $Value? _$static$method$substringBefore(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final pattern = args[1]?.$reified as String;
    final $result = StringUtils.substringBefore(str, pattern);
    return $String($result);
  }

  static const __$static$method$substringAfter =
      $Function(_$static$method$substringAfter);
  static $Value? _$static$method$substringAfter(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final pattern = args[1]?.$reified as String;
    final $result = StringUtils.substringAfter(str, pattern);
    return $String($result);
  }

  static const __$static$method$substringBeforeLast =
      $Function(_$static$method$substringBeforeLast);
  static $Value? _$static$method$substringBeforeLast(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final pattern = args[1]?.$reified as String;
    final $result = StringUtils.substringBeforeLast(str, pattern);
    return $String($result);
  }

  static const __$static$method$substringAfterLast =
      $Function(_$static$method$substringAfterLast);
  static $Value? _$static$method$substringAfterLast(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final pattern = args[1]?.$reified as String;
    final $result = StringUtils.substringAfterLast(str, pattern);
    return $String($result);
  }

  static const __$static$method$toNumOrNull =
      $Function(_$static$method$toNumOrNull);
  static $Value? _$static$method$toNumOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.toNumOrNull(str);
    return $result == null ? $null() : $num($result);
  }

  static const __$static$method$toIntOrNull =
      $Function(_$static$method$toIntOrNull);
  static $Value? _$static$method$toIntOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.toIntOrNull(str);
    return $result == null ? $null() : $int($result);
  }

  static const __$static$method$toDoubleOrNull =
      $Function(_$static$method$toDoubleOrNull);
  static $Value? _$static$method$toDoubleOrNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final str = args[0]?.$reified as String;
    final $result = StringUtils.toDoubleOrNull(str);
    return $result == null ? $null() : $double($result);
  }

  static const __$static$method$valueToString =
      $Function(_$static$method$valueToString);
  static $Value? _$static$method$valueToString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = args[0]?.$reified as String;
    final $result = StringUtils.valueToString(value);
    return $String($result);
  }

  static const __$StringUtils$new = $Function(_$StringUtils$new);
  static $Value? _$StringUtils$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $StringUtils.wrap(StringUtils());
  }
}
