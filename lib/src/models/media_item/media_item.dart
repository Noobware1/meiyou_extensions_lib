// ignore_for_file: constant_identifier_names

/// An enumeration of the different types of media items.
enum MediaItemType {
  /// Represents a movie.
  Movie,
  
  /// Represents a TV series.
  TvSeries,
  
  /// Represents an anime.
  Anime,
  
  /// Represents a manga.
  Manga,
  
  /// Represents a novel.
  Novel,
}

/// A class that represents a media item.
/// 
/// The `MediaItem` class has the following properties:
/// * `type`: A `MediaItemType` value representing the type of the media item.
class MediaItem {
  
  /// Creates a new `MediaItem` object.
  /// 
  /// The constructor takes the following parameters:
  /// * `type`: A `MediaItemType` value representing the type of the media item.
  const MediaItem({required this.type});

  /// A `MediaItemType` value representing the type of the media item.
  final MediaItemType type;
}