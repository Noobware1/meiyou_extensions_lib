// // ignore_for_file: constant_identifier_names, non_constant_identifier_names

// import 'package:dart_eval/dart_eval.dart';
// import 'package:dart_eval/dart_eval_bridge.dart';
// import 'package:dart_eval/stdlib/core.dart';
// import 'package:intl/date_symbols.dart';
// import 'package:intl/intl.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/intl/date_symbols.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/intl/types.dart';

// /// dart_eval bimodal wrapper for [DateFormat]
// class $DateFormat implements $Instance {
//   /// Configure the [$DateFormat] wrapper for use in a [Runtime]
//   static void configureForCompile(BridgeDeclarationRegistry registry) {
//     registry.defineBridgeClass($declaration);
//   }

//   static void configureForRuntime(Runtime runtime) {
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.', __$DateFormat$new.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.d', __$DateFormat$d.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.E', __$DateFormat$E.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.EEEE', __$DateFormat$EEEE.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.EEEEE', __$DateFormat$EEEEE.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.LLL', __$DateFormat$LLL.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.LLLL', __$DateFormat$LLLL.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.M', __$DateFormat$M.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.Md', __$DateFormat$Md.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.MEd', __$DateFormat$MEd.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.MMM', __$DateFormat$MMM.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.MMMd', __$DateFormat$MMMd.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.MMMEd', __$DateFormat$MMMEd.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.MMMM', __$DateFormat$MMMM.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.MMMMd', __$DateFormat$MMMMd.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'DateFormat.MMMMEEEEd',
//         __$DateFormat$MMMMEEEEd.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.QQQ', __$DateFormat$QQQ.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.QQQQ', __$DateFormat$QQQQ.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.y', __$DateFormat$y.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.yM', __$DateFormat$yM.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.yMd', __$DateFormat$yMd.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.yMEd', __$DateFormat$yMEd.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.yMMM', __$DateFormat$yMMM.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.yMMMd', __$DateFormat$yMMMd.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.yMMMEd', __$DateFormat$yMMMEd.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.yMMMM', __$DateFormat$yMMMM.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.yMMMMd', __$DateFormat$yMMMMd.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'DateFormat.yMMMMEEEEd',
//         __$DateFormat$yMMMMEEEEd.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.yQQQ', __$DateFormat$yQQQ.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.yQQQQ', __$DateFormat$yQQQQ.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.H', __$DateFormat$H.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.Hm', __$DateFormat$Hm.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.Hms', __$DateFormat$Hms.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.j', __$DateFormat$j.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.jm', __$DateFormat$jm.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.jms', __$DateFormat$jms.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.jmv', __$DateFormat$jmv.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.jmz', __$DateFormat$jmz.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.jv', __$DateFormat$jv.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.jz', __$DateFormat$jz.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.m', __$DateFormat$m.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.ms', __$DateFormat$ms.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.s', __$DateFormat$s.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'DateFormat.ABBR_MONTH*g',
//         __$static$ABBR_MONTH.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.DAY*g', __$static$DAY.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'DateFormat.ABBR_WEEKDAY*g',
//         __$static$ABBR_WEEKDAY.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.WEEKDAY*g', __$static$WEEKDAY.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateFormat.ABBR_STANDALONE_MONTH*g',
//         __$static$ABBR_STANDALONE_MONTH.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.STANDALONE_MONTH*g', __$static$STANDALONE_MONTH.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'DateFormat.NUM_MONTH*g',
//         __$static$NUM_MONTH.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.NUM_MONTH_DAY*g', __$static$NUM_MONTH_DAY.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateFormat.NUM_MONTH_WEEKDAY_DAY*g',
//         __$static$NUM_MONTH_WEEKDAY_DAY.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.ABBR_MONTH_DAY*g', __$static$ABBR_MONTH_DAY.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateFormat.ABBR_MONTH_WEEKDAY_DAY*g',
//         __$static$ABBR_MONTH_WEEKDAY_DAY.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.MONTH*g', __$static$MONTH.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'DateFormat.MONTH_DAY*g',
//         __$static$MONTH_DAY.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.MONTH_WEEKDAY_DAY*g', __$static$MONTH_WEEKDAY_DAY.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'DateFormat.ABBR_QUARTER*g',
//         __$static$ABBR_QUARTER.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.QUARTER*g', __$static$QUARTER.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.YEAR*g', __$static$YEAR.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.YEAR_NUM_MONTH*g', __$static$YEAR_NUM_MONTH.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.YEAR_NUM_MONTH_DAY*g', __$static$YEAR_NUM_MONTH_DAY.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateFormat.YEAR_NUM_MONTH_WEEKDAY_DAY*g',
//         __$static$YEAR_NUM_MONTH_WEEKDAY_DAY.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.YEAR_ABBR_MONTH*g', __$static$YEAR_ABBR_MONTH.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.YEAR_ABBR_MONTH_DAY*g', __$static$YEAR_ABBR_MONTH_DAY.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY*g',
//         __$static$YEAR_ABBR_MONTH_WEEKDAY_DAY.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'DateFormat.YEAR_MONTH*g',
//         __$static$YEAR_MONTH.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.YEAR_MONTH_DAY*g', __$static$YEAR_MONTH_DAY.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateFormat.YEAR_MONTH_WEEKDAY_DAY*g',
//         __$static$YEAR_MONTH_WEEKDAY_DAY.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.YEAR_ABBR_QUARTER*g', __$static$YEAR_ABBR_QUARTER.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'DateFormat.YEAR_QUARTER*g',
//         __$static$YEAR_QUARTER.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.HOUR24*g', __$static$HOUR24.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.HOUR24_MINUTE*g', __$static$HOUR24_MINUTE.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateFormat.HOUR24_MINUTE_SECOND*g',
//         __$static$HOUR24_MINUTE_SECOND.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.HOUR*g', __$static$HOUR.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'DateFormat.HOUR_MINUTE*g',
//         __$static$HOUR_MINUTE.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.HOUR_MINUTE_SECOND*g', __$static$HOUR_MINUTE_SECOND.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateFormat.HOUR_MINUTE_GENERIC_TZ*g',
//         __$static$HOUR_MINUTE_GENERIC_TZ.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.HOUR_MINUTE_TZ*g', __$static$HOUR_MINUTE_TZ.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.HOUR_GENERIC_TZ*g', __$static$HOUR_GENERIC_TZ.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.HOUR_TZ*g', __$static$HOUR_TZ.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.MINUTE*g', __$static$MINUTE.call);
//     runtime.registerBridgeFunc($type.spec!.library,
//         'DateFormat.MINUTE_SECOND*g', __$static$MINUTE_SECOND.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateFormat.SECOND*g', __$static$SECOND.call);

