import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/network/network_preferences.dart';
import 'package:meiyou_extensions_lib/src/preference/preference.dart';
import 'package:meiyou_extensions_lib/src/preference/preference_store.dart';

/// dart_eval bimodal wrapper for [NetworkPreferences]
class $NetworkPreferences implements NetworkPreferences, $Instance {
  /// Configure the [$NetworkPreferences] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'NetworkPreferences.',
        __$NetworkPreferences$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.networkPreferences);

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
                'preferences',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.sharedPreferences, []),
                    nullable: false),
                false),
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {
      'verboseLogging': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.preference,
                    [BridgeTypeRef(CoreTypes.bool)]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'dohProvider': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.preference,
                    [BridgeTypeRef(CoreTypes.int)]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'defaultUserAgent': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.preference,
                    [BridgeTypeRef(CoreTypes.string)]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [NetworkPreferences] in an [$NetworkPreferences]
  $NetworkPreferences.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'verboseLogging':
        return __$verboseLogging;
      case 'dohProvider':
        return __$dohProvider;
      case 'defaultUserAgent':
        return __$defaultUserAgent;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  NetworkPreferences get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final NetworkPreferences $value;

  @override
  Preference<bool> verboseLogging() => $value.verboseLogging();
  static const __$verboseLogging = $Function(_$verboseLogging);
  static $Value? _$verboseLogging(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as NetworkPreferences;
    final $result = obj.verboseLogging();
    return $Preference.wrap($result, (val) => $bool(val));
  }

  @override
  Preference<int> dohProvider() => $value.dohProvider();
  static const __$dohProvider = $Function(_$dohProvider);
  static $Value? _$dohProvider(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as NetworkPreferences;
    final $result = obj.dohProvider();
    return $Preference.wrap($result, (val) => $int(val));
  }

  @override
  Preference<String> defaultUserAgent() => $value.defaultUserAgent();
  static const __$defaultUserAgent = $Function(_$defaultUserAgent);
  static $Value? _$defaultUserAgent(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as NetworkPreferences;
    final $result = obj.defaultUserAgent();
    return $Preference.wrap($result, (val) => $String(val));
  }

  static const __$NetworkPreferences$new = $Function(_$NetworkPreferences$new);
  static $Value? _$NetworkPreferences$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final preferenceStore = args[0]?.$value as PreferenceStore;
    final verboseLogging = args[1]?.$value as bool;
    return $NetworkPreferences
        .wrap(NetworkPreferences(preferenceStore, verboseLogging));
  }
}
