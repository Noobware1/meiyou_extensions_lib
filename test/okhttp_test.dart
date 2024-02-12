import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/extensions_lib.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/okhttp_client.dart';
import 'package:test/test.dart';
import 'package:okhttp/okhttp.dart';

void main() {
  group('POST', () {
    late Compiler compiler;

    setUp(() {
      compiler = ExtensionComplier();
    });
    test('InterceptorImpl', () async {
      final program = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:okhttp/interceptor.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:html/dom.dart';
import 'package:okhttp/response.dart';
import 'package:meiyou_extensions_lib/network.dart';


class AccessTokenInterceptor extends InterceptorImpl {
  @override
  Future<Response> intercept(Chain chain) {
    // TODO: implement intercept
    throw UnimplementedError();
  }
}

OkHttpClient main() {
  final OkHttpClient a =
      OkHttpClient.Builder().addInterceptor(AccessTokenInterceptor()).build();
  return a;
}

          '''
        }
      });

      final runtime = ExtensionLoader.fromProgram(program).runtime;
      final value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, isA<OkHttpClient>());
      expect((value as $OkHttpClient).$value.interceptors, isNotEmpty);
    });

    test('idk', () async {
      final program = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:okhttp/interceptor.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';
import 'package:html/dom.dart';
import 'package:okhttp/response.dart';
import 'package:meiyou_extensions_lib/okhttp_extensions.dart';
import 'package:meiyou_extensions_lib/requests.dart';


Future<Document> main() async {
  final body = JsonBody.Builder().add('title', 'foo').add('body', 'bar').build();

  final request = POST('https://jsonplaceholder.typicode.com/posts', Headers.Builder().build(), body);

  final client = OkHttpClient.Builder()
      .addInterceptor(LoggingInterceptor(
          level: LogLevel.HEADERS, logger: Logger(color: Color.red)))
      .build();

  final Response response = await client.newCall(request).execute();
  client.destroy();
  return response.body.document;
  
}

          '''
        }
      });

      final runtime = ExtensionLoader.fromProgram(program).runtime;
      final value = await (runtime.executeLib(
          'package:example/main.dart', 'main') as Future);
      expect((value as $Value).$value.runtimeType, Document().runtimeType);
    });
  });
}
