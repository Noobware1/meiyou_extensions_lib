import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';

/// dart_eval bimodal wrapper for [PreferenceData]
class $PreferenceData<T> implements PreferenceData<T>, $Instance {
  /// Configure the [$PreferenceData] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.preferenceData);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $implements: [],
      isAbstract: true,
      generics: {
        'T': BridgeGenericParam(),
      },
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'key',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'title',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'summary',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'value',
                BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                    nullable: false),
                false),
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'key': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'title': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'summary': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'value': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef.ref('T', []), nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [PreferenceData] in an [$PreferenceData]
  $PreferenceData.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'key':
        return $String($value.key);
      case 'title':
        return $String($value.title);
      case 'summary':
        return $String($value.summary);
      case 'value':
        return $value as $Value?;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  PreferenceData get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final PreferenceData $value;

  @override
  String get key => $value.key;
  @override
  String get title => $value.title;
  @override
  String get summary => $value.summary;
  @override
  T get value => $value.value;
}
