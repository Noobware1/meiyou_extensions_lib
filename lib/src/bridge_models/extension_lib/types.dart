import 'package:dart_eval/dart_eval_bridge.dart';

class ExtensionLibTypes {
  //////////////////////////////// Perference //////////////////////////////////
  ///
  /// Bridge type spec for [$Preference]
  static const preference = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/preferences/preference.dart',
      'Preference');

  /// Bridge type spec for [$DilogPreference]
  static const dilogPreference = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/preferences/dilog_preference.dart',
      'DilogPreference');

  /// Bridge type spec for [$EditTextPreference]
  static const editTextPreference = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/preferences/dilog_preference.dart',
      'EditTextPreference');

  /// Bridge type spec for [$ListPreference]
  static const listPreference = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/preferences/dilog_preference.dart',
      'ListPreference');

  /// Bridge type spec for [$MultiSelectListPreference]
  static const multiSelectListPreference = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/preferences/dilog_preference.dart',
      'MultiSelectListPreference');

  /// Bridge type spec for [$TwoStatePreference]
  static const twoStatePreference = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/preferences/two_state_preference.dart',
      'TwoStatePreference');

  /// Bridge type spec for [$CheckBoxPreference]
  static const checkBoxPreference = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/preferences/two_state_preference.dart',
      'CheckBoxPreference');

  /// Bridge type spec for [$SwitchPreference]
  static const switchPreference = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/preferences/two_state_preference.dart',
      'SwitchPreference');

  /// Bridge type spec for [$SharedPreferences]
  static const sharedPreferences = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/shared_preferences.dart',
      'SharedPreferences');

  //////////////////////////////////////////////////////////////////////////////

  //////////////////////////////// Network //////////////////////////////////

  /// Bridge type spec for [$NetworkPreferences]
  static const networkPreferences = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/network/network_preferences.dart',
      'NetworkPreferences');

  /// Bridge type spec for [$NetworkHelper]
  static const networkHelper = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/network/network_helper.dart',
      'NetworkHelper');

  /// Bridge type spec for [$UserAgentInterceptor]
  static const userAgentInterceptor = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/network/interceptor/user_agent_interceptor.dart',
      'UserAgentInterceptor');

  /// Bridge type spec for [$InterceptorImpl]
  static const interceptorImpl = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/network/interceptor/interceptor_impl.dart',
      'InterceptorImpl');

  //////////////////////////////////////////////////////////////////////////////

  //////////////////////////////// Interfaces //////////////////////////////////

  static const extractorApi = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/interfaces/extractor_api.dart',
      'ExtractorApi');

  static const source = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/interfaces/source.dart',
      'Source');

  static const catalogueSource = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/interfaces/catalogue_source.dart',
      'CatalogueSource');

  static const httpSource = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/interfaces/online/http_source.dart',
      'HttpSource');

  static const parsedHttpSource = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/interfaces/online/parsed_http_source.dart',
      'ParsedHttpSource');

  //////////////////////////////////////////////////////////////////////////////

  //////////////////////////////// Media ///////////////////////////////////////

  static const mediaType = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/media.dart', 'MediaType');

  static const media = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/media.dart', 'Media');

  //////////////////////////////////////////////////////////////////////////////

  //////////////////////////////// Video ///////////////////////////////////////

  static const subtitleFormat = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/video/subtitle_format.dart',
      'SubtitleFormat');

  static const subtitle = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/video/subtitle.dart',
      'Subtitle');

  static const videoFormat = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/video/video_format.dart',
      'VideoFormat');

  static const videoQuality = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/video/video_quality.dart',
      'VideoQuality');

  static const videoSource = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/video/video_source.dart',
      'VideoSource');

  static const video = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/video/video.dart',
      'Video');

  //////////////////////////////////////////////////////////////////////////////

  //////////////////////////////// MediaItem ///////////////////////////////////

  /// Bridge type spec for [$Anime]
  static const anime = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_item/anime.dart',
      'Anime');

  /// Bridge type spec for [$Movie]
  static const movie = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_item/movie.dart',
      'Movie');

  /// Bridge type spec for [$TvSeries]
  static const tvSeries = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_item/tv_series.dart',
      'TvSeries');

  /// Bridge type spec for [$MediaItem]
  static const mediaItem = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_item/media_item.dart',
      'MediaItem');

  /// Bridge type spec for [$MediaItemType]
  static const mediaItemType = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_item/media_item.dart',
      'MediaItemType');

  //////////////////////////////////////////////////////////////////////////////

  /// Bridge type spec for [$ActorData]
  static const actorData = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/actor_data.dart', 'ActorData');

  /// Bridge type spec for [$Episode]
  static const episode = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/episode.dart', 'Episode');

  /// Bridge type spec for [$ExternalId]
  static const externalId = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/external_id.dart',
      'ExternalId');

  /// Bridge type spec for [$SearchResponse]
  static const searchResponse = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/search_response.dart',
      'SearchResponse');

  /// Bridge type spec for [$ExtractorLink]
  static const extractorLink = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/extractor_link.dart',
      'ExtractorLink');

  /// Bridge type spec for [$HomePageData]
  static const homePageData = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/homepage.dart', 'HomePageData');

  /// Bridge type spec for [$HomePageRequest]
  static const homePageRequest = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/homepage.dart',
      'HomePageRequest');

  /// Bridge type spec for [$HomePage]
  static const homePage = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/homepage.dart', 'HomePage');

  /// Bridge type spec for [$HomePageList]
  static const homePageList = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/homepage.dart', 'HomePageList');

  /// Bridge type spec for [$MediaDetails]
  static const mediaDetails = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_details.dart',
      'MediaDetails');

  /// Bridge type spec for [$SeasonData]
  static const seasonData = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/season_data.dart',
      'SeasonData');

  /// Bridge type spec for [$SeasonList]
  static const seasonList = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/season_list.dart',
      'SeasonList');

  /// Bridge type spec for [$ShowStatus]
  static const showStatus = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/show_status.dart',
      'ShowStatus');

  /// Bridge type spec for [$ShowType]
  static const showType = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/show_type.dart', 'ShowType');

  ///////////////////////////// Filter /////////////////////////////////////////
  static const _filterSrc =
      'package:meiyou_extensions_lib/src/models/filter.dart';

  /// Bridge type spec for [$FilterList]
  static const filterList = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/filter_list.dart',
      'FilterList');

  /// Bridge type spec for [$Filter]
  static const filter = BridgeTypeSpec(_filterSrc, 'Filter');

  /// Bridge type spec for [$HeaderFilter]
  static const headerFilter = BridgeTypeSpec(_filterSrc, 'HeaderFilter');

  /// Bridge type spec for [$SeparatorFilter]
  static const separatorFilter = BridgeTypeSpec(_filterSrc, 'SeparatorFilter');

  /// Bridge type spec for [$SelectFilter]
  static const selectFilter = BridgeTypeSpec(_filterSrc, 'SelectFilter');

  /// Bridge type spec for [$TextFilter]
  static const textFilter = BridgeTypeSpec(_filterSrc, 'TextFilter');

  /// Bridge type spec for [$CheckBoxFilter]
  static const checkBoxFilter = BridgeTypeSpec(_filterSrc, 'CheckBoxFilter');

  /// Bridge type spec for [$TriStateFilter]
  static const triStateFilter = BridgeTypeSpec(_filterSrc, 'TriStateFilter');

  /// Bridge type spec for [$GroupFilter]
  static const groupFilter = BridgeTypeSpec(_filterSrc, 'GroupFilter');

  /// Bridge type spec for [$SortFilter]
  static const sortFilter = BridgeTypeSpec(_filterSrc, 'SortFilter');

  /// Bridge type spec for [$Selection]
  static const selection = BridgeTypeSpec(_filterSrc, 'Selection');

  //////////////////////////////////////////////////////////////////////////////
}
