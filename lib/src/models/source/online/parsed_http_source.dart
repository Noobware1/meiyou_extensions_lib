import 'dart:async';

import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/okhttp_extensions.dart';
import 'package:meiyou_extensions_lib/src/html_extensions.dart';
import 'package:nice_dart/nice_dart.dart';
import 'package:okhttp/response.dart';

/// A simple implementation for sources from a website using html package.
abstract class ParsedHttpSource extends HttpSource {
  ParsedHttpSource();

  @override
  FutureOr<HomePage> homePageParse(HomePageRequest request, Response response) {
    return homePageFromDocument(request, response.body.document);
  }

  /// Parses the home page from the document.
  FutureOr<HomePage> homePageFromDocument(
      HomePageRequest request, Document document) {
    final homePageList =
        document.select(homePageListSelector(request)).mapList((element) {
      final list = element
          .select(homeMediaListSelector(request))
          .mapList((element) => homeMediaFromElement(request, element));

      return HomePageList(
        title: request.title,
        list: list,
        horizontalImages: request.horizontalImages,
      );
    });

    final hasNextPage =
        homeHasNextPageSelector(request)?.let(document.selectFirst) != null;

    return HomePage(
      items: homePageList,
      hasNextPage: hasNextPage,
    );
  }

  String homePageListSelector(HomePageRequest request) => 'html > body';

  String homeMediaListSelector(HomePageRequest request);

  String? homeHasNextPageSelector(HomePageRequest request);

  IMedia homeMediaFromElement(HomePageRequest request, Element element);

  @override
  FutureOr<IMedia> mediaDetailsParse(Response response) {
    return mediaDetailsFromDocument(response.body.document);
  }

  FutureOr<IMedia> mediaDetailsFromDocument(Document document);

  @override
  FutureOr<List<IMediaContent>> mediaContentListParse(Response response) {
    return mediaContentListParseFromDocument(response.body.document);
  }

  FutureOr<List<IMediaContent>> mediaContentListParseFromDocument(
      Document document) {
    return document
        .select(mediaContentListSelector())
        .mapList(mediaContentFromElement);
  }

  String mediaContentListSelector();

  IMediaContent mediaContentFromElement(Element element);

  @override
  FutureOr<List<MediaLink>> mediaLinkListParse(Response response) {
    return mediaLinkListParseFromDocument(response.body.document);
  }

  FutureOr<List<MediaLink>> mediaLinkListParseFromDocument(Document document) {
    return document
        .select(mediaLinkListSelector())
        .mapList(mediaLinkFromElement);
  }

  String mediaLinkListSelector();

  MediaLink mediaLinkFromElement(Element element);

  @override
  FutureOr<MediaAsset> mediaAssetParse(MediaLink link, Response response) {
    return mediaAssetFromDocument(link, response.body.document);
  }

  FutureOr<MediaAsset> mediaAssetFromDocument(
      MediaLink link, Document document);

  @override
  FutureOr<SearchPage> searchPageParse(Response response) {
    return searchPageFromDocument(response.body.document);
  }

  FutureOr<SearchPage> searchPageFromDocument(Document document) {
    final searchList = document
        .select(searchMediaListSelector())
        .mapList((element) => searchMediaFromElement(element));

    final hasNextPage =
        searchHasNextPageSelector()?.let(document.selectFirst) != null;

    return SearchPage(
      list: searchList,
      hasNextPage: hasNextPage,
    );
  }

  String searchMediaListSelector();

  String? searchHasNextPageSelector();

  IMedia searchMediaFromElement(Element element);
}
