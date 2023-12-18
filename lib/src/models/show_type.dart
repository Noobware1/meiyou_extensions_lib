// ignore_for_file: constant_identifier_names

import 'package:meiyou_extensions_lib/src/extenstions/string.dart';

/// `ShowType` is an enumeration that represents different types of shows.
///
/// It includes the following types:
/// * `Movie`: Represents a standard movie.
/// * `AnimeMovie`: Represents an anime movie.
/// * `TvSeries`: Represents a TV series.
/// * `Cartoon`: Represents a cartoon show.
/// * `Anime`: Represents an anime show.
/// * `Ova`: Represents an Original Video Animation (OVA).
/// * `Ona`: Represents an Original Net Animation (ONA).
/// * `Documentary`: Represents a documentary.
/// * `AsainDrama`: Represents an Asian drama show.
/// * `Live`: Represents a live show.
/// * `Others`: Represents other types of shows not covered by the above categories.
///
/// Each `ShowType` can be converted to a string using the `toString` method, which overrides the default `toString` method
/// to provide a more readable string representation of the `ShowType`.
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
