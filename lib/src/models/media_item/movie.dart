import 'package:meiyou_extenstions/src/models/media_item/media_item.dart';

class Movie extends MediaItem {
  Movie({required this.url, this.posterImage, this.description})
      : super(type: MediaItemType.Movie);

  final String url;

  final String? posterImage;

  final String? description;

  @override
  String toString() {
    return 'Movie(url: $url, posterImage: $posterImage, description: $description)';
  }
}
