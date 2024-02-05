// import 'package:dart_eval/dart_eval.dart';
// import 'package:dart_eval/dart_eval_bridge.dart';
// import 'package:dart_eval/stdlib/core.dart';
// import 'package:intl/intl.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/intl/date_format.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/intl/types.dart';

// /// dart_eval bimodal wrapper for [Intl]
// class $Intl implements Intl, $Instance {
//   /// Configure the [$Intl] wrapper for use in a [Runtime]
//   static void configureForCompile(BridgeDeclarationRegistry registry) {
//     registry.defineBridgeClass($declaration);
//   }

//   static void configureForRuntime(Runtime runtime) {
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.', __$Intl$new.call);

//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.defaultLocale*g',
//         __$static$getter$defaultLocale.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.systemLocale*g',
//         __$static$getter$systemLocale.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.defaultLocale*s',
//         __$static$setter$defaultLocale.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.systemLocale*s',
//         __$static$setter$systemLocale.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'Intl.message', __$static$method$message.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.verifiedLocale',
//         __$static$method$verifiedLocale.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.shortLocale',
//         __$static$method$shortLocale.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.canonicalizedLocale',
//         __$static$method$canonicalizedLocale.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'Intl.plural', __$static$method$plural.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.pluralLogic',
//         __$static$method$pluralLogic.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'Intl.gender', __$static$method$gender.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.genderLogic',
//         __$static$method$genderLogic.call);
//     runtime.registerBridgeFunc(
//         $type.spec!.library, 'Intl.select', __$static$method$select.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.selectLogic',
//         __$static$method$selectLogic.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.withLocale',
//         __$static$method$withLocale.call);
//     runtime.registerBridgeFunc($type.spec!.library, 'Intl.getCurrentLocale',
//         __$static$method$getCurrentLocale.call);
//   }

//   late final $Instance _superclass = $Object($value);

