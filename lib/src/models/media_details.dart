// ignore_for_file: constant_identifier_names

import 'package:meiyou_extensions_lib/src/models/media_format.dart';
import 'package:meiyou_extensions_lib/src/models/media_preview.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:nice_dart/nice_dart.dart';

class MediaDetails {
  ///
  /// It includes the following properties:
  /// * `format`: A `ShowType` object representing the format of the show. Defaults to `ShowType.Others`.
  /// * `title`: A string representing the title of the show. Defaults to an empty string.
  /// * `url`: A string representing the URL of the show. Defaults to an empty string.
  /// * `otherTitles`: An optional list of strings representing other titles of the show.
  /// * `status`: An optional `ShowStatus` object representing the status of the show.
  /// * `banner`: An optional string representing the URL of the banner image for the show.
  /// * `poster`: An optional string representing the URL of the poster image for the show.
  /// * `score`: An optional double representing the score of the show.
  /// * `description`: An optional string representing the description of the show.
  /// * `startDate`: An optional `DateTime` object representing the start date of the show.
  /// * `endDate`: An optional `DateTime` object representing the end date of the show.
  /// * `duration`: An optional integer representing the duration of the show in minutes.
  /// * `genres`: An optional list of strings representing the genres of the show.
  /// * `recommendations`: An optional list of `SearchResponse` objects representing recommended shows.
  /// * `characters`: An optional list of `Character` objects representing the actors in the show.
  /// * `content`: An optional `content` object representing the content of the show.
  ///
  const MediaDetails({
    this.format = MediaFormat.others,
    this.title = '',
    this.url = '',
    this.otherTitles,
    this.status,
    this.banner,
    this.poster,
    this.score,
    this.contentRating,
    this.description,
    this.startDate,
    this.duration,
    this.genres,
    this.recommendations,
    this.characters,
    this.content,
  });

  static MediaDetailsBuilder builder() => _MediaDetailsBuilder();

  MediaDetailsBuilder newBuilder() => _MediaDetailsBuilder(this);

  final String title;

  final MediaFormat format;

  final String url;

  final List<String>? otherTitles;

  final Status? status;

  final String? banner;

  final String? poster;

  final double? score;

  final String? contentRating;

  final String? description;

  final DateTime? startDate;

  final Duration? duration;

  final List<String>? genres;

  final List<MediaPreview>? recommendations;

  final List<Character>? characters;

  final MediaContent? content;

  factory MediaDetails.fromJson(Map<String, dynamic> json) {
    return MediaDetails(
      title: json['title'],
      format: MediaFormat.values.firstWhere((e) => e.name == json['format'],
          orElse: () => MediaFormat.others),
      url: json['url'],
      otherTitles: (json['otherTitles'] as List?)?.cast<String>(),
      status: Status.values.firstWhere((e) => e.name == json['status'],
          orElse: () => Status.unknown),
      banner: json['banner'],
      poster: json['poster'],
      score: json['score'],
      contentRating: json['contentRating'],
      description: json['description'],
      startDate: json['startDate'],
      duration: Duration(minutes: json['duration']),
      genres: (json['genres'] as List?)?.cast<String>(),
      recommendations: (json['recommendations'] as List?)
          ?.mapList((e) => MediaPreview.fromJson(e)),
      characters:
          (json['characters'] as List?)?.mapList((e) => Character.fromJson(e)),
      content: MediaContent.fromJson(json['content']),
    );
  }

  Map<String, dynamic> toJson() {
    assert(content is! LazyMediaContent, 'LazyMediaContent is not supported');
    return {
      'title': title,
      'format': format.name,
      'url': url,
      'otherTitles': otherTitles,
      'status': status?.name,
      'banner': banner,
      'poster': poster,
      'score': score,
      'contentRating': contentRating,
      'description': description,
      'startDate': startDate,
      'duration': duration?.inMinutes,
      'genres': genres,
      'recommendations': recommendations?.mapList((e) => e.toJson()),
      'characters': characters?.mapList((e) => e.toJson()),
      'content': content?.when(
        (movie) => movie.toJson(),
        (tvSeries) => tvSeries.toJson(),
        (episodicContent) => episodicContent.toJson(),
        (lazy) => null,
      ),
    };
  }
}

