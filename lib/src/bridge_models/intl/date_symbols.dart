// // ignore_for_file: non_constant_identifier_names

// import 'package:dart_eval/dart_eval.dart';
// import 'package:dart_eval/dart_eval_bridge.dart';
// import 'package:dart_eval/stdlib/core.dart';

// import 'package:intl/date_symbols.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/intl/types.dart';

// /// dart_eval bimodal wrapper for [DateSymbols]
// class $DateSymbols implements DateSymbols, $Instance {
//   /// Configure the [$DateSymbols] wrapper for use in a [Runtime]
//   static void configureForCompile(BridgeDeclarationRegistry registry) {
//     registry.defineBridgeClass($declaration);
//   }

//   static void configureForRuntime(Runtime runtime) {
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'DateSymbols.', __$DateSymbols$new.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library,
//         'DateSymbols.deserializeFromMap',
//         __$DateSymbols$deserializeFromMap.call);
//   }

//   late final $Instance _superclass = $Object($value);

//   static const $type = BridgeTypeRef(IntlTypes.dateSymbols);

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
//           params: [],
//           namedParams: [
//             BridgeParameter(
//                 'NAME',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'ERAS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'ERANAMES',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'NARROWMONTHS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'STANDALONENARROWMONTHS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'MONTHS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'STANDALONEMONTHS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'SHORTMONTHS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'STANDALONESHORTMONTHS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'WEEKDAYS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'STANDALONEWEEKDAYS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'SHORTWEEKDAYS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'STANDALONESHORTWEEKDAYS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'NARROWWEEKDAYS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'STANDALONENARROWWEEKDAYS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'SHORTQUARTERS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'QUARTERS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'AMPMS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'ZERODIGIT',
//                 BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                     nullable: true),
//                 true),
//             BridgeParameter(
//                 'DATEFORMATS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'TIMEFORMATS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'AVAILABLEFORMATS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(CoreTypes.map, [
//                       BridgeTypeRef(CoreTypes.string, []),
//                       BridgeTypeRef(CoreTypes.string, []),
//                     ]),
//                     nullable: true),
//                 true),
//             BridgeParameter(
//                 'FIRSTDAYOFWEEK',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'WEEKENDRANGE',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'FIRSTWEEKCUTOFFDAY',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false),
//             BridgeParameter(
//                 'DATETIMEFORMATS',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(
//                         CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
//                     nullable: false),
//                 false)
//           ],
//         ),
//         isFactory: false,
//       ),
//       'deserializeFromMap': BridgeConstructorDef(
//         BridgeFunctionDef(
//           returns: BridgeTypeAnnotation($type),
//           params: [
//             BridgeParameter(
//                 'map',
//                 BridgeTypeAnnotation(
//                     BridgeTypeRef(CoreTypes.map, [
//                       BridgeTypeRef(CoreTypes.dynamic, []),
//                       BridgeTypeRef(CoreTypes.dynamic, []),
//                     ]),
//                     nullable: false),
//                 false)
//           ],
//           namedParams: [],
//         ),
//         isFactory: true,
//       )
//     },
//     fields: {
//       'NAME': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: false),
//           isStatic: false),
//       'ERAS': BridgeFieldDef(
//           BridgeTypeAnnotation(
//               BridgeTypeRef(CoreTypes.list, [
//                 BridgeTypeRef(CoreTypes.string, []),
//               ]),
//               nullable: false),
//           isStatic: false),
//       'AVAILABLEFORMATS': BridgeFieldDef(
//           BridgeTypeAnnotation(
//               BridgeTypeRef(CoreTypes.map, [
//                 BridgeTypeRef(CoreTypes.string, []),
//                 BridgeTypeRef(CoreTypes.string, []),
//               ]),
//               nullable: true),
//           isStatic: false),
//       'FIRSTDAYOFWEEK': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
//               nullable: false),
//           isStatic: false),
//       'WEEKENDRANGE': BridgeFieldDef(
//           BridgeTypeAnnotation(
//               BridgeTypeRef(CoreTypes.list, [
//                 BridgeTypeRef(CoreTypes.int, []),
//               ]),
//               nullable: false),
//           isStatic: false),
//       'FIRSTWEEKCUTOFFDAY': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
//               nullable: false),
//           isStatic: false),
//       'ZERODIGIT': BridgeFieldDef(
//           BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//               nullable: true),
//           isStatic: false),
//     },
//     methods: {
//       'serializeToMap': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(CoreTypes.map, [
//                   BridgeTypeRef(CoreTypes.string, []),
//                   BridgeTypeRef(CoreTypes.dynamic, []),
//                 ]),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'toString': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//     },
//     getters: {},
//     setters: {},
//     bridge: false,
//     wrap: true,
//   );

