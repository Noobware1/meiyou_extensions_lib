import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_security.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/source_factory.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preference_store.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preferences/dilog_preference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preferences/two_state_preference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/nice_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/html_extensions.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/actor_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/episode.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/external_id.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/homepage.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/base_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/extractor_api.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/online/http_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/online/parsed_http_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/video/subtitle.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/video/subtitle_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/video/video.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/video/video_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/video/video_quailty.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/video/video_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_item/anime.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_item/movie.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_item/tv_series.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/season_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/season_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/show_status.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/show_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/interceptor/interceptor_impl.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/interceptor/user_agent_interceptor.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_preferences.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/okhttp_extensions.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/perference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/utils.dart';
import 'package:meiyou_extensions_lib/src/override/lib_overrides.dart';
import 'package:meiyou_extensions_lib/src/requests.dart';

class ExtensionLibPlugin extends EvalPlugin {
  final ExtensionLibOverrides _overrides;
  ExtensionLibPlugin(this._overrides);

  static void addAllExports(StringBuffer buffer, String exclude) {
    final exports = {
      'utils': 'package:meiyou_extensions_lib/utils.dart',
      'network': 'package:meiyou_extensions_lib/network.dart',
      'okhttp_extensions':
          'package:meiyou_extensions_lib/okhttp_extensions.dart',
      'html_extensions': 'package:meiyou_extensions_lib/html_extensions.dart',
      'models': 'package:meiyou_extensions_lib/models.dart',
      'preference': 'package:meiyou_extensions_lib/preference.dart',
    };

    exports.forEach((key, value) {
      if (key != exclude) {
        buffer.writeln('import \'$value\';');
      }
    });
  }

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($ShowType.$declaration);
    registry.defineBridgeEnum($ShowStaus.$declaration);
    registry.defineBridgeEnum($MediaItemType.$declaration);
    registry.defineBridgeEnum($MediaType.$declaration);
    registry.defineBridgeEnum($SubtitleFormat.$declaration);
    registry.defineBridgeEnum($VideoFormat.$declaration);

    //HomePage
    registry.defineBridgeClass($HomePageData.$declaration);
    registry.defineBridgeClass($HomePageRequest.$declaration);
    registry.defineBridgeClass($HomePage.$declaration);
    registry.defineBridgeClass($HomePageList.$declaration);

    //MediaDetails
    registry.defineBridgeClass($MediaDetails.$declaration);
    registry.defineBridgeClass($SearchResponse.$declaration);
    registry.defineBridgeClass($ActorData.$declaration);
    registry.defineBridgeClass($SeasonData.$declaration);
    registry.defineBridgeClass($Episode.$declaration);
    registry.defineBridgeClass($SeasonList.$declaration);
    registry.defineBridgeClass($MediaItem.$declaration);
    registry.defineBridgeClass($Anime.$declaration);
    registry.defineBridgeClass($TvSeries.$declaration);
    registry.defineBridgeClass($Movie.$declaration);
    registry.defineBridgeClass($ExtractorLink.$declaration);
    registry.defineBridgeClass($ExternalId.$declaration);

    //Media
    registry.defineBridgeClass($Media.$declaration);
    registry.defineBridgeClass($Subtitle.$declaration);
    registry.defineBridgeClass($Video.$declaration);
    registry.defineBridgeClass($VideoQuality.$declaration);
    registry.defineBridgeClass($VideoSource.$declaration);

    //Interfaces
    registry.defineBridgeClass($ExtractorApi.$declaration);
    // registry.defineBridgeClass($BaseSource.$declaration);?
    registry.defineBridgeClass($Source.$declaration);
    registry.defineBridgeClass($SourceFactory.$declaration);
    registry.defineBridgeClass($CatalogueSource.$declaration);
    registry.defineBridgeClass($HttpSource.$declaration);
    registry.defineBridgeClass($ParsedHttpSource.$declaration);

    // Filter
    $FilterList.configureForCompile(registry);
    $Filter.configureForCompile(registry);
    $HeaderFilter.configureForCompile(registry);
    $SeparatorFilter.configureForCompile(registry);
    $SelectFilter.configureForCompile(registry);
    $TextFilter.configureForCompile(registry);
    $CheckBoxFilter.configureForCompile(registry);
    $TriStateFilter.configureForCompile(registry);
    $GroupFilter.configureForCompile(registry);
    $SortFilter.configureForCompile(registry);
    $Selection.configureForCompile(registry);

    //Utils
    NiceDartPlugin().configureForCompile(registry);
    registry.addSource(utilsSource);

