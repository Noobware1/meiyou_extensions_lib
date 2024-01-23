// ignore_for_file: unused_import

import 'dart:io';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_security.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/actor_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/episode.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/homepage.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/interfaces/base_plugin_api.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/interfaces/extractor_api.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/subtitle.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/subtitle_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/video.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/video_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/video_quailty.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/video_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_details.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_item/anime.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_item/movie.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_item/tv_series.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/plugin.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/season_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/search_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/season_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/show_status.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/show_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/app_utils.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/iterable_utils.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/list_utils.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/num_utils.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/string_utils.dart';
import 'package:meiyou_extensions_lib/src/extenstions/string.dart';

class ExtensionLibPlugin extends EvalPlugin {
  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($ShowType.$declaration);
    registry.defineBridgeEnum($ShowStaus.$declaration);
    registry.defineBridgeEnum($MediaItemType.$declaration);
    registry.defineBridgeEnum($MediaType.$declaration);
    registry.defineBridgeEnum($SubtitleFormat.$declaration);
    registry.defineBridgeEnum($VideoFormat.$declaration);

    //Extenstions
    registry.defineBridgeClass($StringUtils.$declaration);
    registry.defineBridgeClass($NumUtils.$declaration);
    registry.defineBridgeClass($IterableUtils.$declaration);
    registry.defineBridgeClass($ListUtils.$declaration);

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

    //Media
    registry.defineBridgeClass($Media.$declaration);
    registry.defineBridgeClass($Subtitle.$declaration);
    registry.defineBridgeClass($Video.$declaration);
    registry.defineBridgeClass($VideoQuality.$declaration);
    registry.defineBridgeClass($VideoSource.$declaration);

    //App utils
    registry.defineBridgeClass($AppUtils.$declaration);

    //Interfaces
    registry.defineBridgeClass($ExtractorApi.$declaration);
    registry.defineBridgeClass($BasePluginApi.$declaration);

    // OkHttpPlugin().configureForCompile(registry);
    CryptoDartPlugin().configureForCompile(registry);
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

    //Extenstions
    $StringUtils.configureForRuntime(runtime);
    $NumUtils.configureForRuntime(runtime);
    $IterableUtils.configureForRuntime(runtime);
    $ListUtils.configureForRuntime(runtime);
    // $CryptoOptions.configureForRuntime(runtime);

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

    //Media
    $Media.configureForRuntime(runtime);
    $Subtitle.configureForRuntime(runtime);
    $Video.configureForRuntime(runtime);
    $VideoQuality.configureForRuntime(runtime);
    $VideoSource.configureForRuntime(runtime);
    $Subtitle.configureForRuntime(runtime);

    //App utils
    $AppUtils.configureForRuntime(runtime);

    //Interfaces
    $ExtractorApi.configureForRuntime(runtime);
    $BasePluginApi.configureForRuntime(runtime);

    // OkHttpPlugin().configureForRuntime(runtime);
    CryptoDartPlugin().configureForRuntime(runtime);
  }

  @override
  String get identifier => bridgeLibary;
}
