import 'dart:typed_data';

import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extenstions/src/bridge_models/actor_data.dart';
import 'package:meiyou_extenstions/src/bridge_models/document.dart';
import 'package:meiyou_extenstions/src/bridge_models/element.dart';
import 'package:meiyou_extenstions/src/bridge_models/episode.dart';
import 'package:meiyou_extenstions/src/bridge_models/extractor_link.dart';
import 'package:meiyou_extenstions/src/bridge_models/homepage.dart';
import 'package:meiyou_extenstions/src/bridge_models/interfaces/base_plugin_api.dart';
import 'package:meiyou_extenstions/src/bridge_models/interfaces/extractor_api.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/media.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/media_type.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/video/subtitle.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/video/subtitle_format.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/video/video.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/video/video_format.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/video/video_quailty.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/video/video_source.dart';
import 'package:meiyou_extenstions/src/bridge_models/media_details.dart';
import 'package:meiyou_extenstions/src/bridge_models/media_item/anime.dart';
import 'package:meiyou_extenstions/src/bridge_models/media_item/media_item.dart';
import 'package:meiyou_extenstions/src/bridge_models/media_item/movie.dart';
import 'package:meiyou_extenstions/src/bridge_models/media_item/tv_series.dart';
import 'package:meiyou_extenstions/src/bridge_models/ok_http_response.dart';
import 'package:meiyou_extenstions/src/bridge_models/season_list.dart';
import 'package:meiyou_extenstions/src/bridge_models/search_response.dart';
import 'package:meiyou_extenstions/src/bridge_models/season_data.dart';
import 'package:meiyou_extenstions/src/bridge_models/show_status.dart';
import 'package:meiyou_extenstions/src/bridge_models/show_type.dart';
import 'package:meiyou_extenstions/src/bridge_models/utils_models/app_utils.dart';
import 'package:meiyou_extenstions/src/bridge_models/utils_models/crypto/crypto_options.dart';
import 'package:meiyou_extenstions/src/bridge_models/utils_models/crypto/crypto_utils.dart';
import 'package:meiyou_extenstions/src/bridge_models/utils_models/iterable_utils.dart';
import 'package:meiyou_extenstions/src/bridge_models/utils_models/list_utils.dart';
import 'package:meiyou_extenstions/src/bridge_models/utils_models/num_utils.dart';
import 'package:meiyou_extenstions/src/bridge_models/utils_models/string_utils.dart';

//Generated Extractors
import 'package:meiyou_extenstions/src/extractors/gogo_cdn/gogo_cdn.eval.dart';

class ExtenstionComplier {
  Uint8List compilePackages(Map<String, Map<String, String>> packages) {
    final compiler = Compiler();
    compiler.defineBridgeEnum($ShowType.$declaration);
    compiler.defineBridgeEnum($ShowStaus.$declaration);
    compiler.defineBridgeEnum($MediaItemType.$declaration);
    compiler.defineBridgeEnum($MediaType.$declaration);
    compiler.defineBridgeEnum($SubtitleFormat.$declaration);
    compiler.defineBridgeEnum($VideoFormat.$declaration);

    compiler.defineBridgeClasses([
      //Extenstions
      $StringUtils.$declaration,
      $NumUtils.$declaration,
      $IterableUtils.$declaration,
      $ListUtils.$declaration,
      $CryptoOptions.$declaration,
      $CryptoUtils.$declaration,

      //OkHttp
      $Element.$declaration,
      $Document.$declaration,
      $ElementObject.$declaration,
      $DocumentObject.$declaration,
      $OkHttpResponseObject.$declaration,

      //HomePage
      $HomePageData.$declaration,
      $HomePageRequest.$declaration,
      $HomePage.$declaration,
      $HomePageList.$declaration,

      //MediaDetails
      $MediaDetails.$declaration,
      $SearchResponse.$declaration,
      $ActorData.$declaration,
      $SeasonData.$declaration,
      $Episode.$declaration,
      $SeasonList.$declaration,
      $MediaItem.$declaration,
      $Anime.$declaration,
      $TvSeries.$declaration,
      $Movie.$declaration,
      $ExtractorLink.$declaration,

      //Media
      $Media.$declaration,
      $Subtitle.$declaration,
      $Video.$declaration,
      $VideoQuality.$declaration,
      $VideoSource.$declaration,

      //App utils
      $AppUtils.$declaration,

      //Interfaces
      $ExtractorApi.$declaration,
      $BasePluginApi.$declaration,

      //Extractors
      $GogoCDN.$declaration,

    ]);
    final program = compiler.compile(packages);

    final bytecode = program.write();
    return bytecode;
  }
}