//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateFormat.allLocalesWithSymbols',
//         __$static$method$allLocalesWithSymbols.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateFormat.shouldUseNativeDigitsByDefaultFor',
//         __$static$method$shouldUseNativeDigitsByDefaultFor.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateFormat.useNativeDigitsByDefaultFor',
//         __$static$method$useNativeDigitsByDefaultFor.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'DateFormat.localeExists',
//         __$static$method$localeExists.call);
//   }

//   late final $Instance _superclass = $Object($value);

//   static const $type = BridgeTypeRef(IntlTypes.dateFormat);

//   static const $declaration = BridgeClassDef(
//     BridgeClassType(
//       $type,
//       $extends: null,
//       $implements: [],
//       isAbstract: false,
//     ),
//     constructors: {
//       '': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'newPattern',
//                 BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                     nullable: true),
//                 true),
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                     nullable: true),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'E': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'EEEE': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'EEEEE': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'LLL': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'LLLL': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'M': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'Md': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'MEd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'MMM': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'MMMd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'MMMEd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'MMMM': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'MMMMd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'MMMMEEEEd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'QQQ': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'QQQQ': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'y': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'yM': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'yMd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'yMEd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'yMMM': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'yMMMd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'yMMMEd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'yMMMM': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'yMMMMd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'yMMMMEEEEd': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'yQQQ': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'yQQQQ': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'H': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'Hm': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'Hms': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'j': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'jm': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'jms': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'jmv': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'jmz': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'jv': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'jz': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'm': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       'ms': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       ),
//       's': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'locale',
//                 BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                     nullable: false),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       )
//     },
//     fields: {
//       'ABBR_MONTH': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'ABBR_WEEKDAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'WEEKDAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'ABBR_STANDALONE_MONTH': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'STANDALONE_MONTH': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'NUM_MONTH': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'NUM_MONTH_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'NUM_MONTH_WEEKDAY_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'ABBR_MONTH_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'ABBR_MONTH_WEEKDAY_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'MONTH': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'MONTH_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'MONTH_WEEKDAY_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'ABBR_QUARTER': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'QUARTER': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR_NUM_MONTH': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR_NUM_MONTH_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR_NUM_MONTH_WEEKDAY_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR_ABBR_MONTH': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR_ABBR_MONTH_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR_ABBR_MONTH_WEEKDAY_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR_MONTH': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR_MONTH_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR_MONTH_WEEKDAY_DAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR_ABBR_QUARTER': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'YEAR_QUARTER': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'HOUR24': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'HOUR24_MINUTE': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'HOUR24_MINUTE_SECOND': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'HOUR': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'HOUR_MINUTE': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'HOUR_MINUTE_SECOND': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'HOUR_MINUTE_GENERIC_TZ': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'HOUR_MINUTE_TZ': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'HOUR_GENERIC_TZ': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'HOUR_TZ': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'MINUTE': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'MINUTE_SECOND': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//       'SECOND': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: true),
//     },
//     methods: {
//       'allLocalesWithSymbols': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(CoreTypes.list, [
//                   BridgeTypeRef(CoreTypes.string, []),
//                 ]),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: true),
//       'shouldUseNativeDigitsByDefaultFor': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'locale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: true),
//       'useNativeDigitsByDefaultFor': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'locale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'value',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: true),
//       'localeExists': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'localeName',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: true),
//       'format': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'date',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'parse': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'inputString',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'utc',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: false),
//                   true)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'tryParse': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
//                 nullable: true),
//             params: [
//               BridgeParameter(
//                   'inputString',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'utc',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: false),
//                   true)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'parseLoose': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'inputString',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'utc',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: false),
//                   true)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'tryParseLoose': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
//                 nullable: true),
//             params: [
//               BridgeParameter(
//                   'inputString',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'utc',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: false),
//                   true)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'parseStrict': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'inputString',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'utc',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: false),
//                   true)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'tryParseStrict': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
//                 nullable: true),
//             params: [
//               BridgeParameter(
//                   'inputString',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'utc',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: false),
//                   true)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'parseUTC': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'inputString',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'parseUtc': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'inputString',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'tryParseUtc': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
//                 nullable: true),
//             params: [
//               BridgeParameter(
//                   'inputString',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_d': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_E': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_EEEE': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_LLL': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_LLLL': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_M': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_Md': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_MEd': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_MMM': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_MMMd': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_MMMEd': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_MMMM': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_MMMMd': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_MMMMEEEEd': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_QQQ': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_QQQQ': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_y': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_yM': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_yMd': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_yMEd': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_yMMM': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_yMMMd': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_yMMMEd': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_yMMMM': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_yMMMMd': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_yMMMMEEEEd': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_yQQQ': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_yQQQQ': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_H': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_Hm': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_Hms': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_j': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_jm': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_jms': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_jmv': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_jmz': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_jv': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_jz': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_m': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_ms': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'add_s': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'addPattern': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'inputPattern',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   false),
//               BridgeParameter(
//                   'separator',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   true)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//     },
//     getters: {
//       'dateOnly': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'locale': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'pattern': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: true),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'dateSymbols': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateSymbols, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'useNativeDigits': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'digitMatcher': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.regExp, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'localeZeroCodeUnit': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'localeZero': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'usesNativeDigits': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'usesAsciiDigits': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//     },
//     setters: {
//       'useNativeDigits': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'native',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//     },
//     bridge: false,
//     wrap: true,
//   );

