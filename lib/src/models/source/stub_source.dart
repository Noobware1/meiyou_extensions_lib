import 'package:meiyou_extensions_lib/src/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/info_page.dart';
import 'package:meiyou_extensions_lib/src/models/source/source.dart';

class StubSource extends Source {
  @override
  final int id;

  @override
  // ignore: overridden_fields
  final String lang;

  @override
  final String name;

  StubSource({
    required this.id,
    required this.lang,
    required this.name,
  });

  StubSource.fromSource(Source source)
      : id = source.id,
        lang = source.lang,
        name = source.name;

  @override
  String toString() {
    return '$name (${lang.toUpperCase()})';
  }

  @override
  Future<ContentData?> getContentData(ContentDataLink link) {
    throw UnimplementedError();
  }

  @override
  Future<List<ContentDataLink>> getContentDataLinks(String url) {
    throw UnimplementedError();
  }

  @override
  Future<InfoPage> getInfoPage(ContentItem contentItem) {
    throw UnimplementedError();
  }

  @override
  List<HomePageRequest> homePageRequests() {
    throw UnimplementedError();
  }
  
  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    throw UnimplementedError();
  }
}

class SourceNotInstalledException implements Exception {
  @override
  String toString() {
    return 'Source not installed';
  }
}
