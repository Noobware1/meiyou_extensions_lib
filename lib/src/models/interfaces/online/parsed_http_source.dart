import 'package:dartx/dartx.dart';
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

    final data = document.select(homePageListDataSelector()).mapList((element) {
      return homePageListDataFromElement(element);
    });

    final hasNextPage = homePageHasNextPageSelector()
            ?.let((it) => document.select(it).firstOrNull) !=
        null;

    return HomePage(
      data: HomePageList(name: request.data, data: data),
      page: page,
      hasNextPage: hasNextPage,
    );
  }

  String homePageListDataSelector();

  String? homePageHasNextPageSelector();

  SearchResponse homePageListDataFromElement(Element element);

  @override
  List<SearchResponse> searchParse(Response response) {
    final document = response.body.document;

    return document.select(searchListDataSelector()).mapList((element) {
      return searchResponseFromElement(element);
    });
  }

  String searchListDataSelector();

  SearchResponse searchResponseFromElement(Element element);

  @override
  MediaDetails mediaDetailsParse(Response response) {
    final document = response.body.document;

    return mediaDetailsFromDocument(document);
  }

  MediaDetails mediaDetailsFromDocument(Document document);

  MediaItem? mediaItemFromElement(Element element);

  @override
  List<ExtractorLink> linksParse(Response response) {
    final document = response.body.document;

    return document.select(linksListDataSelector()).mapList((element) {
      return linkFromElement(element);
    });
  }

  String linksListDataSelector();

  ExtractorLink linkFromElement(Element element);

  @override
  Media? mediaParse(Response response) {
    final document = response.body.document;

    return mediaFromDocument(document);
  }

  Media? mediaFromDocument(Document document);
}
