// ignore_for_file: constant_identifier_names

import 'package:meiyou_extenstions/src/extenstions/string.dart';

enum ShowType {
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
  Others;

  @override
  String toString() {
    return super.toString().substringAfter('.');
  }
}
