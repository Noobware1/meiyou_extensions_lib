import 'dart:math';

import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/extensions_lib.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/source.dart';
import 'package:test/test.dart';

void main() {
  group('\$Source Test', () {
    late Compiler compiler;
    setUp(() {
      compiler = ExtensionComplier();
    });
    test('MockSource', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:meiyou_extensions_lib/models.dart';


class MockSource extends Source {
  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) async {
    return HomePage(data: HomePageList(name: '', data: []), page: page);
  }

  @override
  Future<List<ExtractorLink>> getLinks(String url) async {
    return [];
  }

  @override
  Future<Media?> getMedia(ExtractorLink link) async {
    return null;
  }

  @override
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse) async {
    return MediaDetails();
  }

  @override
  Iterable<HomePageData> get homePageList => HomePageData.fromMap({
        'idk': '__idk__',
      });

  @override
  final int id = 1;

  @override
  final String name = 'MockSource';

  
}

Source main() {
 return MockSource();
}
          ''',
        },
      });

      var runtime = ExtensionLoader.fromProgram(compiled).runtime;
      var value =
          runtime.executeLib('package:example/main.dart', 'main') as Source;
      expect(value, isA<$Source>());
      expect(value.homePageList.first.name, 'idk');
      expect(value.id, 1);
      expect(value.name, 'MockSource');
      expect(value.supportsHomePage, true);
    });
  });
}
