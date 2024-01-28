import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/okhttp_client.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/network/network_helper.dart';

import 'package:meiyou_extensions_lib/src/network/network_preferences.dart';
import 'package:okhttp/okhttp.dart';

/// dart_eval bimodal wrapper for [NetworkHelper]
class $NetworkHelper implements NetworkHelper, $Instance {
  /// Configure the [$NetworkHelper] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'NetworkHelper.', __$NetworkHelper$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.networkHelper);

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
                    BridgeTypeRef(ExtensionLibTypes.networkPreferences, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'client': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.okHttpClient, []),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {
      'defaultUserAgentProvider': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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

  /// Wrap an [NetworkHelper] in an [$NetworkHelper]
  $NetworkHelper.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'client':
        return $OkHttpClient.wrap($value.client);
      case 'defaultUserAgentProvider':
        return $String($value.defaultUserAgentProvider);

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  NetworkHelper get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final NetworkHelper $value;

  @override
  OkHttpClient get client => $value.client;

  @override
  String get defaultUserAgentProvider => $value.defaultUserAgentProvider;

  static const __$NetworkHelper$new = $Function(_$NetworkHelper$new);
  static $Value? _$NetworkHelper$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final preferences = args[0]?.$value as NetworkPreferences;
    return $NetworkHelper.wrap(NetworkHelper(preferences));
  }
}
