// import 'package:dart_eval/dart_eval.dart';
// import 'package:dart_eval/dart_eval_bridge.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/dartx/plugin.dart';
// import 'package:test/test.dart';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/extensions_lib.dart';

import 'package:test/test.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/plugin.dart';

void main() {
  group('Filters Test', () {
    late Compiler compiler;
    setUp(() {
      compiler = ExtensionComplier();
    });
    test('FiterList', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:meiyou_extensions_lib/models.dart';

main() {
  final filters = [CheckBoxFilter('idk')];
  final list = FilterList(filters).map((element) {
    return element.name;
  });

  return list;
}
          ''',
        },
      });

      var runtime = ExtensionLoader.fromProgram(compiled).runtime;
      var value = runtime.executeLib('package:example/main.dart', 'main');
      expect(((value as $Value).$reified as Iterable).toList(), ['idk']);
    });
  });
}
