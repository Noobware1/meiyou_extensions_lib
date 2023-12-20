import 'package:meiyou_extensions_lib/dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';
import 'package:meiyou_extensions_lib/src/utils/unwrap.dart';
import 'package:test/test.dart';

void main() {
  group('List Utils', () {
    late ExtenstionComplier compiler;

    setUp(() {
      compiler = ExtenstionComplier();
    });

    test('map', () {
      final runtime = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          List<String> main() {
            final List<int> list = [1, 2, 3];
            return ListUtils.map<int>(list, (item) => (item as int).toString());
          }
          '''
        }
      });
      expect(
          unwrapList<String>(
              runtime.executeLib('package:example/main.dart', 'main') as List),
          ['1', '2', '3']);
    });

    test('mapIndexed', () {
      final runtime = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          List<String> main() {
            return ListUtils.mapIndexed<int, String>([1, 2, 3], (index, item) => '\$index: \$item');
          }
          '''
        }
      });

      expect(
          unwrapList<String>(
              runtime.executeLib('package:example/main.dart', 'main') as List),
          ['0: 1', '1: 2', '2: 3']);
    });

    test('mapNotNull', () {
      final runtime = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          List<int> main() {
            return ListUtils.mapNotNull<int, int>([1, null, 3], (item) => item * 2);
          }
          '''
        }
      });
      expect(
          unwrapList<int>(
              runtime.executeLib('package:example/main.dart', 'main') as List),
          [2, 6]);
    });

    test('mapNullable', () {
      final result = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          List<int>? main() {
            return ListUtils.mapNullable<int, int>(null, (item) => item * 2);
          }
          '''
        }
      }).executeLib('package:example/main.dart', 'main') as $Value?;

      expect(result?.$value, null);
    });

    test('mapWhen', () {
      final runtime = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          List<int> main() {
            return ListUtils.mapWhen<int, int>([1, 2, 3], (item) => item * 2, (item) => isNotTwo(item));
          }

          bool isNotTwo(int item) {
           return item != 2;
          }
          '''
        }
      });
      expect(
          unwrapList<int>(
              runtime.executeLib('package:example/main.dart', 'main') as List),
          [2, 6]);
    });

    test('whereNotNull', () {
      final runtime = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          List<int> main() {
            return ListUtils.whereNotNull<int, int>([1, null, 3]);
          }
          '''
        }
      });
      expect(
          unwrapList<int>(
              runtime.executeLib('package:example/main.dart', 'main') as List),
          [1, 3]);
    });

    test('firstWhereOrNull', () {
      final list = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          List<int> main() {
            return [
              ListUtils.firstWhereOrNull([1, 2, 3], (item) => item > 2),
              ListUtils.firstWhereOrNull([1, 2, 3], (item) => item > 3, orElse: () => 0),
              ];
          }
          '''
        }
      }).executeLib('package:example/main.dart', 'main') as List;

      expect(unwrapList<int>(list), [3, 0]);
    });

    test('faltten', () {
      final list = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          List<int> main() {
            return ListUtils.faltten([[1, 2], [3, 4]]);
          }
          '''
        }
      }).executeLib('package:example/main.dart', 'main') as List;

      expect(unwrapList<int>(list), [1, 2, 3, 4]);
    });

    test('addIfNotNull', () {
      final list = compiler.compileWriteAndLoad({
        'example': {
          'main.dart': '''
          import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

          List<int> main() {
            final List<int> list = [1, 2, 3];
            ListUtils.addIfNotNull<int>(list, 4);
            // ListUtils.addIfNotNull<int>(list, null);
            return list;
          }
          '''
        }
      }).executeLib('package:example/main.dart', 'main') as List;

      expect(unwrapList<int>(list), [1, 2, 3, 4]);
    });
  });
}
