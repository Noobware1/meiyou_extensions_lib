
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/source.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';

abstract class CatalogueSource extends Source {
  CatalogueSource();

  /// An ISO 639-1 compliant language code (two letters in lower case).
  @override
  abstract final String lang;

  Future<List<SearchResponse>> getSearch(
      int page, String query, FilterList filters);

  FilterList getFilterList();
}
