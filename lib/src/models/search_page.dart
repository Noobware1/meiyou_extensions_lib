import 'package:meiyou_extensions_lib/src/models/content_item.dart';

class SearchPage {
  final List<ContentItem> items;
  final bool hasNextPage;

  const SearchPage({required this.hasNextPage, required this.items});

  SearchPage copyWith({
    List<ContentItem>? items,
    bool? hasNextPage,
  }) {
    return SearchPage(
      items: items ?? this.items,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }

  @override
  String toString() {
    return 'SearchPage(items: $items, hasNextPage: $hasNextPage)';
  }
}
