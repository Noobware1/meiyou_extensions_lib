import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:nice_dart/nice_dart.dart';

abstract interface class MediaContent {
  Map<String, dynamic> toJson();

  factory MediaContent.fromJson(Map<String, dynamic> json) {
    final MediaFormat? format = MediaFormat.values.getOrNull(json['id'] as int);
    switch (format) {
      case MediaFormat.movie:
        return Movie.fromJson(json);
      case MediaFormat.tvSeries:
        return TvSeries.fromJson(json);
      case MediaFormat.anime:
        return Anime.fromJson(json);
      default:
        throw UnimplementedError('Unknown MediaFormat $format');
    }
  }
}

class Movie implements MediaContent {
  final String playUrl;

  Movie({required this.playUrl});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(playUrl: json['play_url']);
  }

  static int id = MediaFormat.movie.index;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'play_url': playUrl,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }
}

class TvSeries implements MediaContent {
  final List<Season> seasons;

  TvSeries({required this.seasons});

  factory TvSeries.fromJson(Map<String, dynamic> json) {
    return TvSeries(
      seasons: (json['seasons'] as List).mapList((e) => Season.fromJson(e)),
    );
  }

  static int id = MediaFormat.tvSeries.index;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'seasons': seasons.mapList((e) => e.toJson()),
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }
}

class Anime implements MediaContent {
  final List<Episode> episodes;

  Anime({required this.episodes});

  static int id = MediaFormat.anime.index;

  factory Anime.fromJson(Map<String, dynamic> json) {
    return Anime(
      episodes: (json['episodes'] as List).mapList((e) => Episode.fromJson(e)),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'episodes': episodes.mapList((e) => e.toJson()),
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }
}

class Season {
  final int? number;
  final List<Episode> episodes;

  Season({this.number, required this.episodes});

  factory Season.fromJson(Map<String, dynamic> json) {
    return Season(
      number: json['number'],
      episodes: (json['episodes'] as List).mapList((e) => Episode.fromJson(e)),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'episodes': episodes,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  Season copyWith({
    int? number,
    List<Episode>? episodes,
  }) {
    return Season(
      number: number ?? this.number,
      episodes: episodes ?? this.episodes,
    );
  }
}

class Episode {
  final int? number;
  final String data;
  final String? name;
  final String? image;
  final bool? isFiller;
  final String? description;

  const Episode({
    this.number,
    this.name,
    required this.data,
    this.image,
    this.isFiller,
    this.description,
  });

  factory Episode.fromJson(Map<String, dynamic> json) {
    return Episode(
      data: json['data'],
      name: json['name'],
      number: json['number'],
      image: json['image'],
      isFiller: json['isFiller'],
      description: json['description'],
    );
  }

  Episode copyWith({
    String? data,
    String? name,
    int? number,
    String? image,
    bool? isFiller,
    String? description,
  }) {
    return Episode(
      data: data ?? this.data,
      name: name ?? this.name,
      number: number ?? this.number,
      image: image ?? this.image,
      isFiller: isFiller ?? this.isFiller,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'name': name,
      'number': number,
      'image': image,
      'isFiller': isFiller,
      'description': description,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }
}