//   /// Wrap an [DateFormat] in an [$DateFormat]
//   $DateFormat.wrap(this.$value);

//   @override
//   $Value? $getProperty(Runtime runtime, String identifier) {
//     switch (identifier) {
//       case 'dateOnly':
//         return $bool($value.dateOnly);
//       case 'locale':
//         return $String($value.locale);
//       case 'pattern':
//         return $value.pattern == null ? $null() : $String($value.pattern!);
//       case 'dateSymbols':
//         return $DateSymbols.wrap($value.dateSymbols);
//       case 'useNativeDigits':
//         return $bool($value.useNativeDigits);
//       case 'digitMatcher':
//         return $RegExp.wrap($value.digitMatcher);
//       case 'localeZeroCodeUnit':
//         return $int($value.localeZeroCodeUnit);
//       case 'localeZero':
//         return $String($value.localeZero);
//       case 'usesNativeDigits':
//         return $bool($value.usesNativeDigits);
//       case 'usesAsciiDigits':
//         return $bool($value.usesAsciiDigits);
//       case 'format':
//         return __$format;
//       case 'parse':
//         return __$parse;
//       case 'tryParse':
//         return __$tryParse;
//       case 'parseLoose':
//         return __$parseLoose;
//       case 'tryParseLoose':
//         return __$tryParseLoose;
//       case 'parseStrict':
//         return __$parseStrict;
//       case 'tryParseStrict':
//         return __$tryParseStrict;
//       case 'parseUTC':
//         return __$parseUTC;
//       case 'parseUtc':
//         return __$parseUtc;
//       case 'tryParseUtc':
//         return __$tryParseUtc;
//       case 'add_d':
//         return __$add_d;
//       case 'add_E':
//         return __$add_E;
//       case 'add_EEEE':
//         return __$add_EEEE;
//       case 'add_LLL':
//         return __$add_LLL;
//       case 'add_LLLL':
//         return __$add_LLLL;
//       case 'add_M':
//         return __$add_M;
//       case 'add_Md':
//         return __$add_Md;
//       case 'add_MEd':
//         return __$add_MEd;
//       case 'add_MMM':
//         return __$add_MMM;
//       case 'add_MMMd':
//         return __$add_MMMd;
//       case 'add_MMMEd':
//         return __$add_MMMEd;
//       case 'add_MMMM':
//         return __$add_MMMM;
//       case 'add_MMMMd':
//         return __$add_MMMMd;
//       case 'add_MMMMEEEEd':
//         return __$add_MMMMEEEEd;
//       case 'add_QQQ':
//         return __$add_QQQ;
//       case 'add_QQQQ':
//         return __$add_QQQQ;
//       case 'add_y':
//         return __$add_y;
//       case 'add_yM':
//         return __$add_yM;
//       case 'add_yMd':
//         return __$add_yMd;
//       case 'add_yMEd':
//         return __$add_yMEd;
//       case 'add_yMMM':
//         return __$add_yMMM;
//       case 'add_yMMMd':
//         return __$add_yMMMd;
//       case 'add_yMMMEd':
//         return __$add_yMMMEd;
//       case 'add_yMMMM':
//         return __$add_yMMMM;
//       case 'add_yMMMMd':
//         return __$add_yMMMMd;
//       case 'add_yMMMMEEEEd':
//         return __$add_yMMMMEEEEd;
//       case 'add_yQQQ':
//         return __$add_yQQQ;
//       case 'add_yQQQQ':
//         return __$add_yQQQQ;
//       case 'add_H':
//         return __$add_H;
//       case 'add_Hm':
//         return __$add_Hm;
//       case 'add_Hms':
//         return __$add_Hms;
//       case 'add_j':
//         return __$add_j;
//       case 'add_jm':
//         return __$add_jm;
//       case 'add_jms':
//         return __$add_jms;
//       case 'add_jmv':
//         return __$add_jmv;
//       case 'add_jmz':
//         return __$add_jmz;
//       case 'add_jv':
//         return __$add_jv;
//       case 'add_jz':
//         return __$add_jz;
//       case 'add_m':
//         return __$add_m;
//       case 'add_ms':
//         return __$add_ms;
//       case 'add_s':
//         return __$add_s;
//       case 'addPattern':
//         return __$addPattern;
//       default:
//         return _superclass.$getProperty(runtime, identifier);
//     }
//   }

//   @override
//   int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

//   @override
//   DateFormat get $reified => $value;

