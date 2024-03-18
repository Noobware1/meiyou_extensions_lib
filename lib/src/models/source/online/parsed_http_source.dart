import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/src/html_extensions.dart';
import 'package:meiyou_extensions_lib/src/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/info_page.dart';
import 'package:meiyou_extensions_lib/src/models/search_page.dart';
import 'package:meiyou_extensions_lib/src/models/source/online/http_source.dart';
import 'package:nice_dart/nice_dart.dart';
import 'package:okhttp/response.dart';
import 'package:meiyou_extensions_lib/src/okhttp_extensions.dart';

abstract class ParsedHttpSource extends HttpSource {
  ParsedHttpSource();

  @override
  HomePage homePageParse(int page, HomePageRequest request, Response response) {
    final document = response.body.document;
    final data =
        document.select(homePageDataSelector(page, request)).mapList((element) {
      return homePageDataFromElement(page, request, element);
    });

    final hasNextPage =
        homePageNextPageSelector(page, request)?.let(document.selectFirst) !=
            null;

    return HomePage(
      data: data,
      hasNextPage: hasNextPage,
    );
  }

  String homePageDataSelector(int page, HomePageRequest request);

  String? homePageNextPageSelector(int page, HomePageRequest request);

  HomePageData homePageDataFromElement(
      int page, HomePageRequest request, Element element);

  @override
  SearchPage searchPageParse(
      int page, String query, FilterList filters, Response response) {
    final document = response.body.document;
    final entries = document
        .select(searchPageItemSelector(page, query, filters))
        .mapList((element) =>
            searchPageItemFromElement(page, query, filters, element));

    final hasNextPage = searchPageNextPageSelector(page, query, filters)?.let(
          document.selectFirst,
        ) !=
        null;

    return SearchPage(
      entries: entries,
      hasNextPage: hasNextPage,
    );
  }

  String searchPageItemSelector(int page, String query, FilterList filters);

  String? searchPageNextPageSelector(
      int page, String query, FilterList filters);

  ContentItem searchPageItemFromElement(
    int page,
    String query,
    FilterList filters,
    Element element,
  );

  @override
  Future<InfoPage> infoPageParse(ContentItem contentItem, Response response) {
    return infoPageFromDocument(response.body.document);
  }

  Future<InfoPage> infoPageFromDocument(Document document);

  @override
  List<ContentDataLink> contentDataLinksParse(String url, Response response) {
    return response.body.document
        .select(contentDataLinkSelector(url))
        .mapList((element) => contentDataLinkFromElement(url, element));
  }

  String contentDataLinkSelector(String url);

  ContentDataLink contentDataLinkFromElement(String url, Element element);

  @override
  Future<ContentData> contentDataParse(
      ContentDataLink link, Response response) {
    return contentDataFromDocument(link, response.body.document);
  }

  Future<ContentData> contentDataFromDocument(
      ContentDataLink link, Document document) {
    throw UnsupportedError('Not implemented');
  }
}
