// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';

import 'package:meiyou_extensions_lib/src/models/filter.dart';

/// dart_eval bimodal wrapper for [Filter]
class $Filter<T> implements Filter<T>, $Instance {
  /// Configure the [$Filter] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.filter);

  static const $declaration = BridgeClassDef(
    BridgeClassType($type,
        $extends: null,
        $implements: [],
        isAbstract: true,
        generics: {
          'T': BridgeGenericParam(),
        }),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type), params: [
          BridgeParameter(
              'name',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                  nullable: false),
              false),
          BridgeParameter(
              'state',
              BridgeTypeAnnotation(BridgeTypeRef.ref('T', []), nullable: true),
              false),
        ], namedParams: [], generics: {
          'T': BridgeGenericParam(),
        }),
        isFactory: false,
      )
    },
    fields: {
      'name': BridgeFieldDef(
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: false,
          ),
          isStatic: false),
      'state': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef.ref('T', []), nullable: true),
          isStatic: false),
    },
    methods: {
      '==': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'other',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.object, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {
      'hashCode': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Filter] in an [$Filter]
  $Filter.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String($value.name);
      case 'state':
        return $value.state as $Value?;
      case 'hashCode':
        return $int($value.hashCode);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Filter<T> get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'state':
        $value.state = value as T;
        break;

      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Filter<T> $value;

  @override
  String get name => $value.name;
  @override
  T get state => $value.state;
  @override
  set state(T state) {
    $value.state = state;
  }
}

/// dart_eval bimodal wrapper for [HeaderFilter]
class $HeaderFilter implements HeaderFilter, $Instance {
  /// Configure the [$HeaderFilter] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'HeaderFilter.', __$HeaderFilter$new.call);
  }

  late final $Instance _superclass = $Filter.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.headerFilter);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.filter, [
        BridgeTypeRef(CoreTypes.dynamic, []),
      ]),
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [HeaderFilter] in an [$HeaderFilter]
  $HeaderFilter.wrap(this.$value);

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
  HeaderFilter get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final HeaderFilter $value;

  static const __$HeaderFilter$new = $Function(_$HeaderFilter$new);
  static $Value? _$HeaderFilter$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    return $HeaderFilter.wrap(HeaderFilter(name));
  }

  @override
  late var state = $value.state;

  @override
  String get name => $value.state;
}

/// dart_eval bimodal wrapper for [SeparatorFilter]
class $SeparatorFilter implements SeparatorFilter, $Instance {
  /// Configure the [$SeparatorFilter] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'SeparatorFilter.', __$SeparatorFilter$new.call);
  }

  late final $Instance _superclass = $Filter.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.separatorFilter);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.filter, [
        BridgeTypeRef(CoreTypes.dynamic, []),
      ]),
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
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [SeparatorFilter] in an [$SeparatorFilter]
  $SeparatorFilter.wrap(this.$value);

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
  SeparatorFilter get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final SeparatorFilter $value;

  static const __$SeparatorFilter$new = $Function(_$SeparatorFilter$new);
  static $Value? _$SeparatorFilter$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $SeparatorFilter.wrap(SeparatorFilter());
  }

  @override
  late var state = $value.state;

  @override
  String get name => $value.state;
}

/// dart_eval bimodal wrapper for [SelectFilter]
class $SelectFilter<V> implements SelectFilter<V>, $Instance {
  /// Configure the [$SelectFilter] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'SelectFilter.', __$SelectFilter$new.call);
  }

  late final $Instance _superclass = $Filter.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.selectFilter);

  static const $declaration = BridgeClassDef(
    BridgeClassType($type,
        $extends: BridgeTypeRef(ExtensionLibTypes.filter, [
          BridgeTypeRef(CoreTypes.int, []),
        ]),
        $implements: [],
        isAbstract: false,
        generics: {
          'V': BridgeGenericParam(),
        }),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'values',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('V', [])]),
                    nullable: false),
                false),
            BridgeParameter(
                'state',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: false),
                true)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'values': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [BridgeTypeRef.ref('V', [])]),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [SelectFilter] in an [$SelectFilter]
  $SelectFilter.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'state':
        return $int($value.state);
      case 'values':
        return $List.wrap(List.generate(values.length, (index) {
          return values[index] as $Value;
        }));
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  SelectFilter<V> get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final SelectFilter<V> $value;

  static const __$SelectFilter$new = $Function(_$SelectFilter$new);
  static $Value? _$SelectFilter$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final values = args[1]?.$value as List;
    final state = args[2]?.$value as int? ?? 0;
    return $SelectFilter.wrap(SelectFilter(name, values, state));
  }

  @override
  late int state = $value.state;

  @override
  String get name => $value.name;

  @override
  List<V> get values => $value.values;
}

