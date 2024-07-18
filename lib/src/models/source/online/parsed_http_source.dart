import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/src/html_extensions.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_content.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/models/media_preview.dart';
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
      return fullHomePageParse(request, document);
    } else {
      return singleHomePageParse(request, document);
    }
  }

  String? homeNextPageSelector(HomePageRequest request);

  String homeListSelector(HomePageRequest request) {
    throw UnsupportedError('Not implemented');
  }

  HomePageList homeListFromElement(HomePageRequest request, Element element) {
    throw UnsupportedError('Not implemented');
  }

  HomePage fullHomePageParse(HomePageRequest request, Document document) {
    final items = document.select(homeListSelector(request)).mapList((element) {
      return homeListFromElement(request, element);
    });

    final hasNextPage =
        homeNextPageSelector(request)?.let(document.selectFirst) != null;

    return HomePage.list(
      items: items,
      hasNextPage: hasNextPage,
    );
  }

  String homePageItemSelector(HomePageRequest request) {
    throw UnsupportedError('Not implemented');
  }

  MediaPreview homePageItemFromElement(
      HomePageRequest request, Element element) {
    throw UnsupportedError('Not implemented');
  }

  HomePage singleHomePageParse(HomePageRequest request, Document document) {
    final list =
        document.select(homePageItemSelector(request)).mapList((element) {
      return homePageItemFromElement(request, element);
    });

    final hasNextPage =
        homeNextPageSelector(request)?.let(document.selectFirst) != null;

    return HomePage.fromRequest(
      list: list,
      reqeust: request,
      hasNextPage: hasNextPage,
    );
  }

  @override
  SearchPage searchPageParse(Response response) {
    final document = response.body.document;
    final list = document
        .select(searchItemSelector())
        .mapList((element) => searchItemFromElement(element));

    final hasNextPage = searchNextPageSelector()?.let(
          document.selectFirst,
        ) !=
        null;

    return SearchPage(
      list: list,
      hasNextPage: hasNextPage,
    );
  }

  String searchItemSelector();

  String? searchNextPageSelector();

  MediaPreview searchItemFromElement(Element element);

  @override
  MediaDetails mediaDetailsParse(Response response) {
    return mediaDetailsFromDocument(response.body.document);
  }

  MediaDetails mediaDetailsFromDocument(Document document);

  @override
  MediaContent mediaContentParse(Response response) {
    return mediaContentFromDocument(response.body.document);
  }

  MediaContent mediaContentFromDocument(Document document);

  @override
  List<MediaLink> medialinksParse(Response response) {
    return response.body.document
        .select(mediaLinkSelector())
        .mapList((element) => mediaLinkFromElement(element));
  }

  String mediaLinkSelector();

  MediaLink mediaLinkFromElement(Element element);

  @override
  Media? mediaParse(Response response) {
    return mediaFromDocument(response.body.document);
  }

  Media mediaFromDocument(Document document) {
    throw UnsupportedError('Not implemented');
  }
}
