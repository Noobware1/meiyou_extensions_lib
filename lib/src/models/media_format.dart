import 'package:nice_dart/nice_dart.dart';

enum MediaFormat {
  movie,
  animeMovie,
  tvSeries,
  cartoon,
  anime,
  ova,
  ona,
  // documentary,
  // asainDrama,
  // live,
  lightNovel,
  webNovel,
  novel,
  manga,
  webtoon,
  comic,
  others;

  String toDisplayString() {
    final input = name.captialize();
    final buffer = StringBuffer();
    for (var i = 0; i < input.length; i++) {
      final letter = input[i];
      if (letter.toUpperCase() == letter) {
        buffer.write(' $letter');
      } else {
        buffer.write(letter);
      }
    }
    return buffer.toString();
  }
}
