import 'package:equatable/equatable.dart';
import 'package:meiyou_extensions_lib/src/models/content_category.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:nice_dart/nice_dart.dart';

class ContentItem extends Equatable {
  /// Creates a new `ContentItem` instance.
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

  const ContentItem({
    this.title = '',
    this.url = '',
    this.poster = '',
    this.category = ContentCategory.Others,
    this.description,
    this.generes,
    this.rating,
    this.currentCount,
    this.totalCount,
  });

  final String title;
  final String url;
  final String poster;
  final ContentCategory category;
  final String? description;
  final List<String>? generes;
  final double? rating;
  final int? currentCount;
  final int? totalCount;

  ContentItem copyWith({
    String? title,
    String? url,
    String? poster,
    ContentCategory? category,
    String? description,
    List<String>? generes,
    double? rating,
    int? currentCount,
    int? totalCount,
  }) {
    return ContentItem(
      title: title ?? this.title,
      url: url ?? this.url,
      poster: poster ?? this.poster,
      category: category ?? this.category,
      description: description ?? this.description,
      generes: generes ?? this.generes,
      rating: rating ?? this.rating,
      currentCount: currentCount ?? this.currentCount,
      totalCount: totalCount ?? this.totalCount,
    );
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [
        title,
        url,
        poster,
        category,
        description,
        generes,
        rating,
        currentCount,
        totalCount
      ];

  factory ContentItem.fromJson(Map<String, dynamic> json) {
    return ContentItem(
      title: json['title'],
      url: json['url'],
      poster: json['poster'],
      category: ContentCategory.values[json['category']],
      description: json['description'],
      generes: (json['generes'] as List).mapList((e) => e.toString()),
      rating: json['rating'],
      currentCount: json['currentCount'],
      totalCount: json['totalCount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'url': url,
      'poster': poster,
      'category': category.index,
      'description': description,
      'generes': generes,
      'rating': rating,
      'currentCount': currentCount,
      'totalCount': totalCount,
    };
  }
}
