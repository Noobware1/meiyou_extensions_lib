// ignore_for_file: constant_identifier_names

enum MediaItemType {
  Movie,
  TvSeries,
  Anime,
  Manga,
  Novel,
}

class MediaItem {
  const MediaItem({required this.type});

  final MediaItemType type;
}
