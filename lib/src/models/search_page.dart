import 'package:equatable/equatable.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:nice_dart/nice_dart.dart';

class SearchPage extends Equatable {
  final List<ContentItem> items;
  final bool hasNextPage;

  const SearchPage({required this.hasNextPage, required this.items});

  factory SearchPage.fromJson(Map<String, dynamic> json) {
    return SearchPage(
      items: (json['items'] as List).mapList((e) => ContentItem.fromJson(e)),
      hasNextPage: json['hasNextPage'] as bool,
    );
  }

  SearchPage copyWith({
    List<ContentItem>? items,
    bool? hasNextPage,
  }) {
    return SearchPage(
      items: items ?? this.items,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items.mapList((e) => e.toJson()),
      'hasNextPage': hasNextPage,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [items, hasNextPage];
}
