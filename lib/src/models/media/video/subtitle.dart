import 'package:meiyou_extensions_lib/src/models/media/video/subtitle_format.dart';

/// A class that represents a subtitle.
///
/// The `Subtitle` class has the following properties:
/// * `url`: A string representing the URL of the subtitle.
/// * `format`: A `SubtitleFormat` value representing the format of the subtitle.
/// * `language`: An optional string representing the language of the subtitle.
/// * `headers`: An optional map of strings representing the headers of the subtitle.
class Subtitle {
  Subtitle({
    this.url = '',
    this.format,
    this.language,
    this.headers,
  });

  /// A string representing the URL of the subtitle.
  String url;

  /// A `SubtitleFormat` value representing the format of the subtitle.
  SubtitleFormat? format;

  /// An optional string representing the language of the subtitle.
  String? language;

  /// An optional map of strings representing the headers of the subtitle.
  Map<String, String>? headers;

  /// A `Subtitle` object representing no subtitle.
  static final noSubtitle =
      Subtitle(url: '', format: null, language: 'No Subtitle', headers: null);

  @override
  String toString() {
    return 'Subtitle(url: $url, format: $format, language: $language, headers: $headers)';
  }
}
