import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';

/// [BaseSource] is an abstract class that serves as the core for loading everything in the app.
/// It provides the base structure for the plugin API.
///
/// Each method in this class should be overridden by the concrete implementation of the plugin API.
abstract class BaseSource {
  // /// Contains the source details.
  // final Source source;

  /// Base url of the website without the trailing slash, like: http://mysite.com
  String get baseUrl;

  /// An iterable of `HomePageData` objects representing the home page data.
  Iterable<HomePageData> get homePage;

  /// This function will be called by iterating over homePage to load the `HomePage` for the app.
  ///
  /// [page] is the page number to load.
  /// [request] is the `HomePageRequest` object containing the request details.
  Future<HomePage> loadHomePage(int page, HomePageRequest request);

  /// Performs a search operation.
  ///
  /// [query] is the search query.
  Future<List<SearchResponse>> search(String query);

  /// Loads the details of a specific media.
  ///
  /// [searchResponse] is the `SearchResponse` object containing the search response details.
  Future<MediaDetails> loadMediaDetails(SearchResponse searchResponse);

  /// Loads the links for a specific URL.
  ///
  /// [url] is the URL to load the links from.
  Future<List<ExtractorLink>> loadLinks(String url);

  /// Loads a specific media.
  ///
  /// [link] is the `ExtractorLink` object containing the link details.
  Future<Media?> loadMedia(ExtractorLink link);
}
