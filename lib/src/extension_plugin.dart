import 'package:dart_eval/src/eval/runtime/runtime.dart';
import 'package:dart_eval/dart_eval_bridge.dart';

class MeiyouExtensionsPlugin extends EvalPlugin {
  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    // TODO: implement configureForCompile
  }

  @override
  void configureForRuntime(Runtime runtime) {
    // TODO: implement configureForRuntime
  }

  @override
  String get identifier => 'package:meiyou_extensions_lib';
}