//   @override
//   void $setProperty(Runtime runtime, String identifier, $Value value) {
//     switch (identifier) {
//       case 'useNativeDigits':
//         $value.useNativeDigits = value.$value as bool;
//         break;
//       default:
//         _superclass.$setProperty(runtime, identifier, value);
//     }
//   }

//   @override
//   final DateFormat $value;

//   static const __$static$ABBR_MONTH = $Function(_$static$ABBR_MONTH);
//   static $Value? _$static$ABBR_MONTH(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.ABBR_MONTH;
//     return $String($result);
//   }

//   static const __$static$DAY = $Function(_$static$DAY);
//   static $Value? _$static$DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.DAY;
//     return $String($result);
//   }

//   static const __$static$ABBR_WEEKDAY = $Function(_$static$ABBR_WEEKDAY);
//   static $Value? _$static$ABBR_WEEKDAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.ABBR_WEEKDAY;
//     return $String($result);
//   }

//   static const __$static$WEEKDAY = $Function(_$static$WEEKDAY);
//   static $Value? _$static$WEEKDAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.WEEKDAY;
//     return $String($result);
//   }

//   static const __$static$ABBR_STANDALONE_MONTH =
//       $Function(_$static$ABBR_STANDALONE_MONTH);
//   static $Value? _$static$ABBR_STANDALONE_MONTH(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.ABBR_STANDALONE_MONTH;
//     return $String($result);
//   }

//   static const __$static$STANDALONE_MONTH =
//       $Function(_$static$STANDALONE_MONTH);
//   static $Value? _$static$STANDALONE_MONTH(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.STANDALONE_MONTH;
//     return $String($result);
//   }

//   static const __$static$NUM_MONTH = $Function(_$static$NUM_MONTH);
//   static $Value? _$static$NUM_MONTH(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.NUM_MONTH;
//     return $String($result);
//   }

//   static const __$static$NUM_MONTH_DAY = $Function(_$static$NUM_MONTH_DAY);
//   static $Value? _$static$NUM_MONTH_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.NUM_MONTH_DAY;
//     return $String($result);
//   }

//   static const __$static$NUM_MONTH_WEEKDAY_DAY =
//       $Function(_$static$NUM_MONTH_WEEKDAY_DAY);
//   static $Value? _$static$NUM_MONTH_WEEKDAY_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.NUM_MONTH_WEEKDAY_DAY;
//     return $String($result);
//   }

//   static const __$static$ABBR_MONTH_DAY = $Function(_$static$ABBR_MONTH_DAY);
//   static $Value? _$static$ABBR_MONTH_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.ABBR_MONTH_DAY;
//     return $String($result);
//   }

//   static const __$static$ABBR_MONTH_WEEKDAY_DAY =
//       $Function(_$static$ABBR_MONTH_WEEKDAY_DAY);
//   static $Value? _$static$ABBR_MONTH_WEEKDAY_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.ABBR_MONTH_WEEKDAY_DAY;
//     return $String($result);
//   }

//   static const __$static$MONTH = $Function(_$static$MONTH);
//   static $Value? _$static$MONTH(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.MONTH;
//     return $String($result);
//   }

//   static const __$static$MONTH_DAY = $Function(_$static$MONTH_DAY);
//   static $Value? _$static$MONTH_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.MONTH_DAY;
//     return $String($result);
//   }

//   static const __$static$MONTH_WEEKDAY_DAY =
//       $Function(_$static$MONTH_WEEKDAY_DAY);
//   static $Value? _$static$MONTH_WEEKDAY_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.MONTH_WEEKDAY_DAY;
//     return $String($result);
//   }

//   static const __$static$ABBR_QUARTER = $Function(_$static$ABBR_QUARTER);
//   static $Value? _$static$ABBR_QUARTER(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.ABBR_QUARTER;
//     return $String($result);
//   }

//   static const __$static$QUARTER = $Function(_$static$QUARTER);
//   static $Value? _$static$QUARTER(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.QUARTER;
//     return $String($result);
//   }

//   static const __$static$YEAR = $Function(_$static$YEAR);
//   static $Value? _$static$YEAR(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR;
//     return $String($result);
//   }

//   static const __$static$YEAR_NUM_MONTH = $Function(_$static$YEAR_NUM_MONTH);
//   static $Value? _$static$YEAR_NUM_MONTH(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR_NUM_MONTH;
//     return $String($result);
//   }

//   static const __$static$YEAR_NUM_MONTH_DAY =
//       $Function(_$static$YEAR_NUM_MONTH_DAY);
//   static $Value? _$static$YEAR_NUM_MONTH_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR_NUM_MONTH_DAY;
//     return $String($result);
//   }

//   static const __$static$YEAR_NUM_MONTH_WEEKDAY_DAY =
//       $Function(_$static$YEAR_NUM_MONTH_WEEKDAY_DAY);
//   static $Value? _$static$YEAR_NUM_MONTH_WEEKDAY_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR_NUM_MONTH_WEEKDAY_DAY;
//     return $String($result);
//   }

//   static const __$static$YEAR_ABBR_MONTH = $Function(_$static$YEAR_ABBR_MONTH);
//   static $Value? _$static$YEAR_ABBR_MONTH(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR_ABBR_MONTH;
//     return $String($result);
//   }

//   static const __$static$YEAR_ABBR_MONTH_DAY =
//       $Function(_$static$YEAR_ABBR_MONTH_DAY);
//   static $Value? _$static$YEAR_ABBR_MONTH_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR_ABBR_MONTH_DAY;
//     return $String($result);
//   }