/// dart_eval bimodal wrapper for [TextFilter]
class $TextFilter implements TextFilter, $Instance {
  /// Configure the [$TextFilter] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'TextFilter.', __$TextFilter$new.call);
  }

  late final $Instance _superclass = $Filter.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.textFilter);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.filter, [
        BridgeTypeRef(CoreTypes.string, []),
      ]),
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'state',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [TextFilter] in an [$TextFilter]
  $TextFilter.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'state':
        return $String($value.state);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  TextFilter get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final TextFilter $value;

  static const __$TextFilter$new = $Function(_$TextFilter$new);
  static $Value? _$TextFilter$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final state = args[1]?.$value as String? ?? "";
    return $TextFilter.wrap(TextFilter(name, state));
  }

  @override
  late String state = $value.state;

  @override
  String get name => $value.name;
}

/// dart_eval bimodal wrapper for [CheckBoxFilter]
class $CheckBoxFilter implements CheckBoxFilter, $Instance {
  /// Configure the [$CheckBoxFilter] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'CheckBoxFilter.', __$CheckBoxFilter$new.call);
  }

  late final $Instance _superclass = $Filter.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.checkBoxFilter);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.filter, [
        BridgeTypeRef(CoreTypes.bool, []),
      ]),
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'state',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                true)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [CheckBoxFilter] in an [$CheckBoxFilter]
  $CheckBoxFilter.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'state':
        return $bool($value.state);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  CheckBoxFilter get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final CheckBoxFilter $value;

  static const __$CheckBoxFilter$new = $Function(_$CheckBoxFilter$new);
  static $Value? _$CheckBoxFilter$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final state = args[1]?.$value as bool? ?? false;
    return $CheckBoxFilter.wrap(CheckBoxFilter(name, state));
  }

  @override
  late bool state = $value.state;

  @override
  String get name => $value.name;
}

/// dart_eval bimodal wrapper for [TriStateFilter]
class $TriStateFilter implements TriStateFilter, $Instance {
  /// Configure the [$TriStateFilter] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'TriStateFilter.', __$TriStateFilter$new.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'TriStateFilter.STATE_IGNORE*g', __$static$STATE_IGNORE.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'TriStateFilter.STATE_INCLUDE*g', __$static$STATE_INCLUDE.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'TriStateFilter.STATE_EXCLUDE*g', __$static$STATE_EXCLUDE.call);
  }

  late final $Instance _superclass = $Filter.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.triStateFilter);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.filter, [
        BridgeTypeRef(CoreTypes.int, []),
      ]),
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'state',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: false),
                true)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'STATE_IGNORE': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: true),
      'STATE_INCLUDE': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: true),
      'STATE_EXCLUDE': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: true),
    },
    methods: {},
    getters: {
      'isIgnored': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'isIncluded': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'isExcluded': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [TriStateFilter] in an [$TriStateFilter]
  $TriStateFilter.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'isIgnored':
        return $bool($value.isIgnored);
      case 'isIncluded':
        return $bool($value.isIncluded);
      case 'isExcluded':
        return $bool($value.isExcluded);

      case 'state':
        return $int($value.state);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  TriStateFilter get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final TriStateFilter $value;

  static const __$static$STATE_IGNORE = $Function(_$static$STATE_IGNORE);
  static $Value? _$static$STATE_IGNORE(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = TriStateFilter.STATE_IGNORE;
    return $int($result);
  }

  static const __$static$STATE_INCLUDE = $Function(_$static$STATE_INCLUDE);
  static $Value? _$static$STATE_INCLUDE(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = TriStateFilter.STATE_INCLUDE;
    return $int($result);
  }

  static const __$static$STATE_EXCLUDE = $Function(_$static$STATE_EXCLUDE);
  static $Value? _$static$STATE_EXCLUDE(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = TriStateFilter.STATE_EXCLUDE;
    return $int($result);
  }

  @override
  bool get isIgnored => $value.isIgnored;

  @override
  bool get isIncluded => $value.isIncluded;

  @override
  bool get isExcluded => $value.isExcluded;

  static const __$TriStateFilter$new = $Function(_$TriStateFilter$new);
  static $Value? _$TriStateFilter$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final state = args[1]?.$value as int? ?? TriStateFilter.STATE_IGNORE;
    return $TriStateFilter.wrap(TriStateFilter(name, state));
  }

  @override
  late int state = $value.state;

  @override
  String get name => $value.name;
}

