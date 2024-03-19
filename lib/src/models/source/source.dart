import 'package:meiyou_extensions_lib/src/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/info_page.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';
import 'package:meta/meta.dart';

abstract class Source {
  Source();

  /// ID for the source. Must be unique.
  abstract final int id;

  /// Name of the source.
  abstract final String name;

  /// Whether this source supports homepage or not
  final bool supportsHomePage = true;

  final double homePageRequestTimeout = 0.0;

  /// Language of the source.
  final String lang = "";

  List<HomePageRequest> homePageRequests();

  /// This function will be called by iterating over homePage to load the `HomePage` for the app.
  ///
  /// [page] is the page number to load.
  /// [request] is the `HomePageRequest` object containing the request details.
  Future<HomePage> getHomePage(int page, HomePageRequest request);

  /// Gets the details of a specific media.
  ///
  /// [searchResponse] is the `SearchResponse` object containing the search response details.
  Future<InfoPage> getInfoPage(ContentItem contentItem);

  /// Gets the links for a specific URL.
  ///
  /// [url] is the URL to get the links from.
  Future<List<ContentDataLink>> getContentDataLinks(String url);

  /// Gets content's data from a [link].
  ///
  /// [link] is the `ContentDataLink` object containing the link details.
  Future<ContentData?> getContentData(ContentDataLink link);

  @protected
  SharedPreferences get preferences => _preferences;

  late final SharedPreferences _preferences =
      SharedPreferences(_getPreferenceKey());

  String _getPreferenceKey() => 'source_$id';

  List<PreferenceData> setupPreferences() {
    throw UnsupportedError('Not Used');
  }
}
