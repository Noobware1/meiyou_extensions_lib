import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';
void main() {
  late Compiler compiler;
  compiler = ExtensionComplier('');

  final compiled = compiler.compile({
    'example': {
      'main.dart': '''  
          import 'package:meiyou_extensions_lib/packages/ok_http/client.dart';

          final client = OkHttpClient();

           main() {
            return client.get('https://github.com/ethanblake4/flutter_eval/blob/master/lib/src/material.dart');
          }

          '''
    },
  });
  final runtime = Runtime.ofProgram(compiled);
  ExtensionLoader.getRuntime(compiled.write());
  final value = runtime.executeLib('package:example/main.dart', 'main');
  print(value);
  // expect((value as $OkHttpResponse).$value.statusCode, 200);
}

// void main() {
//   group('OkHttp', () {
//     late Compiler compiler;
//     setUp(() {
//       compiler = CustomCompiler()..addPlugin(OkHttpPlugin());
//     });

//     test('get', () async {
//       final compiled = compiler.compile({
//         'example': {
//           'main.dart': '''  
//           import 'package:meiyou_extensions_lib/packages/ok_http/client.dart';

//           final client = OkHttpClient();

//            main() {
//             return client.get('https://github.com/ethanblake4/flutter_eval/blob/master/lib/src/material.dart');
//           }

//           '''
//         }
//       }).write();
//       final runtime = Runtime(compiled.buffer.asByteData());
//       runtime.addPlugin(OkHttpPlugin());
//       final value =
//           await runtime.executeLib('package:example/main.dart', 'main');
//       expect((value as $OkHttpResponse).$value.statusCode, 200);
//     });
//     test('document', () async {
//       final compiled = compiler.compile({
//         'example': {
//           'main.dart': '''  
//           import 'package:meiyou_extensions_lib/packages/ok_http/ok_http.dart';

//           final client = OkHttpClient();

          

//           Future<Iterable<String>> main() async {
//             final a = await client.get('https://github.com/ethanblake4/flutter_eval/blob/master/lib/src/material.dart');
//             return  a.document.select('a').map((e) => (e as Element).attr('href'));
//           }
//           '''
//         }
//       }).write();
//       final runtime = Runtime(compiled.buffer.asByteData());
//       runtime.addPlugin(OkHttpPlugin());
//       final value =
//           await runtime.executeLib('package:example/main.dart', 'main');
//       expect(
//         (value as $Iterable).$reified.toList().first,
//         '#start-of-content',
//       );
//     });
//   });
// }
