import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_content.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';
import 'package:meta/meta.dart';

abstract class Source {
  Source();

  /// ID for the source. Must be unique.
  abstract final int id;

  /// Name of the source.
  abstract final String name;

  final double homePageRequestTimeout = 0.0;

  /// Language of the source.
  final String lang = "";

  List<HomePageRequest> homePageRequests();

  Future<HomePage> getHomePage(int page, HomePageRequest request);

  Future<MediaDetails> getMediaDetails(MediaDetails mediaDetails);

  Future<MediaContent> getMediaContent(MediaDetails mediaDetails);

  Future<List<MediaLink>> getMediaLinks(String data);

  Future<Media?> getMedia(MediaLink link);

  @protected
  SharedPreferences get preferences => _preferences;

  late final SharedPreferences _preferences =
      SharedPreferences(_getPreferenceKey());

  String _getPreferenceKey() => 'source_$id';

  List<PreferenceData> setupPreferences() {
    throw UnsupportedError('Not Used');
  }
}
