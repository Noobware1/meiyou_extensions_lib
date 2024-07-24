import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_security.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_asset.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_content.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/quality.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/online/http_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/online/parsed_http_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/source/source_factory.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/unsupported_operation_exception.dart';
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
    $HomePageList.configureForCompile(registry);
    $HomePageRequest.configureForCompile(registry);
    $HomePage.configureForCompile(registry);

    //media.dart
    $IMedia.configureForCompile(registry);
    $IMediaContent.configureForCompile(registry);
    $Status.configureForCompile(registry);

    //search_page.dart
    $SearchPage.configureForCompile(registry);

    // media_format.dart
    $MediaFormat.configureForCompile(registry);

    //media_link.dart
    $MediaLink.configureForCompile(registry);

    //media.dart

    $MediaAsset.configureForCompile(registry);
    $Video.configureForCompile(registry);
    $VideoFormat.configureForCompile(registry);
    $VideoSource.configureForCompile(registry);
    $Subtitle.configureForCompile(registry);
    $Intro.configureForCompile(registry);
    $Outro.configureForCompile(registry);
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

    $UnsupportedOperationException.configureForCompile(registry);

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
    $HomePageList.configureForRuntime(runtime);
    $HomePageRequest.configureForRuntime(runtime);
    $HomePage.configureForRuntime(runtime);

    //media.dart
    $IMedia.configureForRuntime(runtime);
    $IMediaContent.configureForRuntime(runtime);
    $Status.configureForRuntime(runtime);

    //search_page.dart
    $SearchPage.configureForRuntime(runtime);

    // media_format.dart
    $MediaFormat.configureForRuntime(runtime);

    //media_link.dart
    $MediaLink.configureForRuntime(runtime);

    //media.dart
    $MediaAsset.configureForRuntime(runtime);
    $Video.configureForRuntime(runtime);
    $VideoFormat.configureForRuntime(runtime);
    $VideoSource.configureForRuntime(runtime);
    $Subtitle.configureForRuntime(runtime);
    $Intro.configureForRuntime(runtime);
    $Outro.configureForRuntime(runtime);
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

    $UnsupportedOperationException.configureForRuntime(runtime);
  }

  @override
  String get identifier => 'package:meiyou_extensions_lib';
}
