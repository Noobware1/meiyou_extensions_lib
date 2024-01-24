import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:test/test.dart';

void main() {
  group('GET', () {
    late Compiler compiler;

    setUp(() {
      compiler = Compiler()..addPlugin(OkHttpPlugin());
    });

    test('idk', () {
      final program = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:okhttp/interceptor.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';


Future<void> main() {
  final body =
      JsonBody.Builder().add('title', 'foo').add('body', 'bar').build();

  final request = Request.Builder()
      .url('https://jsonplaceholder.typicode.com/posts')
      .post(body)
      .build();

  final client = OkHttpClient.Builder()
      .addInterceptor(LoggingInterceptor(
          level: LogLevel.HEADERS, logger: Logger(color: Color.red)))
      .build();

  return client.newCall(request).execute().then((response) {
    client.destroy();
    print(response.statusCode);
  });
}

          '''
        }
      });

      final runtime = Runtime.ofProgram(program);
      runtime.addPlugin(OkHttpPlugin());
      final value = runtime.executeLib('package:example/main.dart', 'main');
      expectAsync0(() {
        expect(value, prints(200));
      });
    });
  });
}