//   static const __$static$YEAR_ABBR_MONTH_WEEKDAY_DAY =
//       $Function(_$static$YEAR_ABBR_MONTH_WEEKDAY_DAY);
//   static $Value? _$static$YEAR_ABBR_MONTH_WEEKDAY_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY;
//     return $String($result);
//   }

//   static const __$static$YEAR_MONTH = $Function(_$static$YEAR_MONTH);
//   static $Value? _$static$YEAR_MONTH(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR_MONTH;
//     return $String($result);
//   }

//   static const __$static$YEAR_MONTH_DAY = $Function(_$static$YEAR_MONTH_DAY);
//   static $Value? _$static$YEAR_MONTH_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR_MONTH_DAY;
//     return $String($result);
//   }

//   static const __$static$YEAR_MONTH_WEEKDAY_DAY =
//       $Function(_$static$YEAR_MONTH_WEEKDAY_DAY);
//   static $Value? _$static$YEAR_MONTH_WEEKDAY_DAY(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR_MONTH_WEEKDAY_DAY;
//     return $String($result);
//   }

//   static const __$static$YEAR_ABBR_QUARTER =
//       $Function(_$static$YEAR_ABBR_QUARTER);
//   static $Value? _$static$YEAR_ABBR_QUARTER(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR_ABBR_QUARTER;
//     return $String($result);
//   }

//   static const __$static$YEAR_QUARTER = $Function(_$static$YEAR_QUARTER);
//   static $Value? _$static$YEAR_QUARTER(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.YEAR_QUARTER;
//     return $String($result);
//   }

//   static const __$static$HOUR24 = $Function(_$static$HOUR24);
//   static $Value? _$static$HOUR24(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.HOUR24;
//     return $String($result);
//   }

//   static const __$static$HOUR24_MINUTE = $Function(_$static$HOUR24_MINUTE);
//   static $Value? _$static$HOUR24_MINUTE(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.HOUR24_MINUTE;
//     return $String($result);
//   }

//   static const __$static$HOUR24_MINUTE_SECOND =
//       $Function(_$static$HOUR24_MINUTE_SECOND);
//   static $Value? _$static$HOUR24_MINUTE_SECOND(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.HOUR24_MINUTE_SECOND;
//     return $String($result);
//   }

//   static const __$static$HOUR = $Function(_$static$HOUR);
//   static $Value? _$static$HOUR(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.HOUR;
//     return $String($result);
//   }

//   static const __$static$HOUR_MINUTE = $Function(_$static$HOUR_MINUTE);
//   static $Value? _$static$HOUR_MINUTE(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.HOUR_MINUTE;
//     return $String($result);
//   }

//   static const __$static$HOUR_MINUTE_SECOND =
//       $Function(_$static$HOUR_MINUTE_SECOND);
//   static $Value? _$static$HOUR_MINUTE_SECOND(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.HOUR_MINUTE_SECOND;
//     return $String($result);
//   }

//   static const __$static$HOUR_MINUTE_GENERIC_TZ =
//       $Function(_$static$HOUR_MINUTE_GENERIC_TZ);
//   static $Value? _$static$HOUR_MINUTE_GENERIC_TZ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.HOUR_MINUTE_GENERIC_TZ;
//     return $String($result);
//   }

//   static const __$static$HOUR_MINUTE_TZ = $Function(_$static$HOUR_MINUTE_TZ);
//   static $Value? _$static$HOUR_MINUTE_TZ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.HOUR_MINUTE_TZ;
//     return $String($result);
//   }

//   static const __$static$HOUR_GENERIC_TZ = $Function(_$static$HOUR_GENERIC_TZ);
//   static $Value? _$static$HOUR_GENERIC_TZ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.HOUR_GENERIC_TZ;
//     return $String($result);
//   }

//   static const __$static$HOUR_TZ = $Function(_$static$HOUR_TZ);
//   static $Value? _$static$HOUR_TZ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.HOUR_TZ;
//     return $String($result);
//   }

//   static const __$static$MINUTE = $Function(_$static$MINUTE);
//   static $Value? _$static$MINUTE(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.MINUTE;
//     return $String($result);
//   }

//   static const __$static$MINUTE_SECOND = $Function(_$static$MINUTE_SECOND);
//   static $Value? _$static$MINUTE_SECOND(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.MINUTE_SECOND;
//     return $String($result);
//   }

//   static const __$static$SECOND = $Function(_$static$SECOND);
//   static $Value? _$static$SECOND(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.SECOND;
//     return $String($result);
//   }

//   static const __$format = $Function(_$format);
//   static $Value? _$format(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final date = args[0]?.$reified as DateTime;
//     final $result = obj.format(date);
//     return $String($result);
//   }

//   static const __$parse = $Function(_$parse);
//   static $Value? _$parse(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final inputString = args[0]?.$value as String;
//     final utc = args[1]?.$value as bool? ?? false;
//     final $result = obj.parse(
//       inputString,
//       utc,
//     );
//     return $DateTime.wrap($result);
//   }

//   static const __$tryParse = $Function(_$tryParse);
//   static $Value? _$tryParse(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final inputString = args[0]?.$value as String;
//     final utc = args[1]?.$value as bool? ?? false;
//     final $result = obj.tryParse(
//       inputString,
//       utc,
//     );
//     return $result == null ? $null() : $DateTime.wrap($result);
//   }

//   static const __$parseLoose = $Function(_$parseLoose);
//   static $Value? _$parseLoose(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final inputString = args[0]?.$value as String;
//     final utc = args[1]?.$value as bool? ?? false;
//     final $result = obj.parseLoose(
//       inputString,
//       utc,
//     );
//     return $DateTime.wrap($result);
//   }

