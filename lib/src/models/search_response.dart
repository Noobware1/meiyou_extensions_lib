import 'package:meiyou_extenstions/src/models/show_type.dart';

class SearchResponse {
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
}
