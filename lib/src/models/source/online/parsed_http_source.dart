import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/src/html_extensions.dart';
import 'package:meiyou_extensions_lib/src/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/models/content_data_link.dart';
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
  HomePage homePageParse(HomePageRequest request, Response response) {
    final document = response.body.document;

    if (request.hasFullData) {
      return fullHomePage(request, document);
    } else {
      return singleHomePage(request, document);
    }
  }

  String? homePageNextPageSelector(HomePageRequest request);

  String homePageDataSelector(HomePageRequest request) {
    throw UnsupportedError('Not implemented');
  }

  HomePageData homePageDataFromElement(
      HomePageRequest request, Element element) {
    throw UnsupportedError('Not implemented');
  }

  HomePage fullHomePage(HomePageRequest request, Document document) {
    final data =
        document.select(homePageDataSelector(request)).mapList((element) {
      return homePageDataFromElement(request, element);
    });

    final hasNextPage =
        homePageNextPageSelector(request)?.let(document.selectFirst) != null;

    return HomePage.list(
      data: data,
      hasNextPage: hasNextPage,
    );
  }

  String homePageItemSelector(HomePageRequest request) {
    throw UnsupportedError('Not implemented');
  }

  ContentItem homePageItemFromElement(
      HomePageRequest request, Element element) {
    throw UnsupportedError('Not implemented');
  }

  HomePage singleHomePage(HomePageRequest request, Document document) {
    final items =
        document.select(homePageItemSelector(request)).mapList((element) {
      return homePageItemFromElement(request, element);
    });

    final hasNextPage =
        homePageNextPageSelector(request)?.let(document.selectFirst) != null;

    return HomePage.fromRequest(
      items: items,
      reqeust: request,
      hasNextPage: hasNextPage,
    );
  }

  @override
  SearchPage searchPageParse(Response response) {
    final document = response.body.document;
    final items = document
        .select(searchPageItemSelector())
        .mapList((element) => searchPageItemFromElement(element));

    final hasNextPage = searchPageNextPageSelector()?.let(
          document.selectFirst,
        ) !=
        null;

    return SearchPage(
      items: items,
      hasNextPage: hasNextPage,
    );
  }

  String searchPageItemSelector();

  String? searchPageNextPageSelector();

  ContentItem searchPageItemFromElement(Element element);

  @override
  Future<InfoPage> infoPageParse(Response response) {
    return infoPageFromDocument(response.body.document);
  }

  Future<InfoPage> infoPageFromDocument(Document document);

  @override
  List<ContentDataLink> contentDataLinksParse(Response response) {
    return response.body.document
        .select(contentDataLinkSelector())
        .mapList((element) => contentDataLinkFromElement(element));
  }

  String contentDataLinkSelector();

  ContentDataLink contentDataLinkFromElement(Element element);

  @override
  Future<ContentData> contentDataParse(Response response) {
    return contentDataFromDocument(response.body.document);
  }

  Future<ContentData> contentDataFromDocument(Document document) {
    throw UnsupportedError('Not implemented');
  }
}
