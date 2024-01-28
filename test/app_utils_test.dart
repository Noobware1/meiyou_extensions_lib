import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/extensions_lib.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:test/test.dart';

void main() {
  group('CryptoDart', () {
    late Compiler compiler;
    setUp(() {
      compiler = Compiler()..addPlugin(HTMLPlugin());
    });

    test('Document.html', () {
      final compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:html/dom.dart';

String main() {
  return Document.html('<div>hello world</div>').outerHtml;
}
          '''
        }
      });
      final runtime = Runtime.ofProgram(compiled)..addPlugin(HTMLPlugin());
      final value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, '<div>hello world</div>');
    });
  });
}