    // Network
    $Requests.configureForCompile(registry);
    $NetworkHelper.configureForCompile(registry);
    $NetworkPreferences.configureForCompile(registry);
    // $UnHandledExceptionInterceptor.configureForCompile(registry);
    $UserAgentInterceptor.configureForCompile(registry);
    $InterceptorImpl.configureForCompile(registry);
    registry.addSource(networkSource);

    $SharedPreferences.configureForCompile(registry);
    $PreferenceData.configureForCompile(registry);
    $DilogPreference.configureForCompile(registry);
    $EditTextPreference.configureForCompile(registry);
    $ListPreference.configureForCompile(registry);
    $MultiSelectListPreference.configureForCompile(registry);
    $TwoStatePreference.configureForCompile(registry);
    $CheckBoxPreference.configureForCompile(registry);
    $SwitchPreference.configureForCompile(registry);
    $Preference.configureForCompile(registry);
    $PreferenceStore.configureForCompile(registry);

    registry.addSource(preferenceSource);

    registry.addSource(okhttpExtensionsSource);
    registry.addSource(htmlExtensionsSource);
    registry.addSource(modelsSource);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    runtime.grant(NetworkPermission.any);

    //Enums
    $ShowType.configureForRuntime(runtime);
    $ShowStaus.configureForRuntime(runtime);
    $MediaItemType.configureForRuntime(runtime);
    $MediaType.configureForRuntime(runtime);
    $SubtitleFormat.configureForRuntime(runtime);
    $VideoFormat.configureForRuntime(runtime);

    //HomePage

    $HomePageData.configureForRuntime(runtime);
    $HomePageRequest.configureForRuntime(runtime);
    $HomePage.configureForRuntime(runtime);
    $HomePageList.configureForRuntime(runtime);

    //MediaDetails
    $MediaDetails.configureForRuntime(runtime);
    $SearchResponse.configureForRuntime(runtime);
    $ActorData.configureForRuntime(runtime);
    $SeasonData.configureForRuntime(runtime);
    $Episode.configureForRuntime(runtime);
    $SeasonList.configureForRuntime(runtime);
    $MediaItem.configureForRuntime(runtime);
    $Anime.configureForRuntime(runtime);
    $TvSeries.configureForRuntime(runtime);
    $Movie.configureForRuntime(runtime);
    $ExtractorLink.configureForRuntime(runtime);
    $ExternalId.configureForRuntime(runtime);

    //Media
    $Media.configureForRuntime(runtime);
    $Subtitle.configureForRuntime(runtime);
    $Video.configureForRuntime(runtime);
    $VideoQuality.configureForRuntime(runtime);
    $VideoSource.configureForRuntime(runtime);
    $Subtitle.configureForRuntime(runtime);

    // Filter
    $FilterList.configureForRuntime(runtime);
    $HeaderFilter.configureForRuntime(runtime);
    $SeparatorFilter.configureForRuntime(runtime);
    $SelectFilter.configureForRuntime(runtime);
    $TextFilter.configureForRuntime(runtime);
    $CheckBoxFilter.configureForRuntime(runtime);
    $TriStateFilter.configureForRuntime(runtime);
    $GroupFilter.configureForRuntime(runtime);
    $SortFilter.configureForRuntime(runtime);
    $Selection.configureForRuntime(runtime);

    //Interfaces
    $ExtractorApi.configureForRuntime(runtime);
    // $BaseSource.configureForRuntime(runtime);
    $Source.configureForRuntime(runtime, _overrides);
    $SourceFactory.configureForRuntime(runtime);
    $CatalogueSource.configureForRuntime(runtime, _overrides);
    $HttpSource.configureForRuntime(runtime, _overrides);
    $ParsedHttpSource.configureForRuntime(runtime, _overrides);

    //Utils
    NiceDartPlugin().configureForRuntime(runtime);

    // Network
    $Requests.configureForRuntime(runtime);
    $NetworkHelper.configureForRuntime(runtime);
    $NetworkPreferences.configureForRuntime(runtime);
    $UserAgentInterceptor.configureForRuntime(runtime);
    $InterceptorImpl.configureForRuntime(runtime);

    // Preference
    $Preference.configureForRuntime(runtime);
    $SharedPreferences.configureForRuntime(
        runtime, _overrides.$SharedPreferences$new);
    $EditTextPreference.configureForRuntime(runtime);
    $ListPreference.configureForRuntime(runtime);
    $MultiSelectListPreference.configureForRuntime(runtime);
    $CheckBoxPreference.configureForRuntime(runtime);
    $SwitchPreference.configureForRuntime(runtime);
  }

  @override
  String get identifier => 'package:meiyou_extensions_lib';
}