//   static const __$tryParseLoose = $Function(_$tryParseLoose);
//   static $Value? _$tryParseLoose(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final inputString = args[0]?.$value as String;
//     final utc = args[1]?.$value as bool? ?? false;
//     final $result = obj.tryParseLoose(
//       inputString,
//       utc,
//     );
//     return $result == null ? $null() : $DateTime.wrap($result);
//   }

//   static const __$parseStrict = $Function(_$parseStrict);
//   static $Value? _$parseStrict(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final inputString = args[0]?.$value as String;
//     final utc = args[1]?.$value as bool? ?? false;
//     final $result = obj.parseStrict(
//       inputString,
//       utc,
//     );
//     return $DateTime.wrap($result);
//   }

//   static const __$tryParseStrict = $Function(_$tryParseStrict);
//   static $Value? _$tryParseStrict(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final inputString = args[0]?.$value as String;
//     final utc = args[1]?.$value as bool? ?? false;
//     final $result = obj.tryParseStrict(
//       inputString,
//       utc,
//     );
//     return $result == null ? $null() : $DateTime.wrap($result);
//   }

//   static const __$parseUTC = $Function(_$parseUTC);
//   static $Value? _$parseUTC(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final inputString = args[0]?.$value as String;
//     final $result = obj.parseUTC(
//       inputString,
//     );
//     return $DateTime.wrap($result);
//   }

//   static const __$parseUtc = $Function(_$parseUtc);
//   static $Value? _$parseUtc(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final inputString = args[0]?.$value as String;
//     final $result = obj.parseUtc(
//       inputString,
//     );
//     return $DateTime.wrap($result);
//   }

//   @override
//   DateTime? tryParseUtc(String inputString) => $value.tryParseUtc(
//         inputString,
//       );
//   static const __$tryParseUtc = $Function(_$tryParseUtc);
//   static $Value? _$tryParseUtc(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final inputString = args[0]?.$value as String;
//     final $result = obj.tryParseUtc(inputString);
//     return $result == null ? $null() : $DateTime.wrap($result);
//   }

//   static const __$add_d = $Function(_$add_d);
//   static $Value? _$add_d(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_d();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_E = $Function(_$add_E);
//   static $Value? _$add_E(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_E();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_EEEE = $Function(_$add_EEEE);
//   static $Value? _$add_EEEE(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_EEEE();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_LLL = $Function(_$add_LLL);
//   static $Value? _$add_LLL(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_LLL();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_LLLL = $Function(_$add_LLLL);
//   static $Value? _$add_LLLL(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_LLLL();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_M = $Function(_$add_M);
//   static $Value? _$add_M(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_M();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_Md = $Function(_$add_Md);
//   static $Value? _$add_Md(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_Md();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_MEd = $Function(_$add_MEd);
//   static $Value? _$add_MEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_MEd();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_MMM = $Function(_$add_MMM);
//   static $Value? _$add_MMM(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_MMM();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_MMMd = $Function(_$add_MMMd);
//   static $Value? _$add_MMMd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_MMMd();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_MMMEd = $Function(_$add_MMMEd);
//   static $Value? _$add_MMMEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_MMMEd();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_MMMM = $Function(_$add_MMMM);
//   static $Value? _$add_MMMM(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_MMMM();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_MMMMd = $Function(_$add_MMMMd);
//   static $Value? _$add_MMMMd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_MMMMd();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_MMMMEEEEd = $Function(_$add_MMMMEEEEd);
//   static $Value? _$add_MMMMEEEEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_MMMMEEEEd();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_QQQ = $Function(_$add_QQQ);
//   static $Value? _$add_QQQ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_QQQ();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_QQQQ = $Function(_$add_QQQQ);
//   static $Value? _$add_QQQQ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_QQQQ();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_y = $Function(_$add_y);
//   static $Value? _$add_y(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_y();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_yM = $Function(_$add_yM);
//   static $Value? _$add_yM(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_yM();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_yMd = $Function(_$add_yMd);
//   static $Value? _$add_yMd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_yMd();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_yMEd = $Function(_$add_yMEd);
//   static $Value? _$add_yMEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_yMEd();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_yMMM = $Function(_$add_yMMM);
//   static $Value? _$add_yMMM(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_yMMM();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_yMMMd = $Function(_$add_yMMMd);
//   static $Value? _$add_yMMMd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_yMMMd();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_yMMMEd = $Function(_$add_yMMMEd);
//   static $Value? _$add_yMMMEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_yMMMEd();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_yMMMM = $Function(_$add_yMMMM);
//   static $Value? _$add_yMMMM(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_yMMMM();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_yMMMMd = $Function(_$add_yMMMMd);
//   static $Value? _$add_yMMMMd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_yMMMMd();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_yMMMMEEEEd = $Function(_$add_yMMMMEEEEd);
//   static $Value? _$add_yMMMMEEEEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_yMMMMEEEEd();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_yQQQ = $Function(_$add_yQQQ);
//   static $Value? _$add_yQQQ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_yQQQ();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_yQQQQ = $Function(_$add_yQQQQ);
//   static $Value? _$add_yQQQQ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_yQQQQ();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_H = $Function(_$add_H);
//   static $Value? _$add_H(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_H();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_Hm = $Function(_$add_Hm);
//   static $Value? _$add_Hm(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_Hm();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_Hms = $Function(_$add_Hms);
//   static $Value? _$add_Hms(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_Hms();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_j = $Function(_$add_j);
//   static $Value? _$add_j(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_j();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_jm = $Function(_$add_jm);
//   static $Value? _$add_jm(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_jm();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_jms = $Function(_$add_jms);
//   static $Value? _$add_jms(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_jms();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_jmv = $Function(_$add_jmv);
//   static $Value? _$add_jmv(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_jmv();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_jmz = $Function(_$add_jmz);
//   static $Value? _$add_jmz(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_jmz();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_jv = $Function(_$add_jv);
//   static $Value? _$add_jv(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_jv();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_jz = $Function(_$add_jz);
//   static $Value? _$add_jz(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_jz();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_m = $Function(_$add_m);
//   static $Value? _$add_m(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_m();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_ms = $Function(_$add_ms);
//   static $Value? _$add_ms(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_ms();
//     return $DateFormat.wrap($result);
//   }

