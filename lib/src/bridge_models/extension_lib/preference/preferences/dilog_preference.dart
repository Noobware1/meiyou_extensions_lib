import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/dilog_preference.dart';

import 'preference_data.dart';

/// dart_eval bimodal wrapper for [DilogPreference]
class $DilogPreference<T> implements DilogPreference<T>, $Instance {
  /// Configure the [$DilogPreference] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $PreferenceData.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.dilogPreference);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.preferenceData, [
        BridgeTypeRef.ref('T', []),
      ]),
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
            BridgeParameter(
                'dialogTitle',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'dialogMessage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'dialogTitle': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'dialogMessage': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [DilogPreference] in an [$DilogPreference]
  $DilogPreference.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'dialogTitle':
        return dialogTitle == null ? const $null() : $String(dialogTitle!);
      case 'dialogMessage':
        return dialogMessage == null ? const $null() : $String(dialogMessage!);

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  DilogPreference get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final DilogPreference $value;

  @override
  String? get dialogTitle => $value.dialogTitle;

  @override
  String? get dialogMessage => $value.dialogMessage;

  @override
  String get key => $value.key;

  @override
  String get summary => $value.summary;

  @override
  String get title => $value.title;

  @override
  get value => $value.value;
}

/// dart_eval bimodal wrapper for [EditTextPreference]
class $EditTextPreference implements EditTextPreference, $Instance {
  /// Configure the [$EditTextPreference] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'EditTextPreference.',
        __$EditTextPreference$new.call);
  }

  late final $Instance _superclass = $DilogPreference.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.editTextPreference);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.dilogPreference, [
        BridgeTypeRef(CoreTypes.string, []),
      ]),
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
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'dialogTitle',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'dialogMessage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'value': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [EditTextPreference] in an [$EditTextPreference]
  $EditTextPreference.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'value':
        return $String($value.value);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  EditTextPreference get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final EditTextPreference $value;

  static const __$EditTextPreference$new = $Function(_$EditTextPreference$new);
  static $Value? _$EditTextPreference$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final key = args[0]?.$value;
    final title = args[1]?.$value;
    final summary = args[2]?.$value;
    final value = args[3]?.$value;
    final dialogTitle = args[4]?.$value;
    final dialogMessage = args[5]?.$value;
    return $EditTextPreference.wrap(EditTextPreference(
      key: key,
      title: title,
      summary: summary,
      value: value,
      dialogTitle: dialogTitle,
      dialogMessage: dialogMessage,
    ));
  }

  @override
  String? get dialogMessage => $value.dialogMessage;

  @override
  String? get dialogTitle => $value.dialogTitle;

  @override
  String get key => $value.key;

  @override
  String get summary => $value.summary;

  @override
  String get title => $value.title;

  @override
  String get value => $value.value;
}

/// dart_eval bimodal wrapper for [ListPreference]
class $ListPreference implements ListPreference, $Instance {
  /// Configure the [$ListPreference] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ListPreference.', __$ListPreference$new.call);
  }

  late final $Instance _superclass = $DilogPreference.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.listPreference);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.dilogPreference, [
        BridgeTypeRef(CoreTypes.string, []),
      ]),
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
                'dialogTitle',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'dialogMessage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'defaultIndex',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: false),
                true),
            BridgeParameter(
                'entries',
                BridgeTypeAnnotation(
                    BridgeTypeRef(
                        CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
                    nullable: false),
                false),
            BridgeParameter(
                'entryValues',
                BridgeTypeAnnotation(
                    BridgeTypeRef(
                        CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
                    nullable: false),
                false)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'value': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'entries': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: false),
          isStatic: false),
      'entryValues': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [ListPreference] in an [$ListPreference]
  $ListPreference.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'value':
        return $int($value.value);
      case 'entries':
        return $List.wrap(List.generate(($value.entries).length, (index) {
          return $String($value.entries[index]);
        }));
      case 'entryValues':
        return $List.wrap(List.generate(($value.entryValues).length, (index) {
          return $String($value.entryValues[index]);
        }));

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ListPreference get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ListPreference $value;

  @override
  List<String> get entries => $value.entries;
  @override
  List<String> get entryValues => $value.entryValues;

  static const __$ListPreference$new = $Function(_$ListPreference$new);
  static $Value? _$ListPreference$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final key = args[0]?.$value as String;
    final title = args[1]?.$value as String;
    final summary = args[2]?.$value as String;
    final dialogTitle = args[3]?.$value as String?;
    final dialogMessage = args[4]?.$value as String?;
    final defaultIndex = args[5]?.$value as int? ?? 0;
    final entries = (args[6]!.$reified as List).cast<String>();
    final entryValues = (args[7]!.$reified as List).cast<String>();
    return $ListPreference.wrap(ListPreference(
      key: key,
      title: title,
      summary: summary,
      dialogTitle: dialogTitle,
      dialogMessage: dialogMessage,
      defaultIndex: defaultIndex,
      entries: entries,
      entryValues: entryValues,
    ));
  }

  @override
  String? get dialogMessage => $value.dialogMessage;

  @override
  String? get dialogTitle => $value.dialogTitle;

  @override
  String get key => $value.key;

  @override
  String get summary => $value.summary;

  @override
  String get title => $value.title;

  @override
  get value => $value.value;
}

