import 'package:equatable/equatable.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:nice_dart/nice_dart.dart';

/// A class that represents a media item.
///
/// The `Content` class has the following properties:
/// * `type`: A `Content` value representing the type of the media item.
abstract interface class Content {
  factory Content.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'movie':
        return Movie.fromJson(json);
      case 'series':
        return Series.fromJson(json);
      case 'anime':
        return Anime.fromJson(json);
      default:
        throw UnimplementedError('Unknown content type: ${json['type']}');
    }
  }

  Map<String, dynamic> toJson();
}

extension GetContentType on Content {
  bool get isMovie => this is Movie;

  bool get isSeries => this is Series;

  bool get isAnime => this is Anime;

  bool get isLazy => this is LazyContent;
}

class LazyContent extends Equatable implements Content {
  final Future<Content> Function() load;

  LazyContent({required this.load});

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [load];

  @override
  Map<String, dynamic> toJson() {
    return {
      'load': load.toString(),
    };
  }
}

class Movie extends Equatable implements Content {
  Movie({required this.url, this.image, this.description});

  /// A string representing the URL of the movie.
  final String url;

  /// An optional string representing the URL of the movie's poster image.
  final String? image;

  /// An optional string representing the description of the movie.
  final String? description;

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      url: json['url'],
      image: json['image'],
      description: json['description'],
    );
  }

  static LazyContent lazy(Future<Movie> Function() builder) {
    return LazyContent(load: builder);
  }

  Movie copyWith({
    String? url,
    String? image,
    String? description,
  }) {
    return Movie(
      url: url ?? this.url,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [url, image, description];

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'movie',
      'url': url,
      'image': image,
      'description': description,
    };
  }
}

class Series extends Equatable implements Content {
  final List<SeasonList> data;

  const Series(this.data);

  factory Series.fromJson(Map<String, dynamic> json) {
    return Series(
      json['data'].mapList((e) => SeasonList.fromJson(e)),
    );
  }

  static LazyContent lazy(Future<Series> Function() builder) {
    return LazyContent(load: builder);
  }

  Series copyWith({
    List<SeasonList>? data,
  }) {
    return Series(
      data ?? this.data,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'series',
      'data': data.mapList((e) => e.toJson()),
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [data];
}

class Anime extends Equatable implements Content {
  final List<Episode> episodes;

  Anime(this.episodes);

  factory Anime.fromJson(Map<String, dynamic> json) {
    return Anime(
      json['episodes'].mapList((e) => Episode.fromJson(e)),
    );
  }

  static LazyContent lazy(Future<Anime> Function() builder) {
    return LazyContent(load: builder);
  }

  Anime copyWith({
    List<Episode>? episodes,
  }) {
    return Anime(
      episodes ?? this.episodes,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'anime',
      'episodes': episodes.mapList((e) => e.toJson()),
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [episodes];
}

class SeasonList extends Equatable {
  final Season season;
  final List<Episode> episodes;

  SeasonList({required this.season, required this.episodes});

  factory SeasonList.fromJson(Map<String, dynamic> json) {
    return SeasonList(
      season: Season.fromJson(json['season']),
      episodes: json['episodes'].mapList((e) => Episode.fromJson(e)),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'season': season.toJson(),
      'episodes': episodes.mapList((e) => e.toJson()),
    };
  }

  SeasonList copyWith({
    Season? season,
    List<Episode>? episodes,
  }) {
    return SeasonList(
      season: season ?? this.season,
      episodes: episodes ?? this.episodes,
    );
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [season, episodes];
}

class Season extends Equatable {
  final num? number;
  final String? name;

  Season({this.number, this.name});

  factory Season.fromJson(Map<String, dynamic> json) {
    return Season(
      number: json['number'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'name': name,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  Season copyWith({
    num? number,
    String? name,
  }) {
    return Season(
      number: number ?? this.number,
      name: name ?? this.name,
    );
  }

  @override
  List<Object?> get props => [number, name];
}

class Episode extends Equatable {
  final String data;
  final String? name;
  final num? number;
  final String? image;
  final bool? isFiller;
  final String? description;
  final DateTime? date;

  const Episode({
    this.number,
    this.name,
    required this.data,
    this.image,
    this.isFiller,
    this.description,
    this.date,
  });

  factory Episode.fromJson(Map<String, dynamic> json) {
    return Episode(
      data: json['data'],
      name: json['name'],
      number: json['number'],
      image: json['image'],
      isFiller: json['isFiller'],
      description: json['description'],
      date: json['date'],
    );
  }

  Episode copyWith({
    String? data,
    String? name,
    num? number,
    String? image,
    bool? isFiller,
    String? description,
    DateTime? date,
  }) {
    return Episode(
      data: data ?? this.data,
      name: name ?? this.name,
      number: number ?? this.number,
      image: image ?? this.image,
      isFiller: isFiller ?? this.isFiller,
      description: description ?? this.description,
      date: date ?? this.date,
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
      'date': date,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props =>
      [data, name, number, image, isFiller, description, date];
}
