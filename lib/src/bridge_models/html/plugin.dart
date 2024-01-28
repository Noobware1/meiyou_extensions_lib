import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/document.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/element.dart';

class HTMLPlugin extends EvalPlugin {
  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    $Document.configureForCompile(registry);
    $Element.configureForCompile(registry);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $Document.configureForRuntime(runtime);
    $Element.configureForRuntime(runtime);
  }

  @override
  String get identifier => htmlLib;
}

const htmlLib = 'package:html/dom.dart';

class HTMLTypes {
  /// Bridge type spec for [$Document]
  static const document = BridgeTypeSpec(htmlLib, 'Document');

  /// Bridge type spec for [$Element]
  static const element = BridgeTypeSpec(htmlLib, 'Element');
}
