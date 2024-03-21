import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/document.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/element.dart';

class HTMLPlugin extends EvalPlugin {
  void addAllExports(StringBuffer buffer) {
    buffer.writeln('import \'package:html/dom.dart\';');
  }

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    $Document.configureForCompile(registry);
    $Element.configureForCompile(registry);
    registry.addSource(_domSource);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $Document.configureForRuntime(runtime);
    $Element.configureForRuntime(runtime);
  }

  @override
  String get identifier => 'package:html';
}

final _domSource = DartSource('package:html/dom.dart', '''
export 'src/dom.dart';
''');

class HTMLTypes {
  /// Bridge type spec for [$Document]
  static const document =
      BridgeTypeSpec('package:html/src/dom.dart', 'Document');

  /// Bridge type spec for [$Element]
  static const element = BridgeTypeSpec('package:html/src/dom.dart', 'Element');
}
