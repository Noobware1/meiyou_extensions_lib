import 'dart:typed_data';

import 'package:crypto_dart/evpkdf.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/types.dart';

/// dart_eval bimodal wrapper for [EvpKDFResult]
class $EvpKDFResult implements EvpKDFResult, $Instance {
  /// Configure the [$EvpKDFResult] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'EvpKDFResult.', __$EvpKDFResult$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(CryptoDartTypes.evpKDFResult);

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
                'key',
                BridgeTypeAnnotation(
                    BridgeTypeRef(TypedDataTypes.uint8List, []),
                    nullable: false),
                false),
            BridgeParameter(
                'iv',
                BridgeTypeAnnotation(
                    BridgeTypeRef(TypedDataTypes.uint8List, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'key': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List, []),
              nullable: false),
          isStatic: false),
      'iv': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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

  /// Wrap an [EvpKDFResult] in an [$EvpKDFResult]
  $EvpKDFResult.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'key':
        return $Uint8List.wrap($value.key);
      case 'iv':
        return $Uint8List.wrap($value.iv);

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  EvpKDFResult get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final EvpKDFResult $value;

  @override
  Uint8List get key => $value.key;
  @override
  Uint8List get iv => $value.iv;

  @override
  String toString() => $value.toString();

  static const __$EvpKDFResult$new = $Function(_$EvpKDFResult$new);
  static $Value? _$EvpKDFResult$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final key = args[0]?.$reified as Uint8List;
    final iv = args[1]?.$reified as Uint8List;
    return $EvpKDFResult.wrap(EvpKDFResult(
      key,
      iv,
    ));
  }
}

final evpkdfSource = DartSource('package:crypto_dart/evpkdf.dart', '''
import 'dart:typed_data';
import 'hashers.dart';
import 'package:crypto_dart/crypto_dart.dart';

EvpKDFResult EvpKDF({
  required dynamic password,
  required Uint8List salt,
  int keySize = 4,
  int ivSize = 0,
  int iterations = 1,
  String hasher = 'MD5',
}) {
  return CryptoDart.EvpKDF(
    password: password,
    salt: salt,
    keySize: keySize,
    ivSize: ivSize,
    iterations: iterations,
    hasher: hasher,
  );
}
''');
