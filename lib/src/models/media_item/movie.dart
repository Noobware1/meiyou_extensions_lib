import 'package:meiyou_extensions_lib/src/models/media_item/media_item.dart';

/// A class that represents a movie.
///
/// The `Movie` class extends the `MediaItem` class and adds a URL, a poster image, and a description.
///
/// This class has the following properties:
/// * `url`: A string representing the URL of the movie.
/// * `posterImage`: An optional string representing the URL of the movie's poster image.
/// * `description`: An optional string representing the description of the movie.
class Movie extends MediaItem {
  Movie({required this.url, this.posterImage, this.description})
      : super(type: MediaItemType.Movie);

  /// A string representing the URL of the movie.
  final String url;

  /// An optional string representing the URL of the movie's poster image.
  final String? posterImage;

  /// An optional string representing the description of the movie.
  final String? description;

  @override
  String toString() {
    return 'Movie(url: $url, posterImage: $posterImage, description: $description)';
  }
}
