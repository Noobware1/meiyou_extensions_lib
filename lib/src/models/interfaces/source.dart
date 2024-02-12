import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';

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

  late final SharedPreferences preferences =
      SharedPreferences.getInstance(getPreferenceId());

  int getPreferenceId() {
    return id;
  }

  List<Preference> setupPreferences() {
    throw UnsupportedError('Not Used');
  }
}
