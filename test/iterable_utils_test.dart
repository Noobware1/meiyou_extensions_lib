// import 'package:dart_eval/dart_eval.dart';
// import 'package:dart_eval/dart_eval_bridge.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/dartx/plugin.dart';
// import 'package:test/test.dart';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/plugin.dart';
import 'package:test/test.dart';
// Assuming the file name is iterable.dart

void main() {
  group('\$Iterableutils', () {
    late Compiler compiler;
    setUp(() {
      compiler = Compiler()..addPlugin(DartxPlugin());
    });
    test('mapNotNull', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
           
import 'package:meiyou_extensions_lib/utils.dart';

Iterable<int> main() {
  final list = ['1', null, '3'];
  return IterableUtils.mapNotNull<String, int>(list, (it) => int.parse(it));
}
          ''',
        },
      });

      var runtime = Runtime.ofProgram(compiled)..addPlugin(DartxPlugin());
      var value = runtime.executeLib('package:example/main.dart', 'main');
      final unwrapped = (value as $Iterable)
          .$value
          .map((e) => e is $Value ? e.$value : e)
          .toList();
      expect(unwrapped, [1, 3]);
    });

    test('orEmpty', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
           import 'package:meiyou_extensions_lib/utils.dart';

          Iterable<int> main() {
            final list = [1, 2, 3];
            return IterableUtils.orEmpty<int>(list);
          }
          ''',
        },
      });

      var runtime = Runtime.ofProgram(compiled)..addPlugin(DartxPlugin());
      var value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$reified, [1, 2, 3]);
      compiled = compiler.compile({
        'example': {
          'main.dart': '''
           import 'package:meiyou_extensions_lib/utils.dart';

          Iterable<int> main() {
            return IterableUtils.orEmpty<int>(null);
          }
          ''',
        },
      });

      runtime = Runtime.ofProgram(compiled)..addPlugin(DartxPlugin());
      value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, []);
    });
  });
}
