import 'package:nice_dart/nice_dart.dart';
import 'dart:convert' as convert;
import 'package:meiyou_extensions_lib/models.dart';

abstract class Source {
  Source();

  /// ID for the source. Must be unique.
  abstract final int id;

  /// Name of the source.
  abstract final String name;

  /// Whether this source supports homepage or not
  final bool supportsHomePage = true;

  /// Language of the source.
  final String lang = "";

  /// An iterable of `HomePageData` objects representing the home page data.
  Iterable<HomePageData> get homePageList;

  /// This function will be called by iterating over homePage to load the `HomePage` for the app.
  ///
  /// [page] is the page number to load.
  /// [request] is the `HomePageRequest` object containing the request details.
  Future<HomePage> getHomePage(int page, HomePageRequest request);

  /// Gets the details of a specific media.
  ///
  /// [searchResponse] is the `SearchResponse` object containing the search response details.
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse);

  /// Gets the links for a specific URL.
  ///
  /// [url] is the URL to get the links from.
  Future<List<ExtractorLink>> getLinks(String url);

  /// Gets a specific media from [link].
  ///
  /// [link] is the `ExtractorLink` object containing the link details.
  Future<Media?> getMedia(ExtractorLink link);

  static Map<String, dynamic> toJson(Source source) {
    return buildMap((it) {
      it['id'] = source.id;
      it['name'] = source.name;
      it['lang'] = source.lang;
      it['supportsHomePage'] = source.supportsHomePage;
    });
  }

  static String jsonEncode(Source source) => toJson(source).toJson();

  factory Source.fromJson(Map<String, dynamic> json) {
    return _EncodableSource(
      id: json['id'] as int,
      name: json['name'] as String,
      lang: json['lang'] as String,
      supportsHomePage: json['supportsHomePage'] as bool,
    );
  }

  static Source jsonDecode(String json) =>
      Source.fromJson(convert.jsonDecode(json));
}

class _EncodableSource implements Source {
  _EncodableSource({
    required this.name,
    required this.id,
    this.lang = "",
    required this.supportsHomePage,
  });

  @override
  final int id;

  @override
  final String name;

  @override
  final String lang;

  @override
  final bool supportsHomePage;

  @override
  Future<List<ExtractorLink>> getLinks(String url) {
    // TODO: implement getLinks
    throw UnimplementedError();
  }

  @override
  Future<Media?> getMedia(ExtractorLink link) {
    // TODO: implement getMedia
    throw UnimplementedError();
  }

  @override
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse) {
    // TODO: implement getMediaDetails
    throw UnimplementedError();
  }

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    // TODO: implement getHomePage
    throw UnimplementedError();
  }

  @override
  // TODO: implement homePageList
  Iterable<HomePageData> get homePageList => throw UnimplementedError();
}
