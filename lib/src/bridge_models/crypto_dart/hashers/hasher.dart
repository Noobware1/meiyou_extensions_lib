import 'package:crypto_dart/hashers.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';

class $Hasher implements $Instance {
  $Hasher.wrap(this.$value);

  late final _superclass = $Object($value);

  static const $dataParam = BridgeParameter(
      'data', BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)), false);

  static const $declaration = BridgeClassDef(
    BridgeClassType(BridgeTypeRef(CryptoDartTypes.hasher), isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CryptoDartTypes.hasher)),
          params: [
            $dataParam,
          ],
        ),
      ),
    },
    methods: {
      'init': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          params: [
            $dataParam,
          ])),
    },
    wrap: true,
  );

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'init':
        return const $Function($init);
      case 'toString':
        return const $Function($toString);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) =>
      runtime.lookupType(CryptoDartTypes.hasher);

  static $Value? $init(Runtime runtime, $Value? target, List<$Value?> args) {
    (target!.$value as Hasher).init(args[1]?.$reified);
    return null;
  }

  static $Value? $toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String((target?.$value as Hasher).toString());
  }

  @override
  Hasher get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) =>
      _superclass.$setProperty(runtime, identifier, value);

  @override
  final Hasher $value;
}
