import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/plugin.dart';
import 'package:test/test.dart';

void main() {
  group('CryptoDart', () {
    late Compiler compiler;
    setUp(() {
      compiler = Compiler()..addPlugin(CryptoDartPlugin());
    });

    test('Encoders', () async {
      final compiled = compiler.compile({
        'example': {
          'main.dart': '''  
import 'package:crypto_dart/encoders.dart';

String main() {
  final a = Encoders().BASE64.parse('aGVsbG8gd29ybGQ=');
  final b = Encoders().UTF8.stringify(a);
  return b;
}
        
          '''
        }
      });
      final runtime = Runtime.ofProgram(compiled)
        ..addPlugin(CryptoDartPlugin());
      final value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, 'hello world');
    });

    test('AES', () async {
      final compiled = compiler.compile({
        'example': {
          'main.dart': '''  
import 'package:crypto_dart/aes.dart';
import 'package:crypto_dart/encoders.dart';

String main() {
  final key = 'password';
  final a = AES().encrypt('hello world', key);
  final b = AES().decrypt(a.toString(), key);
  return Utf8().stringify(b);
}        
          '''
        }
      });
      final runtime = Runtime.ofProgram(compiled)
        ..addPlugin(CryptoDartPlugin());
      final value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, 'hello world');
    });

    test('CryptoDart', () async {
      final compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:crypto_dart/crypto_dart.dart';

String main() {
  final key = 'password';
  final a = CryptoDart.AES.encrypt('hello world', key);
  final b = CryptoDart.AES.decrypt(a.toString(), key);
  return CryptoDart.enc.UTF8.stringify(b);
}
          '''
        }
      });
      final runtime = Runtime.ofProgram(compiled)
        ..addPlugin(CryptoDartPlugin());
      final value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, 'hello world');
    });
  });
}
