import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/models/source/source.dart';

abstract class CatalogueSource extends Source {
  CatalogueSource();

  /// An ISO 639-1 compliant language code (two letters in lower case).
  @override
  // ignore: overridden_fields
  abstract final String lang;

  Future<SearchPage> getSearchPage(int page, String query, FilterList filters);

  FilterList getFilterList();
}