//   static const $type = BridgeTypeRef(IntlTypes.intl);

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
//                 'aLocale',
//                 BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                     nullable: true),
//                 true)
//           ],
//           namedParams: [],
//         ),
//         isFactory: false,
//       )
//     },
//     fields: {},
//     methods: {
//       'message': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'messageText',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [
//               BridgeParameter(
//                   'desc',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'examples',
//                   BridgeTypeAnnotation(
//                       BridgeTypeRef(CoreTypes.map, [
//                         BridgeTypeRef(CoreTypes.string, []),
//                         BridgeTypeRef(CoreTypes.object, []),
//                       ]),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'locale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'name',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'args',
//                   BridgeTypeAnnotation(
//                       BridgeTypeRef(CoreTypes.list, [
//                         BridgeTypeRef(CoreTypes.object, []),
//                       ]),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'meaning',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'skip',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: true),
//                   true)
//             ],
//           ),
//           isStatic: true),
//       'verifiedLocale': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: true),
//             params: [
//               BridgeParameter(
//                   'newLocale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   false),
//               BridgeParameter(
//                   'localeExists',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [
//               BridgeParameter(
//                   'onFailure',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
//                       nullable: false),
//                   true)
//             ],
//           ),
//           isStatic: true),
//       'shortLocale': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'aLocale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: true),
//       'canonicalizedLocale': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'aLocale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: true),
//       'plural': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'howMany',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [
//               BridgeParameter(
//                   'zero',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'one',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'two',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'few',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'many',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'other',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'desc',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'examples',
//                   BridgeTypeAnnotation(
//                       BridgeTypeRef(CoreTypes.map, [
//                         BridgeTypeRef(CoreTypes.string, []),
//                         BridgeTypeRef(CoreTypes.object, []),
//                       ]),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'locale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'precision',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'name',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'args',
//                   BridgeTypeAnnotation(
//                       BridgeTypeRef(CoreTypes.list, [
//                         BridgeTypeRef(CoreTypes.object, []),
//                       ]),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'meaning',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'skip',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: true),
//                   true)
//             ],
//           ),
//           isStatic: true),
//       'pluralLogic': BridgeMethodDef(
//           BridgeFunctionDef(
//             generics: {
//               'T': BridgeGenericParam(),
//             },
//             returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'howMany',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [
//               BridgeParameter(
//                   'zero',
//                   BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'one',
//                   BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'two',
//                   BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'few',
//                   BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'many',
//                   BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'other',
//                   BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'locale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'precision',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'meaning',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'useExplicitNumberCases',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: false),
//                   true)
//             ],
//           ),
//           isStatic: true),
//       'gender': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'targetGender',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [
//               BridgeParameter(
//                   'female',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'male',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'other',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'desc',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'examples',
//                   BridgeTypeAnnotation(
//                       BridgeTypeRef(CoreTypes.map, [
//                         BridgeTypeRef(CoreTypes.string, []),
//                         BridgeTypeRef(CoreTypes.object, []),
//                       ]),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'locale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'name',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'args',
//                   BridgeTypeAnnotation(
//                       BridgeTypeRef(CoreTypes.list, [
//                         BridgeTypeRef(CoreTypes.object, []),
//                       ]),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'meaning',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'skip',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: true),
//                   true)
//             ],
//           ),
//           isStatic: true),
//       'genderLogic': BridgeMethodDef(
//           BridgeFunctionDef(
//             generics: {
//               'T': BridgeGenericParam(),
//             },
//             returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'targetGender',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [
//               BridgeParameter(
//                   'female',
//                   BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'male',
//                   BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'other',
//                   BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'locale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true)
//             ],
//           ),
//           isStatic: true),
//       'select': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'choice',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.object, []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'cases',
//                   BridgeTypeAnnotation(
//                       BridgeTypeRef(CoreTypes.map, [
//                         BridgeTypeRef(CoreTypes.object, []),
//                         BridgeTypeRef(CoreTypes.string, []),
//                       ]),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [
//               BridgeParameter(
//                   'desc',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'examples',
//                   BridgeTypeAnnotation(
//                       BridgeTypeRef(CoreTypes.map, [
//                         BridgeTypeRef(CoreTypes.string, []),
//                         BridgeTypeRef(CoreTypes.object, []),
//                       ]),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'locale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'name',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'args',
//                   BridgeTypeAnnotation(
//                       BridgeTypeRef(CoreTypes.list, [
//                         BridgeTypeRef(CoreTypes.object, []),
//                       ]),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'meaning',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'skip',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
//                       nullable: true),
//                   true)
//             ],
//           ),
//           isStatic: true),
//       'selectLogic': BridgeMethodDef(
//           BridgeFunctionDef(
//             generics: {
//               'T': BridgeGenericParam(),
//             },
//             returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'choice',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.object, []),
//                       nullable: false),
//                   false),
//               BridgeParameter(
//                   'cases',
//                   BridgeTypeAnnotation(
//                       BridgeTypeRef(CoreTypes.map, [
//                         BridgeTypeRef(CoreTypes.object, []),
//                         BridgeTypeRef.ref('T', []),
//                       ]),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: true),
//       'withLocale': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'locale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   false),
//               BridgeParameter(
//                   'function',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
//                       nullable: false),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: true),
//       'getCurrentLocale': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: false),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: true),
//       'date': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(
//                 BridgeTypeRef(IntlTypes.dateFormat, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'pattern',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true),
//               BridgeParameter(
//                   'desiredLocale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   true)
//             ],
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
//     getters: {
//       'defaultLocale': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                 nullable: true),
//             params: [],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'systemLocale': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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
//     },
//     setters: {
//       'defaultLocale': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
//                 nullable: false),
//             params: [
//               BridgeParameter(
//                   'newLocale',
//                   BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
//                       nullable: true),
//                   false)
//             ],
//             namedParams: [],
//           ),
//           isStatic: false),
//       'systemLocale': BridgeMethodDef(
//           BridgeFunctionDef(
//             returns: BridgeTypeAnnotation(BridgeTypeRef(IntlTypes.unknown, []),
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
//           isStatic: false),
//     },
//     bridge: false,
//     wrap: true,
//   );

//   /// Wrap an [Intl] in an [$Intl]
//   $Intl.wrap(this.$value);

//   @override
//   $Value? $getProperty(Runtime runtime, String identifier) {
//     switch (identifier) {
//       case 'locale':
//         return $String($value.locale);
//       case 'date':
//         return __$date;
//       case 'toString':
//         return __$toString;
//       default:
//         return _superclass.$getProperty(runtime, identifier);
//     }
//   }

//   @override
//   int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

//   @override
//   Intl get $reified => $value;

//   @override
//   void $setProperty(Runtime runtime, String identifier, $Value value) {
//     switch (identifier) {
//       default:
//         _superclass.$setProperty(runtime, identifier, value);
//     }
//   }

//   @override
//   final Intl $value;

//   @override
//   String get locale => $value.locale;

//   static const __$static$getter$defaultLocale =
//       $Function(_$static$getter$defaultLocale);
//   static $Value? _$static$getter$defaultLocale(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     return Intl.defaultLocale == null ? $null() : $String(Intl.defaultLocale!);
//   }

