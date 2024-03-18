import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_security.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_category.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/info_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/quality.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/online/http_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/online/parsed_http_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/source_factory.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preference_store.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preferences/dilog_preference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preferences/two_state_preference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/shared_preferences.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/nice_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/html_extensions.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter_list.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/base_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/interceptor/interceptor_impl.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/interceptor/user_agent_interceptor.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_preferences.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/okhttp_extensions.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/perference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/utils.dart';
import 'package:meiyou_extensions_lib/src/requests.dart';

class ExtensionLibPlugin extends EvalPlugin {
  ExtensionLibPlugin();

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
    //home_page.dart
    $HomePageData.configureForCompile(registry);
    $HomePageRequest.configureForCompile(registry);
    $HomePage.configureForCompile(registry);

    //info_page.dart
    $InfoPage.configureForCompile(registry);
    $Status.configureForCompile(registry);
    $ExternalId.configureForCompile(registry);
    $Character.configureForCompile(registry);

    //search_page.dart
    $SearchPage.configureForCompile(registry);

    // content.dart
    $Content.configureForCompile(registry);
    $LazyContent.configureForCompile(registry);
    $Movie.configureForCompile(registry);
    $Series.configureForCompile(registry);
    $Anime.configureForCompile(registry);

    // content_category.dart
    $ContentCategory.configureForCompile(registry);

    //content_item.dart
    $ContentItem.configureForCompile(registry);

    //content_link.dart
    $ContentDataLink.configureForCompile(registry);

    //content_data.dart
    $ContentDataType.configureForCompile(registry);
    $Video.configureForCompile(registry);
    $VideoFormat.configureForCompile(registry);
    $VideoSource.configureForCompile(registry);
    $Subtitle.configureForCompile(registry);
    $SubtitleFormat.configureForCompile(registry);

    //quality.dart
    $Quality.configureForCompile(registry);

    // source.dart
    $Source.configureForCompile(registry);

    // source_factory.dart
    $SourceFactory.configureForCompile(registry);

    // catalogue_source.dart
    $CatalogueSource.configureForCompile(registry);

    // http_source.dart
    $HttpSource.configureForCompile(registry);

    // parsed_http_source.dart
    $ParsedHttpSource.configureForCompile(registry);

    // filters
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
    runtime.grant(FilesystemPermission.any);

    //home_page.dart
    $HomePageData.configureForRuntime(runtime);
    $HomePageRequest.configureForRuntime(runtime);
    $HomePage.configureForRuntime(runtime);

    //info_page.dart
    $InfoPage.configureForRuntime(runtime);
    $Status.configureForRuntime(runtime);
    $ExternalId.configureForRuntime(runtime);
    $Character.configureForRuntime(runtime);

    //search_page.dart
    $SearchPage.configureForRuntime(runtime);

    // content.dart
    $LazyContent.configureForRuntime(runtime);
    $Movie.configureForRuntime(runtime);
    $Series.configureForRuntime(runtime);
    $Anime.configureForRuntime(runtime);

    // content_category.dart
    $ContentCategory.configureForRuntime(runtime);

    //content_item.dart
    $ContentItem.configureForRuntime(runtime);

    //content_link.dart
    $ContentDataLink.configureForRuntime(runtime);

    //content_data.dart
    $ContentDataType.configureForRuntime(runtime);
    $Video.configureForRuntime(runtime);
    $VideoFormat.configureForRuntime(runtime);
    $VideoSource.configureForRuntime(runtime);
    $Subtitle.configureForRuntime(runtime);
    $SubtitleFormat.configureForRuntime(runtime);

    //quality.dart
    $Quality.configureForRuntime(runtime);

    // source.dart
    $Source.configureForRuntime(runtime);

    // source_factory.dart
    $SourceFactory.configureForRuntime(runtime);

    // catalogue_source.dart
    $CatalogueSource.configureForRuntime(runtime);

    // http_source.dart
    $HttpSource.configureForRuntime(runtime);

    // parsed_http_source.dart
    $ParsedHttpSource.configureForRuntime(runtime);
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
    $SharedPreferences.configureForRuntime(runtime);
    $EditTextPreference.configureForRuntime(runtime);
    $ListPreference.configureForRuntime(runtime);
    $MultiSelectListPreference.configureForRuntime(runtime);
    $CheckBoxPreference.configureForRuntime(runtime);
    $SwitchPreference.configureForRuntime(runtime);
  }

  @override
  String get identifier => 'package:meiyou_extensions_lib';
}