class _MediaDetailsBuilder extends MediaDetailsBuilder {
  _MediaDetailsBuilder([MediaDetails? mediaDetails]) : super(mediaDetails);
}

abstract class MediaDetailsBuilder {
  MediaDetailsBuilder([MediaDetails? mediaDetails]) {
    if (mediaDetails != null) {
      _title = mediaDetails.title;
      _format = mediaDetails.format;
      _url = mediaDetails.url;
      _otherTitles = mediaDetails.otherTitles;
      _status = mediaDetails.status;
      _banner = mediaDetails.banner;
      _poster = mediaDetails.poster;
      _score = mediaDetails.score;
      _contentRating = mediaDetails.contentRating;
      _description = mediaDetails.description;
      _startDate = mediaDetails.startDate;
      _duration = mediaDetails.duration;
      _genres = mediaDetails.genres;
      _recommendations = mediaDetails.recommendations;
      _characters = mediaDetails.characters;
      _content = mediaDetails.content;
    }
  }

  String? _title;

  MediaFormat? _format;

  String? _url;

  List<String>? _otherTitles;

  Status? _status;

  String? _banner;

  String? _poster;

  double? _score;

  String? _contentRating;

  String? _description;

  DateTime? _startDate;

  Duration? _duration;

  List<String>? _genres;

  List<MediaPreview>? _recommendations;

  List<Character>? _characters;

  MediaContent? _content;

  MediaDetailsBuilder title(String title) => apply((it) {
        it._title = title;
      });

  MediaDetailsBuilder format(MediaFormat format) => apply((it) {
        it._format = format;
      });

  MediaDetailsBuilder url(String url) => apply((it) {
        it._url = url;
      });

  MediaDetailsBuilder otherTitles(List<String>? otherTitles) => apply((it) {
        it._otherTitles = otherTitles;
      });

  MediaDetailsBuilder addOtherTitle(String? otherTitle) => apply((it) {
        if (otherTitle == null) return;
        if (it._otherTitles == null) {
          it._otherTitles!.add(otherTitle);
        } else {
          it._otherTitles = [otherTitle];
        }
      });

  MediaDetailsBuilder status(Status? status) => apply((it) {
        it._status = status;
      });

  MediaDetailsBuilder banner(String? banner) => apply((it) {
        it._banner = banner;
      });

  MediaDetailsBuilder poster(String? poster) => apply((it) {
        it._poster = poster;
      });

  MediaDetailsBuilder score(double? score) => apply((it) {
        it._score = score;
      });

  MediaDetailsBuilder contentRating(String? contentRating) => apply((it) {
        it._contentRating = contentRating;
      });

  MediaDetailsBuilder description(String? description) => apply((it) {
        it._description = description;
      });

  MediaDetailsBuilder startDate(DateTime? startDate) => apply((it) {
        it._startDate = startDate;
      });

  MediaDetailsBuilder duration(Duration? duration) => apply((it) {
        it._duration = duration;
      });

  MediaDetailsBuilder genres(List<String>? genres) => apply((it) {
        it._genres = genres;
      });

  MediaDetailsBuilder addGenre(String? genre) => apply((it) {
        if (genre == null) return;
        if (it._genres == null) {
          it._genres!.add(genre);
        } else {
          it._genres = [genre];
        }
      });

  MediaDetailsBuilder recommendations(List<MediaPreview>? recommendations) =>
      apply((it) {
        it._recommendations = recommendations;
      });

  MediaDetailsBuilder addRecommendation(MediaPreview? recommendation) =>
      apply((it) {
        if (recommendation == null) return;
        if (it._recommendations == null) {
          it._recommendations!.add(recommendation);
        } else {
          it._recommendations = [recommendation];
        }
      });

  MediaDetailsBuilder characters(List<Character>? characters) => apply((it) {
        it._characters = characters;
      });

  MediaDetailsBuilder addCharacter(Character? character) => apply((it) {
        if (character == null) return;
        if (it._characters == null) {
          it._characters!.add(character);
        } else {
          it._characters = [character];
        }
      });

