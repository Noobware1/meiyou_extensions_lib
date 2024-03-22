import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/extensions_lib.dart';

import 'package:test/test.dart';

void main() {
  group('Results', () {
    late Compiler compiler;
    setUp(() {
      compiler = ExtensionComplier();
    });
    test('basic runCatching', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:meiyou_extensions_lib/utils.dart';

int main() {
  final a = 'not a number';

  return runCatching(() => int.parse(a))
      .mapCatching((value) => value * 2)
      .getOrDefault(0);
}
          ''',
        },
      });

      var runtime = ExtensionLoader.ofProgram(compiled);
      var value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, 0);
    });
  });
}
