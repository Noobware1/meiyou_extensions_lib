import 'package:meiyou_extensions_lib/src/models/content_item.dart';

class SearchPage {
  final List<ContentItem> entries;
  final bool hasNextPage;

  const SearchPage({required this.hasNextPage, required this.entries});

  SearchPage copyWith({
    List<ContentItem>? entries,
    bool? hasNextPage,
  }) {
    return SearchPage(
      entries: entries ?? this.entries,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }

  @override
  String toString() {
    return 'SearchPage(entries: $entries, hasNextPage: $hasNextPage)';
  }
}
