import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference.dart';

/// dart_eval bimodal wrapper for [Preference]
class $Preference<T> implements Preference<T>, $Instance {
  /// Configure the [$Preference] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.preference);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
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
            BridgeParameter(
                'onPreferenceChange',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                    nullable: false),
                true)
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
      'onPreferenceChange': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Preference] in an [$Preference]
  $Preference.wrap(this.$value);

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
      case 'onPreferenceChange':
        return __$onPreferenceChange;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Preference get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  static const __$onPreferenceChange = $Function(_$onPreferenceChange);
  static $Value? _$onPreferenceChange(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target!.$value as Preference;
    $this.onPreferenceChange!(args[0]?.$reified, args[1]?.$reified);
    return null;
  }

  @override
  final Preference $value;

  @override
  String get key => $value.key;
  @override
  String get title => $value.title;
  @override
  String get summary => $value.summary;
  @override
  T get value => $value.value;
  @override
  void Function(T oldValue, T newValue)? get onPreferenceChange =>
      $value.onPreferenceChange;
}
