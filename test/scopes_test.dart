// import 'package:dart_eval/dart_eval.dart';
// import 'package:dart_eval/dart_eval_bridge.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/nice_dart/plugin.dart';
// import 'package:test/test.dart';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/nice_dart/plugin.dart';
import 'package:test/test.dart';

void main() {
  group('\$Scopes', () {
    late Compiler compiler;
    setUp(() {
      compiler = Compiler()..addPlugin(NiceDartPlugin());
    });

    test('apply', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
             import 'package:meiyou_extensions_lib/utils.dart';
            
            int? main() {
              final test = Test();
              return Scopes.apply<Test>(test, (it) {
               it?.one = 1;
              })?.one;
            }

            class Test {
              Test();

               int one = 0;
            
            }
            
          ''',
        },
      });

      var runtime = Runtime.ofProgram(compiled)..addPlugin(NiceDartPlugin());

      var value = runtime.executeLib('package:example/main.dart', 'main');

      expect((value as $Value).$value, 1);
    });

    test('also', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
             import 'package:meiyou_extensions_lib/utils.dart';
            
            int? main() {
              final test = Test();
              return Scopes.also<Test>(test, (it) {
               it?.one = 1;
              })?.one;
            }

            class Test {
              Test();
               int one = 0;
            }
          ''',
        },
      });

      var runtime = Runtime.ofProgram(compiled)..addPlugin(NiceDartPlugin());

      var value = runtime.executeLib('package:example/main.dart', 'main');

      expect((value as $Value).$value, 1);
    });

    test('let', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
             import 'package:meiyou_extensions_lib/utils.dart';
            
            int? main() {
              final test = Test();
              return Scopes.let<Test>(test, (it) {
               it?.one = 1;
               return it?.one;
              });
            }

            class Test {
              Test();
               int one = 0;
            }
          ''',
        },
      });

      var runtime = Runtime.ofProgram(compiled)..addPlugin(NiceDartPlugin());

      var value = runtime.executeLib('package:example/main.dart', 'main');

      expect((value as $Value).$value, 1);
    });

    test('takeIf', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
             import 'package:meiyou_extensions_lib/utils.dart';
            
            int? main() {
              final test = Test();
              return Scopes.takeIf<Test>(test, (it) {
               it?.one = 1;
               final bool val = it?.one == 1;
               return val;
              })?.one;
            }

            class Test {
              Test();
               int one = 0;
            }
          ''',
        },
      });

      var runtime = Runtime.ofProgram(compiled)..addPlugin(NiceDartPlugin());

      var value = runtime.executeLib('package:example/main.dart', 'main');

      expect((value as $Value).$value, 1);
    });

    test('takeUnless', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
             import 'package:meiyou_extensions_lib/utils.dart';
            
            int? main() {
              final test = Test();
              return Scopes.takeUnless<Test>(test, (it) {
               it?.one = 1;
               final bool val = it?.one == 1;
               return val;
              })?.one;
            }

            class Test {
              Test();
               int one = 0;
            }
          ''',
        },
      });

      var runtime = Runtime.ofProgram(compiled)..addPlugin(NiceDartPlugin());

      var value = runtime.executeLib('package:example/main.dart', 'main');

      expect((value as $Value).$value, null);
    });
  });
}
