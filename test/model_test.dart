import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/extensions_lib.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:test/test.dart';

void main() {
  group('Builders', () {
    late Compiler compiler;
    setUp(() {
      compiler = ExtensionComplier();
    });
    test('buildString', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''

import 'package:meiyou_extensions_lib/models.dart';

SearchResponse main() {
  final search =
      SearchResponse(title: '', url: '', poster: '', type: ShowType.Anime);

  return search;
}
          ''',
        },
      });

      var runtime = ExtensionLoader.ofProgram(compiled);
      var value = runtime.executeLib('package:example/main.dart', 'main');
      expect(
          (value as $Value).$value,
          ContentItem(
              title: '', url: '', poster: '', category: ContentCategory.Anime));
    });
  });
}