/// dart_eval bimodal wrapper for [MultiSelectListPreference]
class $MultiSelectListPreference
    implements MultiSelectListPreference, $Instance {
  /// Configure the [$MultiSelectListPreference] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library,
        'MultiSelectListPreference.', __$MultiSelectListPreference$new.call);
  }

  late final $Instance _superclass = $DilogPreference.wrap($value);

  static const $type =
      BridgeTypeRef(ExtensionLibTypes.multiSelectListPreference);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.dilogPreference, [
        BridgeTypeRef(CoreTypes.list, [
          BridgeTypeRef(CoreTypes.int, []),
        ]),
      ]),
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
                    nullable: true),
                true),
            BridgeParameter(
                'dialogTitle',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'dialogMessage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'defaultSelected',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: false),
                true),
            BridgeParameter(
                'entries',
                BridgeTypeAnnotation(
                    BridgeTypeRef(
                        CoreTypes.list, [BridgeTypeRef(CoreTypes.string, [])]),
                    nullable: false),
                false),
            BridgeParameter(
                'entryValues',
                BridgeTypeAnnotation(
                    BridgeTypeRef(
                        CoreTypes.list, [BridgeTypeRef(CoreTypes.string, [])]),
                    nullable: false),
                false)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'value': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: false),
          isStatic: false),
      'entries': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: false),
          isStatic: false),
      'entryValues': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [MultiSelectListPreference] in an [$MultiSelectListPreference]
  $MultiSelectListPreference.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'value':
        return $List.wrap(List.generate($value.value.length, (index) {
          return $String($value.value[index]);
        }));
      case 'entries':
        return $List.wrap(List.generate($value.entries.length, (index) {
          return $String($value.entries[index]);
        }));
      case 'entryValues':
        return $List.wrap(List.generate($value.entryValues.length, (index) {
          return $String($value.entryValues[index]);
        }));

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  MultiSelectListPreference get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final MultiSelectListPreference $value;

  @override
  List<String> get entries => $value.entries;
  @override
  List<String> get entryValues => $value.entryValues;

  static const __$MultiSelectListPreference$new =
      $Function(_$MultiSelectListPreference$new);
  static $Value? _$MultiSelectListPreference$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final key = args[0]?.$value as String;
    final title = args[1]?.$value as String;
    final summary = args[2]?.$value as String;
    final dialogTitle = args[3]?.$value as String?;
    final dialogMessage = args[4]?.$value as String?;
    final defaultSelected = (args[5]?.$reified as List).cast<String>();
    final entries = args[6]?.$reified.cast<String>();
    final entryValues = args[7]?.$reified.cast<String>();
    return $MultiSelectListPreference.wrap(MultiSelectListPreference(
      key: key,
      title: title,
      summary: summary,
      dialogTitle: dialogTitle,
      dialogMessage: dialogMessage,
      defaultSelected: defaultSelected,
      entries: entries,
      entryValues: entryValues,
    ));
  }

  @override
  String? get dialogMessage => $value.dialogMessage;

  @override
  String? get dialogTitle => $value.dialogTitle;

  @override
  String get key => $value.key;

  @override
  String get summary => $value.summary;

  @override
  String get title => $value.title;

  @override
  List<String> get value => $value.value;
}