//   /// Wrap an [DateSymbols] in an [$DateSymbols]
//   $DateSymbols.wrap(this.$value);

//   @override
//   $Value? $getProperty(Runtime runtime, String identifier) {
//     switch (identifier) {
//       case 'NAME':
//         return $String($value.NAME);
//       case 'ERAS':
//         return $List.wrap(List.generate(($value.ERAS).length, (index) {
//           return $String($value.ERAS[index]);
//         }));
//       case 'AVAILABLEFORMATS':
//         return $value.AVAILABLEFORMATS == null
//             ? $null()
//             : $Map
//                 .wrap(($value.AVAILABLEFORMATS as Map<String, String>))
//                 .map((key, value) {
//                 return $MapEntry.wrap(MapEntry(
//                   key is $Value ? key : $String(key),
//                   value is $Value ? value : $String(value),
//                 ));
//               }) as $Value?;
//       case 'FIRSTDAYOFWEEK':
//         return $int($value.FIRSTDAYOFWEEK);
//       case 'WEEKENDRANGE':
//         return $List.wrap(List.generate(($value.WEEKENDRANGE).length, (index) {
//           return $int($value.WEEKENDRANGE[index]);
//         }));
//       case 'FIRSTWEEKCUTOFFDAY':
//         return $int($value.FIRSTWEEKCUTOFFDAY);
//       case 'ZERODIGIT':
//         return $value.ZERODIGIT == null ? $null() : $String($value.ZERODIGIT!);

//       case 'serializeToMap':
//         return __$serializeToMap;
//       case 'toString':
//         return __$toString;
//       default:
//         return _superclass.$getProperty(runtime, identifier);
//     }
//   }

//   @override
//   int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

//   @override
//   DateSymbols get $reified => $value;

//   @override
//   void $setProperty(Runtime runtime, String identifier, $Value value) {
//     switch (identifier) {
//       case 'NAME':
//         $value.NAME = value.$value as String;
//         break;
//       case 'ERAS':
//         $value.ERAS = value.$reified.cast<String>();
//         break;
//       case 'AVAILABLEFORMATS':
//         $value.AVAILABLEFORMATS = value.$reified?.cast<String, String>();
//         break;
//       case 'FIRSTDAYOFWEEK':
//         $value.FIRSTDAYOFWEEK = value.$value as int;
//         break;
//       case 'WEEKENDRANGE':
//         $value.WEEKENDRANGE = value.$reified.cast<int>();
//         break;
//       case 'FIRSTWEEKCUTOFFDAY':
//         $value.FIRSTWEEKCUTOFFDAY = value.$value as int;
//         break;
//       case 'ZERODIGIT':
//         $value.ZERODIGIT = value.$value as String?;
//         break;

//       default:
//         _superclass.$setProperty(runtime, identifier, value);
//     }
//   }

//   @override
//   final DateSymbols $value;

//   @override
//   String get NAME => $value.NAME;
//   @override
//   set NAME(String NAME) {
//     $value.NAME = NAME;
//   }

//   @override
//   List<String> get ERAS => $value.ERAS;
//   @override
//   set ERAS(List<String> ERAS) {
//     $value.ERAS = ERAS;
//   }

//   @override
//   Map<String, String>? get AVAILABLEFORMATS => $value.AVAILABLEFORMATS;
//   @override
//   set AVAILABLEFORMATS(Map<String, String>? AVAILABLEFORMATS) {
//     $value.AVAILABLEFORMATS = AVAILABLEFORMATS;
//   }

