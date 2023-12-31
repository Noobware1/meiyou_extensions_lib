import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';
import 'package:test/test.dart';

void main() {
  group('List Utils', () {
    late ExtenstionComplier compiler;

    setUp(() {
      compiler = ExtenstionComplier();
    });

    test('trySync', () {
      final value = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          int? main() {
            return AppUtils.trySync<int>(() => StringUtils.toInt('this is not a number'));
          }
          '''
        }
      }).executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, null);
    });
  });
}
