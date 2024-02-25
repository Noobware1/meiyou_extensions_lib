import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';

import 'package:meiyou_extensions_lib/src/preference/preferences/two_state_preference.dart';

/// dart_eval bimodal wrapper for [TwoStatePreference]
class $TwoStatePreference implements TwoStatePreference, $Instance {
  /// Configure the [$TwoStatePreference] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $PreferenceData.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.twoStatePreference);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.preferenceData, [
        BridgeTypeRef(CoreTypes.bool, []),
      ]),
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
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
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
      'value': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [TwoStatePreference] in an [$TwoStatePreference]
  $TwoStatePreference.wrap(this.$value);

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
  TwoStatePreference get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final TwoStatePreference $value;

  @override
  String get key => $value.key;

  @override
  void Function(bool oldValue, bool newValue)? get onPreferenceChange =>
      $value.onPreferenceChange;

  @override
  String get summary => $value.summary;

  @override
  String get title => $value.title;

  @override
  bool get value => $value.value;
}

/// dart_eval bimodal wrapper for [CheckBoxPreference]
class $CheckBoxPreference implements CheckBoxPreference, $Instance {
  /// Configure the [$CheckBoxPreference] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'CheckBoxPreference.',
        __$CheckBoxPreference$new.call);
  }

  late final $Instance _superclass = $TwoStatePreference.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.checkBoxPreference);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.twoStatePreference, []),
      $implements: [],
      isAbstract: false,
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
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                true),
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
      'value': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [CheckBoxPreference] in an [$CheckBoxPreference]
  $CheckBoxPreference.wrap(this.$value);

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
  CheckBoxPreference get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final CheckBoxPreference $value;

  static const __$CheckBoxPreference$new = $Function(_$CheckBoxPreference$new);
  static $Value? _$CheckBoxPreference$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final key = args[0]?.$value as String;
    final title = args[1]?.$value as String;
    final summary = args[2]?.$value as String;
    final value = args[3]?.$value as bool? ?? false;
    final onPreferenceChange = args[4] as EvalCallable?;
    return $CheckBoxPreference.wrap(CheckBoxPreference(
      key: key,
      title: title,
      summary: summary,
      value: value,
      onPreferenceChange: onPreferenceChange == null
          ? null
          : (oldValue, newValue) {
              onPreferenceChange
                  .call(runtime, null, [$bool(oldValue), $bool(newValue)]);
            },
    ));
  }

  @override
  String get key => $value.key;

  @override
  void Function(bool oldValue, bool newValue)? get onPreferenceChange =>
      $value.onPreferenceChange;

  @override
  String get summary => $value.summary;

  @override
  String get title => $value.title;

  @override
  bool get value => $value.value;
}

/// dart_eval bimodal wrapper for [SwitchPreference]
class $SwitchPreference implements SwitchPreference, $Instance {
  /// Configure the [$SwitchPreference] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'SwitchPreference.', __$SwitchPreference$new.call);
  }

  late final $Instance _superclass = $TwoStatePreference.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.switchPreference);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.twoStatePreference, []),
      $implements: [],
      isAbstract: false,
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
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                true),
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
      'value': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [SwitchPreference] in an [$SwitchPreference]
  $SwitchPreference.wrap(this.$value);

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
  SwitchPreference get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final SwitchPreference $value;

  static const __$SwitchPreference$new = $Function(_$SwitchPreference$new);
  static $Value? _$SwitchPreference$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final key = args[0]?.$value as String;
    final title = args[1]?.$value as String;
    final summary = args[2]?.$value as String;
    final value = args[3]?.$value as bool? ?? false;
    final onPreferenceChange = args[4] as EvalCallable?;
    return $SwitchPreference.wrap(SwitchPreference(
      key: key,
      title: title,
      summary: summary,
      value: value,
      onPreferenceChange: onPreferenceChange == null
          ? null
          : (oldValue, newValue) {
              onPreferenceChange
                  .call(runtime, null, [$bool(oldValue), $bool(newValue)]);
            },
    ));
  }

  @override
  String get key => $value.key;

  @override
  void Function(bool oldValue, bool newValue)? get onPreferenceChange =>
      $value.onPreferenceChange;

  @override
  String get summary => $value.summary;

  @override
  String get title => $value.title;

  @override
  bool get value => $value.value;
}
