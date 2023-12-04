import 'package:meiyou_extenstions/src/models/episode.dart';
import 'package:meiyou_extenstions/src/models/media_item/media_item.dart';

class Anime extends MediaItem {
  Anime({required this.episodes}) : super(type: MediaItemType.Anime);
  
  final List<Episode> episodes;

  @override
  String toString() {
    return 'Anime(episodes: $episodes)';
  }
}
