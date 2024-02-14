import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/source.dart';
import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';

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
  Iterable<HomePageData> get homePageList =>
      throw SourceNotInstalledException();

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) =>
      throw SourceNotInstalledException();

  @override
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse) =>
      throw SourceNotInstalledException();

  @override
  Future<List<ExtractorLink>> getLinks(String url) =>
      throw SourceNotInstalledException();

  @override
  Future<Media?> getMedia(ExtractorLink link) =>
      throw SourceNotInstalledException();

  @override
  String toString() {
    return '$name (${lang.toUpperCase()})';
  }
}

class SourceNotInstalledException implements Exception {
  @override
  String toString() {
    return 'Source not installed';
  }
}
