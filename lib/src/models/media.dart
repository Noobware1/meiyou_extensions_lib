// ignore_for_file: constant_identifier_names

import 'package:meiyou_extensions_lib/src/models/media_format.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';

class IMedia {
  IMedia({
    this.format = MediaFormat.others,
    this.title = '',
    this.url = '',
    this.otherTitles,
    this.status,
    this.banner,
    this.poster,
    this.score,
    this.description,
    this.genres,
    this.initalized = false,
  });

  String title;

  MediaFormat format;

  String url;

  List<String>? otherTitles;

  Status? status;

  String? banner;

  String? poster;

  double? score;

  String? description;

  List<String>? genres;

  bool initalized;

  void addOtherTitle(String? title) {
    if (title != null) {
      otherTitles ??= [];
      otherTitles!.add(title);
    }
  }

  void addGenre(String? genre) {
    if (genre != null) {
      genres ??= [];
      genres!.add(genre);
    }
  }

  factory IMedia.fromJson(Map<String, dynamic> json) {
    return IMedia(
      title: json['title'],
      format: MediaFormat.values.firstWhere((e) => e.name == json['format'],
          orElse: () => MediaFormat.others),
      url: json['url'],
      otherTitles: (json['other_titles'] as List?)?.cast<String>(),
      status: Status.values.firstWhere((e) => e.name == json['status'],
          orElse: () => Status.unknown),
      banner: json['banner'],
      poster: json['poster'],
      score: json['score'],
      description: json['description'],
      genres: (json['genres'] as List?)?.cast<String>(),
      initalized: (json['initalized'] ?? false),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'format': format.name,
      'url': url,
      'other_titles': otherTitles,
      'status': status?.name,
      'banner': banner,
      'poster': poster,
      'score': score,
      'description': description,
      'genres': genres,
      'initalized': initalized,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }
}

enum Status {
  completed,
  ongoing,
  unknown,
}