//   static const __$static$getter$systemLocale =
//       $Function(_$static$getter$systemLocale);
//   static $Value? _$static$getter$systemLocale(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     return $String(Intl.systemLocale);
//   }

//   static const __$static$setter$defaultLocale =
//       $Function(_$static$setter$defaultLocale);
//   static $Value? _$static$setter$defaultLocale(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final newLocale = args[0]?.$value as String;
//     Intl.defaultLocale = newLocale;
//     return null;
//   }

//   static const __$static$setter$systemLocale =
//       $Function(_$static$setter$systemLocale);
//   static $Value? _$static$setter$systemLocale(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0]?.$value as String;
//     Intl.systemLocale = locale;
//     return null;
//   }

//   @override
//   DateFormat date([String? pattern, String? desiredLocale]) => $value.date(
//         pattern,
//         desiredLocale,
//       );
//   static const __$date = $Function(_$date);
//   static $Value? _$date(Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as Intl;
//     final pattern = args[0]?.$value as String;
//     final desiredLocale = args[1]?.$value as String;
//     final $result = obj.date(
//       pattern,
//       desiredLocale,
//     );
//     return $DateFormat.wrap($result);
//   }

//   @override
//   String toString() => $value.toString();
//   static const __$toString = $Function(_$toString);
//   static $Value? _$toString(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final obj = target?.$value as Intl;
//     final $result = obj.toString();
//     return $String($result);
//   }

//   static const __$static$method$message = $Function(_$static$method$message);
//   static $Value? _$static$method$message(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final messageText = args[0]?.$value as String;
//     final desc = args[1]?.$value as String? ?? '';
//     final examples = args[2]?.$reified?.cast<String, Object>();
//     final locale = args[3]?.$value as String;
//     final name = args[4]?.$value as String;
//     final _args = args[5]?.$reified?.cast<Object>();
//     final meaning = args[6]?.$value as String;
//     final skip = args[7]?.$value as bool;
//     final $result = Intl.message(
//       messageText,
//       desc: desc,
//       examples: examples,
//       locale: locale,
//       name: name,
//       args: _args,
//       meaning: meaning,
//       skip: skip,
//     );
//     return $String($result);
//   }

//   static const __$static$method$verifiedLocale =
//       $Function(_$static$method$verifiedLocale);
//   static $Value? _$static$method$verifiedLocale(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final newLocale = args[0]?.$value as String;
//     final localeExists = args[1] as EvalCallable;
//     final onFailure = args[2]?.$reified as String? Function(String);
//     final $result = Intl.verifiedLocale(
//       newLocale,
//       (b) => localeExists.call(runtime, null, [$String(b)])!.$value as bool,
//       onFailure: onFailure,
//     );
//     return $result == null ? $null() : $String($result);
//   }

//   static const __$static$method$shortLocale =
//       $Function(_$static$method$shortLocale);
//   static $Value? _$static$method$shortLocale(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final aLocale = args[0]?.$value as String;
//     final $result = Intl.shortLocale(
//       aLocale,
//     );
//     return $String($result);
//   }

//   static const __$static$method$canonicalizedLocale =
//       $Function(_$static$method$canonicalizedLocale);
//   static $Value? _$static$method$canonicalizedLocale(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final aLocale = args[0]?.$value as String;
//     final $result = Intl.canonicalizedLocale(
//       aLocale,
//     );
//     return $String($result);
//   }

//   static const __$static$method$plural = $Function(_$static$method$plural);
//   static $Value? _$static$method$plural(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final howMany = args[0]?.$value as num;
//     final zero = args[1]?.$value as String;
//     final one = args[2]?.$value as String;
//     final two = args[3]?.$value as String;
//     final few = args[4]?.$value as String;
//     final many = args[5]?.$value as String;
//     final other = args[6]?.$value as String;
//     final desc = args[7]?.$value as String;
//     final examples = args[8]?.$reified?.cast<String, Object>();
//     final locale = args[9]?.$value as String;
//     final precision = args[10]?.$value as int;
//     final name = args[11]?.$value as String;
//     final _args = args[12]?.$reified?.cast<Object>();
//     final meaning = args[13]?.$value as String;
//     final skip = args[14]?.$value as bool;
//     final $result = Intl.plural(
//       howMany,
//       zero: zero,
//       one: one,
//       two: two,
//       few: few,
//       many: many,
//       other: other,
//       desc: desc,
//       examples: examples,
//       locale: locale,
//       precision: precision,
//       name: name,
//       args: _args,
//       meaning: meaning,
//       skip: skip,
//     );
//     return $String($result);
//   }