/// dart_eval bimodal wrapper for [GroupFilter]
class $GroupFilter<V> implements GroupFilter<V>, $Instance {
  /// Configure the [$GroupFilter] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'GroupFilter.', __$GroupFilter$new.call);
  }

  late final $Instance _superclass = $Filter.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.groupFilter);

  static const $declaration = BridgeClassDef(
    BridgeClassType($type,
        $extends: BridgeTypeRef(ExtensionLibTypes.filter, [
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeRef.ref('V', []),
          ]),
        ]),
        $implements: [],
        isAbstract: false,
        generics: {
          'V': BridgeGenericParam(),
        }),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'state',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef.ref('V', []),
                    ]),
                    nullable: false),
                false)
          ],
          generics: {
            'V': BridgeGenericParam(),
          },
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [GroupFilter] in an [$GroupFilter]
  $GroupFilter.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'state':
        return $List.wrap($value.state);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  GroupFilter<V> get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final GroupFilter<V> $value;

  static const __$GroupFilter$new = $Function(_$GroupFilter$new);
  static $Value? _$GroupFilter$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final state = args[1]?.$value as List;
    return $GroupFilter.wrap(GroupFilter(name, state));
  }

  @override
  late List<V> state = $value.state;

  @override
  String get name => $value.name;
}

/// dart_eval bimodal wrapper for [SortFilter]
class $SortFilter implements SortFilter, $Instance {
  /// Configure the [$SortFilter] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'SortFilter.', __$SortFilter$new.call);
  }

  late final $Instance _superclass = $Filter.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.sortFilter);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.filter, [
        BridgeTypeRef(ExtensionLibTypes.selection, []),
      ]),
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'values',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: false),
                false),
            BridgeParameter(
                'state',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.selection, []),
                    nullable: true),
                true)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'values': BridgeFieldDef(
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

  /// Wrap an [SortFilter] in an [$SortFilter]
  $SortFilter.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'state':
        return $value.state == null
            ? const $null()
            : $Selection.wrap($value.state!);
      case 'values':
        return $List.wrap(List.generate($value.values.length, (index) {
          return $String($value.values[index]);
        }));
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  SortFilter get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final SortFilter $value;

  @override
  List<String> get values => $value.values;

  static const __$SortFilter$new = $Function(_$SortFilter$new);
  static $Value? _$SortFilter$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final values = (args[1]?.$reified as List).cast<String>();
    final state = args[2]?.$value as Selection;
    return $SortFilter.wrap(SortFilter(name, values, state));
  }

  @override
  late Selection? state = $value.state;

  @override
  String get name => $value.name;
}

/// dart_eval bimodal wrapper for [Selection]
class $Selection implements Selection, $Instance {
  /// Configure the [$Selection] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Selection.', __$Selection$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.selection);

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
          params: [
            BridgeParameter(
                'index',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: false),
                false),
            BridgeParameter(
                'ascending',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'index': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'ascending': BridgeFieldDef(
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

  /// Wrap an [Selection] in an [$Selection]
  $Selection.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'index':
        return $int($value.index);
      case 'ascending':
        return $bool($value.ascending);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Selection get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Selection $value;

  @override
  int get index => $value.index;
  @override
  bool get ascending => $value.ascending;

  static const __$Selection$new = $Function(_$Selection$new);
  static $Value? _$Selection$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final index = args[0]?.$value as int;
    final ascending = args[1]?.$value as bool;
    return $Selection.wrap(Selection(index, ascending));
  }
}