//   @override
//   int get FIRSTDAYOFWEEK => $value.FIRSTDAYOFWEEK;
//   @override
//   set FIRSTDAYOFWEEK(int FIRSTDAYOFWEEK) {
//     $value.FIRSTDAYOFWEEK = FIRSTDAYOFWEEK;
//   }

//   @override
//   List<int> get WEEKENDRANGE => $value.WEEKENDRANGE;
//   @override
//   set WEEKENDRANGE(List<int> WEEKENDRANGE) {
//     $value.WEEKENDRANGE = WEEKENDRANGE;
//   }

//   @override
//   int get FIRSTWEEKCUTOFFDAY => $value.FIRSTWEEKCUTOFFDAY;
//   @override
//   set FIRSTWEEKCUTOFFDAY(int FIRSTWEEKCUTOFFDAY) {
//     $value.FIRSTWEEKCUTOFFDAY = FIRSTWEEKCUTOFFDAY;
//   }

//   @override
//   String? get ZERODIGIT => $value.ZERODIGIT;
//   @override
//   set ZERODIGIT(String? ZERODIGIT) {
//     $value.ZERODIGIT = ZERODIGIT;
//   }

//   @override
//   Map<String, dynamic> serializeToMap() => $value.serializeToMap();
//   static const __$serializeToMap = $Function(_$serializeToMap);
//   static $Value? _$serializeToMap(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateSymbols;
//     final $result = obj.serializeToMap();
//     return $Map.wrap($result).map((key, value) {
//       return $MapEntry.wrap(MapEntry(
//         key is $Value ? key : $String(key),
//         value is $Value ? value : value,
//       ));
//     }) as $Value?;
//   }

//   @override
//   String toString() => $value.toString();
//   static const __$toString = $Function(_$toString);
//   static $Value? _$toString(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as DateSymbols;
//     final $result = obj.toString();
//     return $String($result);
//   }

//   static const __$DateSymbols$new = $Function(_$DateSymbols$new);
//   static $Value? _$DateSymbols$new(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final NAME = args[0]?.$value as String;
//     final ERAS = (args[1]!.$reified as List).cast<String>();
//     final ERANAMES = (args[2]!.$reified as List).cast<String>();
//     final NARROWMONTHS = (args[3]!.$reified as List).cast<String>();
//     final STANDALONENARROWMONTHS = (args[4]!.$reified as List).cast<String>();
//     final MONTHS = (args[5]!.$reified as List).cast<String>();
//     final STANDALONEMONTHS = (args[6]!.$reified as List).cast<String>();
//     final SHORTMONTHS = (args[7]!.$reified as List).cast<String>();
//     final STANDALONESHORTMONTHS = (args[8]!.$reified as List).cast<String>();
//     final WEEKDAYS = (args[9]!.$reified as List).cast<String>();
//     final STANDALONEWEEKDAYS = (args[10]!.$reified as List).cast<String>();
//     final SHORTWEEKDAYS = (args[11]!.$reified as List).cast<String>();
//     final STANDALONESHORTWEEKDAYS = (args[12]!.$reified as List).cast<String>();
//     final NARROWWEEKDAYS = (args[13]!.$reified as List).cast<String>();
//     final STANDALONENARROWWEEKDAYS =
//         (args[14]!.$reified as List).cast<String>();
//     final SHORTQUARTERS = (args[15]!.$reified as List).cast<String>();
//     final QUARTERS = (args[16]!.$reified as List).cast<String>();
//     final AMPMS = (args[17]!.$reified as List).cast<String>();
//     final ZERODIGIT = args[18]?.$value as String;
//     final DATEFORMATS = (args[19]!.$reified as List).cast<String>();
//     final TIMEFORMATS = (args[20]!.$reified as List).cast<String>();
//     final AVAILABLEFORMATS = args[21]?.$reified?.cast<String, String>();
//     final FIRSTDAYOFWEEK = args[22]?.$value as int;
//     final WEEKENDRANGE = args[23]?.$reified.cast<int>();
//     final FIRSTWEEKCUTOFFDAY = args[24]?.$value as int;
//     final DATETIMEFORMATS = (args[25]!.$reified as List).cast<String>();
//     return $DateSymbols.wrap(DateSymbols(
//       NAME: NAME,
//       ERAS: ERAS,
//       ERANAMES: ERANAMES,
//       NARROWMONTHS: NARROWMONTHS,
//       STANDALONENARROWMONTHS: STANDALONENARROWMONTHS,
//       MONTHS: MONTHS,
//       STANDALONEMONTHS: STANDALONEMONTHS,
//       SHORTMONTHS: SHORTMONTHS,
//       STANDALONESHORTMONTHS: STANDALONESHORTMONTHS,
//       WEEKDAYS: WEEKDAYS,
//       STANDALONEWEEKDAYS: STANDALONEWEEKDAYS,
//       SHORTWEEKDAYS: SHORTWEEKDAYS,
//       STANDALONESHORTWEEKDAYS: STANDALONESHORTWEEKDAYS,
//       NARROWWEEKDAYS: NARROWWEEKDAYS,
//       STANDALONENARROWWEEKDAYS: STANDALONENARROWWEEKDAYS,
//       SHORTQUARTERS: SHORTQUARTERS,
//       QUARTERS: QUARTERS,
//       AMPMS: AMPMS,
//       ZERODIGIT: ZERODIGIT,
//       DATEFORMATS: DATEFORMATS,
//       TIMEFORMATS: TIMEFORMATS,
//       AVAILABLEFORMATS: AVAILABLEFORMATS,
//       FIRSTDAYOFWEEK: FIRSTDAYOFWEEK,
//       WEEKENDRANGE: WEEKENDRANGE,
//       FIRSTWEEKCUTOFFDAY: FIRSTWEEKCUTOFFDAY,
//       DATETIMEFORMATS: DATETIMEFORMATS,
//     ));
//   }

