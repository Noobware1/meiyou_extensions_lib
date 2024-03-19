// ignore_for_file: constant_identifier_names

import 'package:meiyou_extensions_lib/src/models/content.dart';
import 'package:meiyou_extensions_lib/src/models/content_category.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';
import 'package:nice_dart/nice_dart.dart';

class InfoPage {
  ///
  /// It includes the following properties:
  /// * `type`: A `ShowType` object representing the type of the show. Defaults to `ShowType.Others`.
  /// * `name`: A string representing the name of the show. Defaults to an empty string.
  /// * `url`: A string representing the URL of the show. Defaults to an empty string.
  /// * `otherTitles`: An optional list of strings representing other titles of the show.
  /// * `status`: An optional `ShowStatus` object representing the status of the show.
  /// * `bannerImage`: An optional string representing the URL of the banner image for the show.
  /// * `posterImage`: An optional string representing the URL of the poster image for the show.
  /// * `rating`: An optional double representing the rating of the show.
  /// * `description`: An optional string representing the description of the show.
  /// * `startDate`: An optional `DateTime` object representing the start date of the show.
  /// * `endDate`: An optional `DateTime` object representing the end date of the show.
  /// * `duration`: An optional integer representing the duration of the show in minutes.
  /// * `genres`: An optional list of strings representing the genres of the show.
  /// * `recommendations`: An optional list of `SearchResponse` objects representing recommended shows.
  /// * `externalIds`: An optional `ExternalId` object representing the external IDs of the show.
  /// * `characters`: An optional list of `Character` objects representing the actors in the show.
  /// * `mediaItem`: An optional `MediaItem` object representing the media item of the show.
  ///
  const InfoPage({
    this.category = ContentCategory.Others,
    this.name = '',
    this.url = '',
    this.otherTitles,
    this.status,
    this.bannerImage,
    this.posterImage,
    this.rating,
    this.description,
    this.startDate,
    this.duration,
    this.genres,
    this.recommendations,
    this.externalIds,
    this.characters,
    this.content,
  });

  final ContentCategory category;

  final String name;

  final String url;

  final List<String>? otherTitles;

  final Status? status;

  final String? bannerImage;

  final String? posterImage;

  final double? rating;

  final String? description;

  final DateTime? startDate;

  final Duration? duration;

  final List<String>? genres;

  final List<ContentItem>? recommendations;

  final List<ExternalId>? externalIds;

  final List<Character>? characters;

  final Content? content;

  factory InfoPage.withItem(
    ContentItem item, {
    ContentCategory? category,
    String? name,
    String? url,
    List<String>? otherTitles,
    Status? status,
    String? bannerImage,
    String? posterImage,
    double? rating,
    String? description,
    DateTime? startDate,
    Duration? duration,
    List<String>? genres,
    List<ContentItem>? recommendations,
    List<ExternalId>? externalIds,
    List<Character>? characters,
    Content? content,
  }) {
    return InfoPage(
      name: name ?? item.title,
      url: url ?? item.url,
      posterImage: posterImage ?? item.poster,
      category: category ?? item.category,
      description: description ?? item.description,
      genres: genres ?? item.generes,
      rating: rating ?? item.rating,
      status: status,
      bannerImage: bannerImage,
      startDate: startDate,
      duration: duration,
      otherTitles: otherTitles,
      recommendations: recommendations,
      externalIds: externalIds,
      characters: characters,
      content: content,
    );
  }

  InfoPage copyWith({
    ContentCategory? category,
    String? name,
    String? url,
    List<String>? otherTitles,
    Status? status,
    String? bannerImage,
    String? posterImage,
    double? rating,
    String? description,
    DateTime? startDate,
    Duration? duration,
    List<String>? genres,
    List<ContentItem>? recommendations,
    List<ExternalId>? externalIds,
    List<Character>? characters,
    Content? content,
  }) {
    return InfoPage(
      category: category ?? this.category,
      name: name ?? this.name,
      url: url ?? this.url,
      otherTitles: otherTitles ?? this.otherTitles,
      status: status ?? this.status,
      bannerImage: bannerImage ?? this.bannerImage,
      posterImage: posterImage ?? this.posterImage,
      rating: rating ?? this.rating,
      description: description ?? this.description,
      startDate: startDate ?? this.startDate,
      duration: duration ?? this.duration,
      genres: genres ?? this.genres,
      recommendations: recommendations ?? this.recommendations,
      externalIds: externalIds ?? this.externalIds,
      characters: characters ?? this.characters,
      content: content ?? this.content,
    );
  }

  @override
  String toString() {
    return 'InfoPage(category: $category, name: $name, url: $url, otherTitles: $otherTitles, status: $status, bannerImage: $bannerImage, posterImage: $posterImage, rating: $rating, description: $description, startDate: $startDate, duration: $duration, genres: $genres, recommendations: $recommendations, externalIds: $externalIds, characters: $characters, content: $content)';
  }
}

enum Status {
  Completed,
  Ongoing,
  Unknown;

  @override
  String toString() => super.toString().substringAfter('.');
}

class ExternalId {
  ExternalId({required this.name, required this.id});

  final String name;
  final String id;

  @override
  String toString() {
    return 'ExternalId(name: $name, id: $id)';
  }

  ExternalId copyWith({
    String? name,
    String? id,
  }) {
    return ExternalId(
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }
}

class Character {
  Character({
    this.name = '',
    this.image,
    this.role,
  });

  final String name;
  final String? image;
  final String? role;

  @override
  String toString() {
    return 'Character(name: $name, image: $image, role: $role)';
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
