import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/dart_eval/dart_eval_bridge.dart';

import 'base64.dart';
import 'encoder.dart';
import 'encoders.dart';
import 'hex.dart';
import 'utf16.dart';
import 'utf8.dart';

class CryptoDartEncodersPlugin implements EvalPlugin {
  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($Encoder.$declaration);
    registry.defineBridgeClass($Base64.$declaration);
    registry.defineBridgeClass($Hex.$declaration);
    registry.defineBridgeClass($Utf8.$declaration);
    registry.defineBridgeClass($Utf16.$declaration);
    registry.defineBridgeClass($Encoders.$declaration);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $Base64.configureForRuntime(runtime);
    $Hex.configureForRuntime(runtime);
    $Utf8.configureForRuntime(runtime);
    $Utf16.configureForRuntime(runtime);
    $Encoders.configureForRuntime(runtime);
  }

  @override
  String get identifier =>
      'package:meiyou_extensions_lib/packages/crypto_dart/encoders';
}
