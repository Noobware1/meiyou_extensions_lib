import 'package:meiyou_extenstions/src/models/episode.dart';
import 'package:meiyou_extenstions/src/models/media_item/media_item.dart';

/// A class that represents an anime.
///
/// The `Anime` class extends the `MediaItem` class and adds a list of `Episode` objects.
///
/// This class has the following properties:
/// * `episodes`: A list of `Episode` objects representing the episodes of the anime.
class Anime extends MediaItem {
  Anime({required this.episodes}) : super(type: MediaItemType.Anime);

  /// A list of `Episode` objects representing the episodes of the anime.
  final List<Episode> episodes;

  @override
  String toString() {
    return 'Anime(episodes: $episodes)';
  }
}
