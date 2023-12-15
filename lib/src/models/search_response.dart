import 'package:meiyou_extenstions/src/models/show_type.dart';

/// `SearchResponse` is a class that represents the response from a search operation.
///
/// It includes the following properties:
/// * `title`: A string representing the title of the show.
/// * `url`: A string representing the URL of the show.
/// * `poster`: A string representing the URL of the poster image for the show.
/// * `type`: A `ShowType` object representing the type of the show.
/// * `description`: An optional string representing the description of the show.
/// * `generes`: An optional list of strings representing the genres of the show.
/// * `rating`: An optional number representing the rating of the show.
/// * `current`: An optional number representing the current episode or season of the show.
/// * `total`: An optional number representing the total number of episodes or seasons of the show.
///
/// The `SearchResponse` class has a constructor that takes these properties.
class SearchResponse {
  /// Creates a new `SearchResponse` instance.
  ///
  /// [title] is the string representing the title of the show.
  /// [url] is the string representing the URL of the show this will be used when trying to open in browser.
  /// [poster] is the string representing the URL of the poster image for the show.
  /// [type] is the `ShowType` object representing the type of the show.
  /// [description] is the optional string representing the description of the show.
  /// [generes] is the optional list of strings representing the genres of the show.
  /// [rating] is the optional number representing the rating of the show.
  /// [current] is the optional number representing the current episode or season of the show.
  /// [total] is the optional number representing the total number of episodes or seasons of the show.

  const SearchResponse({
    required this.title,
    required this.url,
    required this.poster,
    required this.type,
    this.description,
    this.generes,
    this.rating,
    this.current,
    this.total,
  });

  final String title;
  final String url;
  final String poster;
  final ShowType type;
  final String? description;
  final List<String>? generes;
  final double? rating;
  final int? current;
  final int? total;

  @override
  String toString() {
    return 'SearchResponse(title: $title, url: $url, poster: $poster, type: $type, description: $description, generes: $generes, rating: $rating, current: $current, total: $total)';
  }
}
