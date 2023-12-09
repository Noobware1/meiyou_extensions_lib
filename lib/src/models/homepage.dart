import 'package:meiyou_extenstions/src/models/search_response.dart';

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
