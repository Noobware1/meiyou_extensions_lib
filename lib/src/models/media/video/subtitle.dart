import 'package:meiyou_extenstions/src/models/media/video/subtitle_format.dart';

class Subtitle {
  const Subtitle({
    required this.url,
    this.format,
    this.langauge,
    this.headers,
  });
  final String url;
  final SubtitleFormat? format;
  final String? langauge;
  final Map<String, String>? headers;

  @override
  String toString() {
    return 'Subtitle(url: $url, format: $format, langauge: $langauge, headers: $headers)';
  }
}
