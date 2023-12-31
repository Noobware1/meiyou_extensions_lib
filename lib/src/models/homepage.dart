import 'package:meiyou_extensions_lib/src/models/search_response.dart';

/// `HomePageData` is a class that represents the data for a home page.
///
/// It includes the following properties:
/// * `name`: A string representing the name of the home page.
/// * `data`: A string representing the data of the home page.
/// * `horizontalImages`: A boolean indicating whether the images on the home page are horizontal.
///
/// The `HomePageData` class has a constructor that takes these properties.

class HomePageData {
  final String name;
  final String data;
  final bool horizontalImages;

  HomePageData(
      {required this.name, required this.data, required this.horizontalImages});

  static Iterable<HomePageData> fromMap(Map<String, String> map,
      [bool horizontalImages = false]) {
    return map.entries.map((e) => HomePageData(
        name: e.key, data: e.value, horizontalImages: horizontalImages));
  }

  @override
  String toString() {
    return 'HomePageData(name: $name, data: $data, horizontalImages: $horizontalImages)';
  }
}

/// `HomePageRequest` is a class that represents a request for a home page.
///
/// It includes the following properties:
/// * `name`: A string representing the name of the home page.
/// * `data`: A string representing the data of the home page.
/// * `horizontalImages`: A boolean indicating whether the images on the home page are horizontal.
///
/// The `HomePageRequest` class has a constructor that takes these properties.
class HomePageRequest {
  final String name;
  final String data;
  final bool horizontalImages;

  HomePageRequest(
      {required this.name, required this.data, required this.horizontalImages});

  @override
  String toString() {
    return 'HomePageRequest(name: $name, data: $data, horizontalImages: $horizontalImages)';
  }
}

/// `HomePage` is a class that represents a home page.
/// * `data`: A `HomePageList` object representing the data of the home page.
/// * `page`: An integer representing the page of the home page.
/// * `hasNextPage`: A boolean indicating whether the home page has a next page.
class HomePage {
  final HomePageList data;
  final int page;
  final bool? hasNextPage;

  HomePage({required this.data, required this.page, this.hasNextPage});

  @override
  String toString() {
    return 'HomePage(data: $data, page: $page, hasNextPage: $hasNextPage)';
  }
}

/// `HomePageList` is a class that represents a list of home pages.
///   * `name`: A string representing the name of the home page.
///   * `data`: A list of `SearchResponse` objects representing the data of the home page.
///   * `loadMoreData`: A function that loads more data for the home page.

class HomePageList {
  final String name;
  final List<SearchResponse> data;
  // final Future<List<SearchResponse>> Function(int page)? loadMoreData;

  HomePageList({
    required this.name,
    required this.data,
    //  this.loadMoreData
  });

  @override
  String toString() {
    return 'HomePageList(name: $name, data: $data)';
  }
}
