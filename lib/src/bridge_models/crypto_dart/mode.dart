import 'package:crypto_dart/crypto_dart.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';

class $Mode implements $Instance {
  $Mode.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        CryptoDartTypes.mode.library, 'Mode', $Mode.$values);
  }

  static const $type = BridgeTypeRef(CryptoDartTypes.mode);

  static const $declaration = BridgeEnumDef(
    $type,
    values: ['CBC', 'ECB'],
    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final $values = {
    'CBC': $Mode.wrap(Mode.CBC),
    'ECB': $Mode.wrap(Mode.ECB),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final Mode $value;

  @override
  String toString() {
    return $value.toString();
  }
}
