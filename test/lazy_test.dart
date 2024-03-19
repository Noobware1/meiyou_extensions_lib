import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/extensions_lib.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:test/test.dart';

void main() {
  group('Movie Tests', () {
    late Compiler compiler;
    setUp(() {
      compiler = ExtensionComplier();
    });
    test('Movie.lazy', () async {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:meiyou_extensions_lib/models.dart';

LazyContent main() {
  return Movie.lazy(() => getMovie());
}

Future<Movie> getMovie() async {
  return Movie(url: 'idk');
}

          ''',
        },
      });

      var runtime = ExtensionLoader.ofProgram(compiled);
      var value = runtime.executeLib('package:example/main.dart', 'main');
      expect(value, isA<LazyContent>());
      final movie = await (value as LazyContent).load();
      expect(movie, isA<Movie>());
    });
  });
}
