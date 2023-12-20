
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';
import 'package:test/test.dart';

void main() {
  group('Crypto Utils', () {
    late ExtenstionComplier compiler;

    setUp(() {
      compiler = ExtenstionComplier();
    });

    test('EncStringify', () {
      final runtime = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          String main() {
            return CryptoUtils.EncStringify('base64', [104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100]);
          }
          '''
        }
      });
      expect(
          (runtime.executeLib('package:example/main.dart', 'main') as $String)
              .$value,
          'aGVsbG8gd29ybGQ=');
    });

    test('EncParse', () {
      final runtime = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          String main() {
            final decoded = CryptoUtils.EncParse('base64', "aGVsbG8gd29ybGQ=");
            return CryptoUtils.EncStringify('utf8', decoded);
          }
          '''
        }
      });
      expect(
          (runtime.executeLib('package:example/main.dart', 'main') as $String)
              .$value,
          'hello world');
    });
  });
}
