import 'package:meiyou_extensions_lib/src/models/media_format.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';

class MediaPreview {
  /// Creates a new `MediaPreview` instance.
  ///
  /// [title] is the string representing the title of the show.
  /// [url] is the string representing the URL of the show this will be used when trying to open in browser.
  /// [poster] is the string representing the URL of the poster image for the show.
  /// [format] is the `ShowType` object representing the format of the show.
  /// [description] is the optional string representing the description of the show.
  /// [generes] is the optional list of strings representing the genres of the show.
  /// [rating] is the optional number representing the rating of the show.

  const MediaPreview({
    this.title = '',
    this.url = '',
    this.poster,
    this.format = MediaFormat.others,
    this.description,
    this.generes,
    this.rating,
  });

  final String title;
  final String url;
  final String? poster;
  final MediaFormat format;
  final String? description;
  final List<String>? generes;
  final double? rating;

  MediaPreview copyWith({
    String? title,
    String? url,
    String? poster,
    MediaFormat? format,
    String? description,
    List<String>? generes,
    double? rating,
  }) {
    return MediaPreview(
      title: title ?? this.title,
      url: url ?? this.url,
      poster: poster ?? this.poster,
      description: description ?? this.description,
      generes: generes ?? this.generes,
      rating: rating ?? this.rating,
    );
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  factory MediaPreview.fromJson(Map<String, dynamic> json) {
    return MediaPreview(
      title: json['title'],
      url: json['url'],
      poster: json['poster'],
      format: MediaFormat.values.firstWhere((e) => e.name == json['format'],
          orElse: () => MediaFormat.others),
      description: json['description'],
      generes: (json['generes'] as List?)?.cast<String>(),
      rating: json['rating'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'url': url,
      'poster': poster,
      'format': format.name,
      'description': description,
      'generes': generes,
      'rating': rating,
    };
  }
}