//   static const __$DateSymbols$deserializeFromMap =
//       $Function(_$DateSymbols$deserializeFromMap);
//   static $Value? _$DateSymbols$deserializeFromMap(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final map = args[0]?.$reified.cast<dynamic, dynamic>();
//     return $DateSymbols.wrap(DateSymbols.deserializeFromMap(
//       map,
//     ));
//   }

//   @override
//   late List<String> AMPMS = $value.AMPMS;

//   @override
//   late List<String> DATEFORMATS = $value.DATEFORMATS;

//   @override
//   late List<String> DATETIMEFORMATS = $value.DATETIMEFORMATS;

//   @override
//   late List<String> ERANAMES = $value.ERANAMES;

//   @override
//   late List<String> MONTHS = $value.MONTHS;

//   @override
//   late List<String> NARROWMONTHS = $value.NARROWMONTHS;

//   @override
//   late List<String> NARROWWEEKDAYS = $value.NARROWWEEKDAYS;

//   @override
//   late List<String> QUARTERS = $value.QUARTERS;

//   @override
//   late List<String> SHORTMONTHS = $value.SHORTMONTHS;

//   @override
//   late List<String> SHORTQUARTERS = $value.SHORTQUARTERS;

//   @override
//   late List<String> SHORTWEEKDAYS = $value.SHORTWEEKDAYS;

//   @override
//   late List<String> STANDALONEMONTHS = $value.STANDALONEMONTHS;

//   @override
//   late List<String> STANDALONENARROWMONTHS = $value.STANDALONENARROWMONTHS;

//   @override
//   late List<String> STANDALONENARROWWEEKDAYS = $value.STANDALONENARROWWEEKDAYS;

//   @override
//   late List<String> STANDALONESHORTMONTHS = $value.STANDALONESHORTMONTHS;

//   @override
//   late List<String> STANDALONESHORTWEEKDAYS = $value.STANDALONESHORTWEEKDAYS;

//   @override
//   late List<String> STANDALONEWEEKDAYS = $value.STANDALONEWEEKDAYS;

//   @override
//   late List<String> TIMEFORMATS = $value.TIMEFORMATS;

//   @override
//   late List<String> WEEKDAYS = $value.WEEKDAYS;
// }
