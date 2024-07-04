import 'package:meiyou_extensions_lib/src/models/media_preview.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:nice_dart/nice_dart.dart';

class HomePage {
  final List<HomePageData> items;
  final bool hasNextPage;

  const HomePage({
    required this.items,
    required this.hasNextPage,
  });

  HomePage operator +(HomePage other) {
    final map = Map.fromEntries(other.items.map((e) => MapEntry(e.title, e)));

    for (var element in items) {
      map[element.title]?.let((it) {
        element.list.addAll(it.list);
        map.remove(element.title);
      });
    }

    items.addAll(map.values);

    return HomePage(
      items: items,
      hasNextPage: other.hasNextPage,
    );
  }

  factory HomePage.of({
    required String title,
    required List<MediaPreview> list,
    bool horizontalImages = false,
    bool? hasNextPage,
  }) {
    return HomePage(
      items: [
        HomePageData(
          title: title,
          list: list,
          horizontalImages: horizontalImages,
        )
      ],
      hasNextPage: hasNextPage ?? list.isNotEmpty,
    );
  }

  factory HomePage.fromRequest({
    required HomePageRequest reqeust,
    required List<MediaPreview> list,
    bool? hasNextPage,
  }) {
    return HomePage(
      items: [
        HomePageData(
          title: reqeust.title,
          list: list,
          horizontalImages: reqeust.horizontalImages,
        )
      ],
      hasNextPage: hasNextPage ?? list.isNotEmpty,
    );
  }

  factory HomePage.fromData({
    required HomePageData items,
    bool? hasNextPage,
  }) {
    return HomePage(
      items: [items],
      hasNextPage: hasNextPage ?? items.list.isNotEmpty,
    );
  }

  factory HomePage.list({
    required List<HomePageData> items,
    bool? hasNextPage,
  }) {
    return HomePage(
      items: items,
      hasNextPage:
          hasNextPage ?? items.any((element) => element.list.isNotEmpty),
    );
  }

  HomePage copyWith({
    List<HomePageData>? items,
    bool? hasNextPage,
  }) {
    return HomePage(
      items: items ?? this.items,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }

  factory HomePage.fromJson(Map<String, dynamic> json) {
    return HomePage(
      items: (json['items'] as List).mapList((e) => HomePageData.fromJson(e)),
      hasNextPage: json['hasNextPage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items.mapList((e) => e.toJson()),
      'hasNextPage': hasNextPage,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }
}

class HomePageData {
  final String title;
  final List<MediaPreview> list;
  final bool horizontalImages;

  const HomePageData({
    required this.title,
    required this.list,
    required this.horizontalImages,
  });

  factory HomePageData.withRequest(
    HomePageRequest request,
    List<MediaPreview> list,
  ) {
    return HomePageData(
      title: request.title,
      list: list,
      horizontalImages: request.horizontalImages,
    );
  }

  HomePageData copyWith({
    String? title,
    List<MediaPreview>? list,
    bool? horizontalImages,
  }) {
    return HomePageData(
      title: title ?? this.title,
      list: list ?? this.list,
      horizontalImages: horizontalImages ?? this.horizontalImages,
    );
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  factory HomePageData.fromJson(Map<String, dynamic> json) {
    return HomePageData(
      title: json['title'],
      list: (json['list'] as List).mapList((e) => MediaPreview.fromJson(e)),
      horizontalImages: json['horizontalImages'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'list': list.mapList((e) => e.toJson()),
      'horizontalImages': horizontalImages,
    };
  }
}

/// `HomePageRequest` is a class that represents the items for a home page.
///
/// It includes the following properties:
/// * `title`: A string representing the title of the home page.
/// * `data`: A string representing the items of the home page.
/// * `horizontalImages`: A boolean indicating whether the images on the home page are horizontal.
///
/// The `HomePageRequest` class has a constructor that takes these properties.

class HomePageRequest {
  final String title;
  final String data;
  final bool horizontalImages;
  final bool hasFullData;

  const HomePageRequest({
    required this.title,
    required this.data,
    this.horizontalImages = false,
    this.hasFullData = false,
  });

  HomePageRequest copyWith({
    String? title,
    String? data,
    bool? horizontalImages,
    bool? hasFullData,
  }) {
    return HomePageRequest(
      title: title ?? this.title,
      data: data ?? this.data,
      horizontalImages: horizontalImages ?? this.horizontalImages,
      hasFullData: hasFullData ?? this.hasFullData,
    );
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  factory HomePageRequest.fromJson(Map<String, dynamic> json) {
    return HomePageRequest(
      title: json['title'],
      data: json['data'],
      horizontalImages: json['horizontalImages'],
      hasFullData: json['hasFullData'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'data': data,
      'horizontalImages': horizontalImages,
      'hasFullData': hasFullData,
    };
  }
}
