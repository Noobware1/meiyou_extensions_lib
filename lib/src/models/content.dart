/// A class that represents a media item.
///
/// The `Content` class has the following properties:
/// * `type`: A `Content` value representing the type of the media item.
abstract interface class Content {}

extension GetContentType on Content {
  bool get isMovie => this is Movie;

  bool get isSeries => this is Series;

  bool get isAnime => this is Anime;

  bool get isLazy => this is LazyContent;
}

class LazyContent implements Content {
  final Future<Content> Function() load;

  LazyContent({required this.load});

  @override
  String toString() {
    return 'LazyContent(load: $load)';
  }
}

class Movie implements Content {
  Movie({required this.url, this.image, this.description});

  /// A string representing the URL of the movie.
  final String url;

  /// An optional string representing the URL of the movie's poster image.
  final String? image;

  /// An optional string representing the description of the movie.
  final String? description;

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
    return 'Movie(url: $url, image: $image, description: $description)';
  }
}

class Series implements Content {
  final List<SeasonList> data;

  Series(this.data);

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
  String toString() {
    return 'Series(data: $data)';
  }
}

class Anime implements Content {
  final List<Episode> episodes;

  Anime(this.episodes);

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
  String toString() {
    return 'Anime(episodes: $episodes)';
  }
}

class SeasonList {
  final Season season;
  final List<Episode> episodes;

  SeasonList({required this.season, required this.episodes});

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
    return 'SeasonList(season: $season, episodes: $episodes)';
  }
}

class Season {
  final num? number;
  final String? name;

  Season({this.number, this.name});

  @override
  String toString() {
    return 'Season(number: $number, name: $name)';
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
}

class Episode {
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

  @override
  String toString() {
    return 'Episode(data: $data, name: $name, number: $number, image: $image, isFiller: $isFiller, description: $description, date: $date)';
  }
}