//   static const __$add_s = $Function(_$add_s);
//   static $Value? _$add_s(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final $result = obj.add_s();
//     return $DateFormat.wrap($result);
//   }

//   static const __$addPattern = $Function(_$addPattern);
//   static $Value? _$addPattern(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateFormat;
//     final inputPattern = args[0]?.$value as String;
//     final separator = args[1]?.$value as String? ?? ' ';
//     final $result = obj.addPattern(
//       inputPattern,
//       separator,
//     );
//     return $DateFormat.wrap($result);
//   }

//   static const __$static$method$allLocalesWithSymbols =
//       $Function(_$static$method$allLocalesWithSymbols);
//   static $Value? _$static$method$allLocalesWithSymbols(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = DateFormat.allLocalesWithSymbols();
//     return $List.wrap(List.generate($result.length, (index) {
//       return $String($result[index]);
//     }));
//   }

//   static const __$static$method$shouldUseNativeDigitsByDefaultFor =
//       $Function(_$static$method$shouldUseNativeDigitsByDefaultFor);
//   static $Value? _$static$method$shouldUseNativeDigitsByDefaultFor(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0]?.$value as String;
//     final $result = DateFormat.shouldUseNativeDigitsByDefaultFor(locale);
//     return $bool($result);
//   }

//   static const __$static$method$useNativeDigitsByDefaultFor =
//       $Function(_$static$method$useNativeDigitsByDefaultFor);
//   static $Value? _$static$method$useNativeDigitsByDefaultFor(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0]?.$value as String;
//     final value = args[1]?.$value as bool;
//     DateFormat.useNativeDigitsByDefaultFor(locale, value);
//     return null;
//   }

//   static const __$static$method$localeExists =
//       $Function(_$static$method$localeExists);
//   static $Value? _$static$method$localeExists(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final localeName = args[0]?.$value as String;
//     final $result = DateFormat.localeExists(
//       localeName,
//     );
//     return $bool($result);
//   }

//   static const __$DateFormat$new = $Function(_$DateFormat$new);
//   static $Value? _$DateFormat$new(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final newPattern = args[0]?.$value as String;
//     final locale = args[1]?.$value as String;
//     return $DateFormat.wrap(DateFormat(
//       newPattern,
//       locale,
//     ));
//   }

//   static const __$DateFormat$d = $Function(_$DateFormat$d);
//   static $Value? _$DateFormat$d(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.d(
//       locale,
//     ));
//   }

//   static const __$DateFormat$E = $Function(_$DateFormat$E);
//   static $Value? _$DateFormat$E(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.E(
//       locale,
//     ));
//   }

//   static const __$DateFormat$EEEE = $Function(_$DateFormat$EEEE);
//   static $Value? _$DateFormat$EEEE(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.EEEE(
//       locale,
//     ));
//   }

//   static const __$DateFormat$EEEEE = $Function(_$DateFormat$EEEEE);
//   static $Value? _$DateFormat$EEEEE(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.EEEEE(
//       locale,
//     ));
//   }

//   static const __$DateFormat$LLL = $Function(_$DateFormat$LLL);
//   static $Value? _$DateFormat$LLL(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.LLL(
//       locale,
//     ));
//   }

//   static const __$DateFormat$LLLL = $Function(_$DateFormat$LLLL);
//   static $Value? _$DateFormat$LLLL(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.LLLL(
//       locale,
//     ));
//   }

//   static const __$DateFormat$M = $Function(_$DateFormat$M);
//   static $Value? _$DateFormat$M(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.M(
//       locale,
//     ));
//   }

//   static const __$DateFormat$Md = $Function(_$DateFormat$Md);
//   static $Value? _$DateFormat$Md(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.Md(
//       locale,
//     ));
//   }

//   static const __$DateFormat$MEd = $Function(_$DateFormat$MEd);
//   static $Value? _$DateFormat$MEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.MEd(
//       locale,
//     ));
//   }

//   static const __$DateFormat$MMM = $Function(_$DateFormat$MMM);
//   static $Value? _$DateFormat$MMM(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.MMM(
//       locale,
//     ));
//   }

//   static const __$DateFormat$MMMd = $Function(_$DateFormat$MMMd);
//   static $Value? _$DateFormat$MMMd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.MMMd(
//       locale,
//     ));
//   }

//   static const __$DateFormat$MMMEd = $Function(_$DateFormat$MMMEd);
//   static $Value? _$DateFormat$MMMEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.MMMEd(
//       locale,
//     ));
//   }

//   static const __$DateFormat$MMMM = $Function(_$DateFormat$MMMM);
//   static $Value? _$DateFormat$MMMM(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.MMMM(
//       locale,
//     ));
//   }

