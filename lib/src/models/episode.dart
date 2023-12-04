class Episode {
  const Episode(
      {required this.data,
      this.name,
      this.season,
      this.episode,
      this.posterImage,
      this.description,
      this.isFiller,
      this.date});

  final String data;
  final String? name;
  final int? season;
  final num? episode;
  final String? posterImage;
  final bool? isFiller;
  final String? description;
  final DateTime? date;
}
