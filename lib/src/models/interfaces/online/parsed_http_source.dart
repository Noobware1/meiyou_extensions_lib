import 'package:nice_dart/nice_dart.dart';
import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/src/html_extensions.dart';
import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/online/http_source.dart';
import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';
import 'package:okhttp/response.dart';
import 'package:meiyou_extensions_lib/okhttp_extensions.dart';

abstract class ParsedHttpSource extends HttpSource {
  ParsedHttpSource(super.network);

  @override
  HomePage homePageParse(int page, HomePageRequest request, Response response) {
    final document = response.body.document;

    final data = document
        .select(homePageListDataSelector(page, request))
        .mapList((element) {
      return homePageListDataFromElement(page, request, element);
    });

    final hasNextPage = homePageHasNextPageSelector(page, request)
            ?.let((it) => document.select(it).firstOrNull) !=
        null;

    return HomePage(
      data: HomePageList(name: request.data, data: data),
      page: page,
      hasNextPage: hasNextPage,
    );
  }

  String homePageListDataSelector(
    int page,
    HomePageRequest request,
  );

  String? homePageHasNextPageSelector(
    int page,
    HomePageRequest request,
  );

  SearchResponse homePageListDataFromElement(
      int page, HomePageRequest request, Element element);

  @override
  List<SearchResponse> searchParse(Response response) {
    final document = response.body.document;

    return document.select(searchListSelector()).mapList((element) {
      return searchResponseFromElement(element);
    });
  }

  String searchListSelector();

  SearchResponse searchResponseFromElement(Element element);

  @override
  MediaDetails mediaDetailsParse(Response response) {
    final document = response.body.document;

    return mediaDetailsFromDocument(document);
  }

  MediaDetails mediaDetailsFromDocument(Document document);

  MediaItem? mediaItemFromDocument(Document document);

  @override
  MediaItem? mediaItemParse(SearchResponse searchResponse, Response response) {
    final document = response.body.document;

    return mediaItemFromDocument(document);
  }

  @override
  List<ExtractorLink> linksParse(Response response) {
    final document = response.body.document;

    return document.select(linksListSelector()).mapList((element) {
      return linkFromElement(element);
    });
  }

  String linksListSelector();

  ExtractorLink linkFromElement(Element element);

  @override
  Media? mediaParse(Response response) {
    final document = response.body.document;

    return mediaFromDocument(document);
  }

  Media? mediaFromDocument(Document document);
}