  MediaDetailsBuilder content(MediaContent? content) => apply((it) {
        it._content = content;
      });

  MediaDetails build() {
    assert(_title != null, 'title is required');
    assert(_format != null, 'format is required');
    assert(_url != null, 'url is required');

    return MediaDetails(
      title: _title!,
      format: _format!,
      url: _url!,
      otherTitles: _otherTitles,
      status: _status,
      banner: _banner,
      poster: _poster,
      score: _score,
      contentRating: _contentRating,
      description: _description,
      startDate: _startDate,
      duration: _duration,
      genres: _genres,
      recommendations: _recommendations,
      characters: _characters,
      content: _content,
    );
  }
}

abstract interface class MediaContent {
  factory MediaContent.fromJson(Map<String, dynamic> json) {
    final int type = json['type'];
    switch (type) {
      case 0:
        return Movie.fromJson(json);
      case 1:
        return TvSeries.fromJson(json);
      case 2:
        return EpisodicContent.fromJson(json);
      default:
        throw UnimplementedError('Unknown content type: $type');
    }
  }

  T when<T>(
    T Function(Movie) movie,
    T Function(TvSeries) tvSeries,
    T Function(EpisodicContent) episodicContent,
    T Function(LazyMediaContent) lazy,
  );
}

class LazyMediaContent implements MediaContent {
  final Future<MediaContent> Function() _lazyCallback;

  LazyMediaContent(this._lazyCallback);

  Future<MediaContent> call() {
    return _lazyCallback();
  }

  @override
  T when<T>(
      T Function(Movie) movie,
      T Function(TvSeries) tvSeries,
      T Function(EpisodicContent) episodicContent,
      T Function(LazyMediaContent) lazy) {
    return lazy(this);
  }
}

class Movie implements MediaContent {
  final String playUrl;

  Movie({required this.playUrl});

  @override
  T when<T>(
      T Function(Movie) movie,
      T Function(TvSeries) tvSeries,
      T Function(EpisodicContent) episodicContent,
      T Function(LazyMediaContent) lazy) {
    return movie(this);
  }

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(playUrl: json['play_url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': 0,
      'play_url': playUrl,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }
}

class TvSeries implements MediaContent {
  final List<SeasonList> seasons;

  TvSeries({required this.seasons});

  @override
  T when<T>(
      T Function(Movie) movie,
      T Function(TvSeries) tvSeries,
      T Function(EpisodicContent) episodicContent,
      T Function(LazyMediaContent) lazy) {
    return tvSeries(this);
  }

  factory TvSeries.fromJson(Map<String, dynamic> json) {
    return TvSeries(
      seasons: json['seasons'].mapList((e) => SeasonList.fromJson(e)),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': 1,
      'seasons': seasons.mapList((e) => e.toJson()),
    };
  }
}

class EpisodicContent implements MediaContent {
  final List<Episode> episodes;

  EpisodicContent({required this.episodes});

  @override
  T when<T>(
      T Function(Movie) movie,
      T Function(TvSeries) tvSeries,
      T Function(EpisodicContent) episodicContent,
      T Function(LazyMediaContent) lazy) {
    return episodicContent(this);
  }

  factory EpisodicContent.fromJson(Map<String, dynamic> json) {
    return EpisodicContent(
      episodes: json['episodes'].mapList((e) => Episode.fromJson(e)),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': 2,
      'episodes': episodes.mapList((e) => e.toJson()),
    };
  }
}

class SeasonList {
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
}

class Season {
  final int? number;
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
    int? number,
    String? name,
  }) {
    return Season(
      number: number ?? this.number,
      name: name ?? this.name,
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
    int? number,
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
}

enum Status {
  completed,
  ongoing,
  unknown;

  String toDisplayString() => name.captialize();
}

class Character {
  const Character({
    this.name = '',
    this.image,
    this.role,
  });

  final String name;
  final String? image;
  final String? role;

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      name: json['name'],
      image: json['image'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
      'role': role,
    };
  }

  Character copyWith({
    String? name,
    String? image,
    String? role,
  }) {
    return Character(
      name: name ?? this.name,
      image: image ?? this.image,
      role: role ?? this.role,
    );
  }
}
