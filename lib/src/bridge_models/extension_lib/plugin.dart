import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_security.dart';
import 'package:dart_eval/dart_eval.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/actor_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/episode.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/homepage.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/interfaces/base_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/interfaces/extractor_api.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media/video/subtitle.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media/video/subtitle_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media/video/video.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media/video/video_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media/video/video_quailty.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media/video/video_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media_details.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media_item/anime.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media_item/movie.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/media_item/tv_series.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/season_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/search_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/season_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/show_status.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/show_type.dart';

class ExtensionLibPlugin extends EvalPlugin {
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

    //Media
    registry.defineBridgeClass($Media.$declaration);
    registry.defineBridgeClass($Subtitle.$declaration);
    registry.defineBridgeClass($Video.$declaration);
    registry.defineBridgeClass($VideoQuality.$declaration);
    registry.defineBridgeClass($VideoSource.$declaration);

    //Interfaces
    registry.defineBridgeClass($ExtractorApi.$declaration);
    registry.defineBridgeClass($BaseSource.$declaration);
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

    //Media
    $Media.configureForRuntime(runtime);
    $Subtitle.configureForRuntime(runtime);
    $Video.configureForRuntime(runtime);
    $VideoQuality.configureForRuntime(runtime);
    $VideoSource.configureForRuntime(runtime);
    $Subtitle.configureForRuntime(runtime);

    //Interfaces
    $ExtractorApi.configureForRuntime(runtime);
    $BaseSource.configureForRuntime(runtime);
  }

  @override
  // TODO: implement identifier
  String get identifier => throw UnimplementedError();
}

class ExtensionLibTypes {
  //////////////////////////////// Interfaces //////////////////////////////////

  static const baseSource = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/interfaces/base_source.dart',
      'BaseSource');

  static const extractorApi = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/interfaces/extractor_api.dart',
      'ExtractorApi');

  //////////////////////////////////////////////////////////////////////////////

  //////////////////////////////// Media ///////////////////////////////////////

  static const mediaType = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/media.dart', 'MediaType');

  static const media = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/media.dart', 'Media');

  //////////////////////////////////////////////////////////////////////////////

  //////////////////////////////// Video ///////////////////////////////////////

  static const subtitleFormat = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/subtitle_format.dart',
      'SubtitleFormat');

  static const subtitle = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/subtitle.dart',
      'Subtitle');

  static const videoFormat = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/video_format.dart',
      'VideoFormat');

  static const videoQuality = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/video_quality.dart',
      'VideoQuality');

  static const videoSource = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/video_source.dart',
      'VideoSource');

  static const video = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/models/media/video.dart', 'Video');

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
}
