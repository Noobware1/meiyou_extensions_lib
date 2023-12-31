import 'package:crypto_dart/padding.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/types.dart';

class $Padding implements $Instance {
  $Padding.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        $type.spec!.library, 'Padding', $Padding.$values);
  }

  static const $type = BridgeTypeRef(CryptoDartTypes.padding);

  static const $declaration = BridgeEnumDef($type,
      values: ['PKCS5', 'PKCS7', 'ZEROPADDING'],
      methods: {},
      getters: {},
      setters: {},
      fields: {});

  static final $values = {
    'PKCS5': $Padding.wrap(Padding.PKCS5),
    'PKCS7': $Padding.wrap(Padding.PKCS7),
    'ZEROPADDING': $Padding.wrap(Padding.ZEROPADDING),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}

  @override
  final Padding $value;

  @override
  String toString() {
    return $value.toString();
  }
}