//   static const __$static$method$pluralLogic =
//       $Function(_$static$method$pluralLogic);
//   static $Value? _$static$method$pluralLogic(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final howMany = args[0]?.$value as num;
//     final zero = args[1]?.$reified;
//     final one = args[2]?.$reified;
//     final two = args[3]?.$reified;
//     final few = args[4]?.$reified;
//     final many = args[5]?.$reified;
//     final other = args[6]?.$reified;
//     final locale = args[7]?.$value as String;
//     final precision = args[8]?.$value as int;
//     final meaning = args[9]?.$value as String;
//     final useExplicitNumberCases = args[10]?.$value as bool? ?? true;
//     final $result = Intl.pluralLogic(
//       howMany,
//       zero: zero,
//       one: one,
//       two: two,
//       few: few,
//       many: many,
//       other: other,
//       locale: locale,
//       precision: precision,
//       meaning: meaning,
//       useExplicitNumberCases: useExplicitNumberCases,
//     );
//     return $result;
//   }

//   static const __$static$method$gender = $Function(_$static$method$gender);
//   static $Value? _$static$method$gender(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final targetGender = args[0]?.$value as String;
//     final female = args[1]?.$value as String;
//     final male = args[2]?.$value as String;
//     final other = args[3]?.$value as String;
//     final desc = args[4]?.$value as String;
//     final examples = args[5]?.$reified?.cast<String, Object>();
//     final locale = args[6]?.$value as String;
//     final name = args[7]?.$value as String;
//     final _args = args[8]?.$reified?.cast<Object>();
//     final meaning = args[9]?.$value as String;
//     final skip = args[10]?.$value as bool;
//     final $result = Intl.gender(
//       targetGender,
//       female: female,
//       male: male,
//       other: other,
//       desc: desc,
//       examples: examples,
//       locale: locale,
//       name: name,
//       args: _args,
//       meaning: meaning,
//       skip: skip,
//     );
//     return $String($result);
//   }

//   static const __$static$method$genderLogic =
//       $Function(_$static$method$genderLogic);
//   static $Value? _$static$method$genderLogic(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final targetGender = args[0]?.$value as String;
//     final female = args[1]?.$reified;
//     final male = args[2]?.$reified;
//     final other = args[3]?.$reified;
//     final locale = args[4]?.$value as String;
//     final $result = Intl.genderLogic(
//       targetGender,
//       female: female,
//       male: male,
//       other: other,
//       locale: locale,
//     );
//     return $result;
//   }

//   static const __$static$method$select = $Function(_$static$method$select);
//   static $Value? _$static$method$select(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final choice = args[0]?.$value as Object;
//     final cases = args[1]?.$reified.cast<Object, String>();
//     final desc = args[2]?.$value as String;
//     final examples = args[3]?.$reified?.cast<String, Object>();
//     final locale = args[4]?.$value as String;
//     final name = args[5]?.$value as String;
//     final _args = args[6]?.$reified?.cast<Object>();
//     final meaning = args[7]?.$value as String;
//     final skip = args[8]?.$value as bool;
//     final $result = Intl.select(
//       choice,
//       cases,
//       desc: desc,
//       examples: examples,
//       locale: locale,
//       name: name,
//       args: _args,
//       meaning: meaning,
//       skip: skip,
//     );
//     return $String($result);
//   }

//   static const __$static$method$selectLogic =
//       $Function(_$static$method$selectLogic);
//   static $Value? _$static$method$selectLogic(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final choice = args[0]?.$value as Object;
//     final cases = args[1]?.$reified;
//     final $result = Intl.selectLogic(
//       choice,
//       cases,
//     );
//     return $result;
//   }

//   static const __$static$method$withLocale =
//       $Function(_$static$method$withLocale);
//   static $Value? _$static$method$withLocale(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final locale = args[0]?.$value as String;
//     final function = args[1] as EvalCallable;
//     final $result = Intl.withLocale(
//       locale,
//       () => function.call(runtime, null, []),
//     );
//     return $result;
//   }

//   static const __$static$method$getCurrentLocale =
//       $Function(_$static$method$getCurrentLocale);
//   static $Value? _$static$method$getCurrentLocale(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final $result = Intl.getCurrentLocale();
//     return $String($result);
//   }

//   static const __$Intl$new = $Function(_$Intl$new);
//   static $Value? _$Intl$new(
//       Runtime runtime, $Value? target, List<$Value?> args) {
//     final aLocale = args[0]?.$value as String;
//     return $Intl.wrap(Intl(aLocale));
//   }
// }
