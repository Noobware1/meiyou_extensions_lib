import 'package:dart_eval/dart_eval_bridge.dart';

class ExtensionLibTypes {
  //////////////////////////////// Perference //////////////////////////////////

  /// Bridge type spec for [$Preference]
  static const preference = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/preference.dart',
      'Preference');

  /// Bridge type spec for [$PreferenceStore]
  static const preferenceStore = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/preference_store.dart',
      'PreferenceStore');

  /// Bridge type spec for [$Preference]
  static const preferenceData = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart',
      'PreferenceData');

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

  static const source = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/source/source.dart', 'Source');

  static const sourceFactory = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/source/source_factory.dart',
      'SourceFactory');

  static const catalogueSource = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/source/catalogue_source.dart',
      'CatalogueSource');

  static const httpSource = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/source/online/http_source.dart',
      'HttpSource');

  static const lHttpSource = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/source/online/l_http_source.dart',
      'LHttpSource');

  static const parsedHttpSource = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/source/online/parsed_http_source.dart',
      'ParsedHttpSource');

  //////////////////////////////////////////////////////////////////////////////

  /// Bridge type spec for [$Quality]
  static const quality = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/quality.dart', 'Quality');

  /// Bridge type spec for [$MediaFormat]
  static const mediaFormat = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_format.dart',
      'MediaFormat');

  /// Bridge type spec for [$MediaLink]
  static const mediaLink = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_link.dart', 'MediaLink');

  /// Bridge type spec for [$Video]
  static const mediaAsset = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_asset.dart',
      'MediaAsset');

  /// Bridge type spec for [$Video]
  static const video = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_asset.dart', 'Video');

  /// Bridge type spec for [$VideoSource]
  static const videoSource = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_asset.dart',
      'VideoSource');

  /// Bridge type spec for [$Subtitle]
  static const subtitle = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_asset.dart', 'Subtitle');

  /// Bridge type spec for [$Intro]
  static const intro = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_asset.dart', 'Intro');

  /// Bridge type spec for [$Outro]
  static const outro = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_asset.dart', 'Outro');

  /// Bridge type spec for [$VideoFormat]
  static const videoFormat = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_asset.dart',
      'VideoFormat');

  /// Bridge type spec for [$SubtitleFormat]
  static const subtitleFormat = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_asset.dart',
      'SubtitleFormat');

  /// Bridge type spec for [$IMedia]
  static const iMedia = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media.dart', 'IMedia');

  /// Bridge type spec for [$ISeasonData]
  static const iSeasonData = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media.dart', 'ISeasonData');

  /// Bridge type spec for [$MediaContent]
  static const iMediaContent = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media_content.dart',
      'IMediaContent');

  /// Bridge type spec for [$Status]
  static const status = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media.dart', 'Status');

  /// Bridge type spec for [$HomePage]
  static const homePage = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/home_page.dart', 'HomePage');

  /// Bridge type spec for [$HomePageData]
  static const homePageList = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/home_page.dart',
      'HomePageList');

  /// Bridge type spec for [$HomePageRequest]
  static const homePageRequest = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/home_page.dart',
      'HomePageRequest');

  /// Bridge type spec for [$SearchPage]
  static const searchPage = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/search_page.dart',
      'SearchPage');

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

  /// Bridge type spec for [$UnsupportedOperationException]
  static const unsupportedOperationException = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/unsupported_operation_exception.dart',
      'UnsupportedOperationException');
}
