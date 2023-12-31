import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:crypto_dart/encoders.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/types.dart';

class $Encoder implements $Instance {
  $Encoder.wrap(this.$value);

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(CryptoDartTypes.encoder);

  static const $declaration = BridgeClassDef(
      BridgeClassType($type, isAbstract: true),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
          ),
        ),
      },
      methods: {
        'stringify': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
            params: [
              BridgeParameter(
                'data',
                BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List)),
                false,
              ),
            ],
          ),
          isStatic: false,
        ),
        'parse': BridgeMethodDef(
          BridgeFunctionDef(
            returns:
                BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List)),
            params: [
              BridgeParameter(
                'data',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                false,
              ),
            ],
          ),
          isStatic: false,
        ),
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'stringify':
        return const $Function($stringify);
      case 'parse':
        return const $Function($parse);
      default:
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) =>
      runtime.lookupType(CryptoDartTypes.encoder);

  @override
  Encoder get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }

  static $Value? $stringify(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String((target!.$value as Encoder).stringify(args[0]!.$value));
  }

  static $Value? $parse(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Uint8List.wrap((target!.$value as Encoder).parse(args[0]!.$value));
  }

  @override
  final Encoder $value;
}
