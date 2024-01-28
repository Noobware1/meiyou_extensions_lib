import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

final modelsSource =
    DartSource('package:meiyou_extensions_lib/models.dart', _source());

String _source() {
  final buffer = StringBuffer();
  OkHttpPlugin().addAllExport(buffer);
  CryptoDartPlugin().addAllExports(buffer);
  HTMLPlugin().addAllExports(buffer);
  ExtensionLibPlugin().addAllExports(buffer, 'models');

  [
    'export \'src/models/actor_data.dart\';',
    'export \'src/models/episode.dart\';',
    'export \'src/models/external_id.dart\';',
    'export \'src/models/extractor_link.dart\';',
    'export \'src/models/homepage.dart\';',
    'export \'src/models/media_details.dart\';',
    'export \'src/models/season_list.dart\';',
    'export \'src/models/search_response.dart\';',
    'export \'src/models/season_data.dart\';',
    'export \'src/models/show_status.dart\';',
    'export \'src/models/show_type.dart\';',

    //MediaItem
    'export \'src/models/media_item/media_item.dart\';',
    'export \'src/models/media_item/anime.dart\';',
    'export \'src/models/media_item/movie.dart\';',
    'export \'src/models/media_item/tv_series.dart\';',

    // Filters
    'export \'src/models/filter.dart\';',
    'export \'src/models/filter_list.dart\';',

    //Interfaces
    'export \'src/models/interfaces/extractor_api.dart\';',
    'export \'src/models/interfaces/source.dart\';',
    'export \'src/models/interfaces/catalogue_source.dart\';',
    'export \'src/models/interfaces/online/http_source.dart\';',
    'export \'src/models/interfaces/online/parsed_http_source.dart\';',

    //Media
    'export \'src/models/media/media.dart\';',

    //Video
    'export \'src/models/media/video/subtitle.dart\';',
    'export \'src/models/media/video/subtitle_format.dart\';',
    'export \'src/models/media/video/video.dart\';',
    'export \'src/models/media/video/video_format.dart\';',
    'export \'src/models/media/video/video_quality.dart\';',
    'export \'src/models/media/video/video_source.dart\';',
  ].forEach((element) {
    buffer.writeln(element);
  });

  return buffer.toString();
}
