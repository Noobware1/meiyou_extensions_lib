enum ContentCategory {
  Movie,
  AnimeMovie,
  TvSeries,
  Cartoon,
  Anime,
  Ova,
  Ona,
  Documentary,
  AsainDrama,
  Live,
  LightNovel,
  WebNovel,
  Novel,
  Manga,
  Webtoon,
  Comic,
  Others;

  String toDisplayString() {
    final input = name;
    final buffer = StringBuffer();
    for (var i = 0; i < input.length; i++) {
      if (input[i].toUpperCase() == input[i]) {
        buffer.write(' ${input[i]}');
      } else {
        buffer.write(input[i]);
      }
    }
    return buffer.toString();
  }
}
