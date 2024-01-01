import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/eval_plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/plugin.dart';
import 'package:test/test.dart';

void main() {
  group('CryptoDart', () {
    late Compiler compiler;
    setUp(() {
      compiler = ExtensionComplier('');
    });

    test('CryptoDart', () async {
      final compiled = compiler.compile({
        'example': {
          'main.dart': '''  
           import 'package:meiyou_extensions_lib/packages/crypto_dart/encoders/encoders.dart';
           import 'lol.dart';

          String main() {
            return lol();
          }
          ''',
          'lol.dart': '''
           import 'package:meiyou_extensions_lib/packages/crypto_dart/encoders/encoders.dart';

          String lol() {
            final a = Encoders().BASE64.parse('aGVsbG8gd29ybGQ=');
            final b = Encoders().UTF8.stringify(a);
            return b;
          }

''',
        },
      }).write();
      final runtime = Runtime(compiled.buffer.asByteData())
        ..addPlugin(ExtensionLibPlugin());
      final value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, 'hello world');
    });
  });
}
