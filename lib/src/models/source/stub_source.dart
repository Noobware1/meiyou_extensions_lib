import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_link.dart';
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
  List<HomePageRequest> homePageRequests() {
    throw UnimplementedError();
  }

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    throw UnimplementedError();
  }

  @override
  Future<Media?> getMedia(MediaLink link) {
    // TODO: implement getMedia
    throw UnimplementedError();
  }

  @override
  Future<MediaDetails> getMediaDetails(String url) {
    // TODO: implement getMediaDetails
    throw UnimplementedError();
  }

  @override
  Future<List<MediaLink>> getMediaLinks(String url) {
    // TODO: implement getMediaLinks
    throw UnimplementedError();
  }
}

class SourceNotInstalledException implements Exception {
  @override
  String toString() {
    return 'Source not installed';
  }
}