//   static const __$DateFormat$MMMMd = $Function(_$DateFormat$MMMMd);
//   static $Value? _$DateFormat$MMMMd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.MMMMd(
//       locale,
//     ));
//   }

//   static const __$DateFormat$MMMMEEEEd = $Function(_$DateFormat$MMMMEEEEd);
//   static $Value? _$DateFormat$MMMMEEEEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.MMMMEEEEd(
//       locale,
//     ));
//   }

//   static const __$DateFormat$QQQ = $Function(_$DateFormat$QQQ);
//   static $Value? _$DateFormat$QQQ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.QQQ(
//       locale,
//     ));
//   }

//   static const __$DateFormat$QQQQ = $Function(_$DateFormat$QQQQ);
//   static $Value? _$DateFormat$QQQQ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.QQQQ(
//       locale,
//     ));
//   }

//   static const __$DateFormat$y = $Function(_$DateFormat$y);
//   static $Value? _$DateFormat$y(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.y(
//       locale,
//     ));
//   }

//   static const __$DateFormat$yM = $Function(_$DateFormat$yM);
//   static $Value? _$DateFormat$yM(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.yM(
//       locale,
//     ));
//   }

//   static const __$DateFormat$yMd = $Function(_$DateFormat$yMd);
//   static $Value? _$DateFormat$yMd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.yMd(
//       locale,
//     ));
//   }

//   static const __$DateFormat$yMEd = $Function(_$DateFormat$yMEd);
//   static $Value? _$DateFormat$yMEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.yMEd(
//       locale,
//     ));
//   }

//   static const __$DateFormat$yMMM = $Function(_$DateFormat$yMMM);
//   static $Value? _$DateFormat$yMMM(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.yMMM(
//       locale,
//     ));
//   }

//   static const __$DateFormat$yMMMd = $Function(_$DateFormat$yMMMd);
//   static $Value? _$DateFormat$yMMMd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.yMMMd(
//       locale,
//     ));
//   }

//   static const __$DateFormat$yMMMEd = $Function(_$DateFormat$yMMMEd);
//   static $Value? _$DateFormat$yMMMEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.yMMMEd(
//       locale,
//     ));
//   }

//   static const __$DateFormat$yMMMM = $Function(_$DateFormat$yMMMM);
//   static $Value? _$DateFormat$yMMMM(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.yMMMM(
//       locale,
//     ));
//   }

//   static const __$DateFormat$yMMMMd = $Function(_$DateFormat$yMMMMd);
//   static $Value? _$DateFormat$yMMMMd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.yMMMMd(
//       locale,
//     ));
//   }

//   static const __$DateFormat$yMMMMEEEEd = $Function(_$DateFormat$yMMMMEEEEd);
//   static $Value? _$DateFormat$yMMMMEEEEd(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.yMMMMEEEEd(
//       locale,
//     ));
//   }

//   static const __$DateFormat$yQQQ = $Function(_$DateFormat$yQQQ);
//   static $Value? _$DateFormat$yQQQ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.yQQQ(
//       locale,
//     ));
//   }

//   static const __$DateFormat$yQQQQ = $Function(_$DateFormat$yQQQQ);
//   static $Value? _$DateFormat$yQQQQ(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.yQQQQ(
//       locale,
//     ));
//   }

//   static const __$DateFormat$H = $Function(_$DateFormat$H);
//   static $Value? _$DateFormat$H(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.H(
//       locale,
//     ));
//   }

//   static const __$DateFormat$Hm = $Function(_$DateFormat$Hm);
//   static $Value? _$DateFormat$Hm(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.Hm(
//       locale,
//     ));
//   }

//   static const __$DateFormat$Hms = $Function(_$DateFormat$Hms);
//   static $Value? _$DateFormat$Hms(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.Hms(
//       locale,
//     ));
//   }

//   static const __$DateFormat$j = $Function(_$DateFormat$j);
//   static $Value? _$DateFormat$j(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.j(
//       locale,
//     ));
//   }

//   static const __$DateFormat$jm = $Function(_$DateFormat$jm);
//   static $Value? _$DateFormat$jm(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.jm(
//       locale,
//     ));
//   }

//   static const __$DateFormat$jms = $Function(_$DateFormat$jms);
//   static $Value? _$DateFormat$jms(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.jms(
//       locale,
//     ));
//   }

//   static const __$DateFormat$jmv = $Function(_$DateFormat$jmv);
//   static $Value? _$DateFormat$jmv(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.jmv(
//       locale,
//     ));
//   }

//   static const __$DateFormat$jmz = $Function(_$DateFormat$jmz);
//   static $Value? _$DateFormat$jmz(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.jmz(
//       locale,
//     ));
//   }

//   static const __$DateFormat$jv = $Function(_$DateFormat$jv);
//   static $Value? _$DateFormat$jv(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.jv(
//       locale,
//     ));
//   }

//   static const __$DateFormat$jz = $Function(_$DateFormat$jz);
//   static $Value? _$DateFormat$jz(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.jz(
//       locale,
//     ));
//   }

//   static const __$DateFormat$m = $Function(_$DateFormat$m);
//   static $Value? _$DateFormat$m(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.m(
//       locale,
//     ));
//   }

//   static const __$DateFormat$ms = $Function(_$DateFormat$ms);
//   static $Value? _$DateFormat$ms(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.ms(
//       locale,
//     ));
//   }

//   static const __$DateFormat$s = $Function(_$DateFormat$s);
//   static $Value? _$DateFormat$s(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0];
//     return $DateFormat.wrap(DateFormat.s(locale));
//   }
// }
