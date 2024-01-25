import 'dart:convert' as convert;

import 'package:dartx/dartx.dart';
import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/source.dart';
import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';

abstract class CatalogueSource extends Source {
  CatalogueSource();

  /// An ISO 639-1 compliant language code (two letters in lower case).
  @override
  abstract final String lang;

  Future<List<SearchResponse>> getSearch(int page, String query, FilterList filters);

  FilterList getFilterList();

  static Map<String, dynamic> toJson(Source source) {
    return buildMap((it) {
      it['id'] = source.id;
      it['name'] = source.name;
      it['lang'] = source.lang;
      it['supportsHomePage'] = source.supportsHomePage;
    });
  }

  static String jsonEncode(Source source) => toJson(source).toJson();

  factory CatalogueSource.fromJson(Map<String, dynamic> json) {
    return _EncodableCatalogueSource(
      id: json['id'] as int,
      name: json['name'] as String,
      lang: json['lang'] as String,
      supportsHomePage: json['supportsHomePage'] as bool,
    );
  }

  static CatalogueSource jsonDecode(String json) =>
      CatalogueSource.fromJson(convert.jsonDecode(json));
}

class _EncodableCatalogueSource implements CatalogueSource {
  _EncodableCatalogueSource({
    required this.name,
    required this.id,
    required this.lang,
    required this.supportsHomePage,
  });

  @override
  FilterList getFilterList() {
    // TODO: implement getFilterList
    throw UnimplementedError();
  }

  @override
  Future<List<ExtractorLink>> getLinks(String url) {
    // TODO: implement getLinks
    throw UnimplementedError();
  }

  @override
  Future<Media?> getMedia(ExtractorLink link) {
    // TODO: implement getMedia
    throw UnimplementedError();
  }

  @override
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse) {
    // TODO: implement getMediaDetails
    throw UnimplementedError();
  }

  @override
  // TODO: implement homePage
  Iterable<HomePageData> get homePageList => throw UnimplementedError();

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    // TODO: implement loadHomePage
    throw UnimplementedError();
  }

  @override
  final int id;

  @override
  final String lang;

  @override
  final String name;

  @override
  final bool supportsHomePage;

  @override
  Future<List<SearchResponse>> getSearch(int page, String query, FilterList filters) {
    // TODO: implement getSearch
    throw UnimplementedError();
  }
}
