// import 'package:dart_eval/dart_eval.dart';
// import 'package:dart_eval/dart_eval_bridge.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/nice_dart/plugin.dart';
// import 'package:test/test.dart';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/extensions_lib.dart';
import 'package:meiyou_extensions_lib/network.dart';

import 'package:test/test.dart';

void main() {
  group('Requests', () {
    late Compiler compiler;
    setUp(() {
      compiler = ExtensionComplier();
    });
    test('GET', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''

import 'package:okhttp/request.dart';
import 'package:meiyou_extensions_lib/network.dart';

Request main() {
  final req = GET('https://www.baidu.com');

  return req;
}
          ''',
        },
      });

      var runtime = ExtensionLoader.fromProgram(compiled).runtime;
      var value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value.toString(),
          GET('https://www.baidu.com').toString());
    });
  });
}
