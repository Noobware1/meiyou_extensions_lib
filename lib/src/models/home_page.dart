import 'package:meiyou_extensions_lib/src/models/media.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:nice_dart/nice_dart.dart';

class HomePage {
  final List<HomePageList> items;
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
    required List<IMedia> list,
    bool horizontalImages = false,
    bool? hasNextPage,
  }) {
    return HomePage(
      items: [
        HomePageList(
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
    required List<IMedia> list,
    bool? hasNextPage,
  }) {
    return HomePage(
      items: [
        HomePageList(
          title: reqeust.title,
          list: list,
          horizontalImages: reqeust.horizontalImages,
        )
      ],
      hasNextPage: hasNextPage ?? list.isNotEmpty,
    );
  }

  factory HomePage.fromItems({
    required HomePageList items,
    bool? hasNextPage,
  }) {
    return HomePage(
      items: [items],
      hasNextPage: hasNextPage ?? items.list.isNotEmpty,
    );
  }

  factory HomePage.list({
    required List<HomePageList> items,
    bool? hasNextPage,
  }) {
    return HomePage(
      items: items,
      hasNextPage:
          hasNextPage ?? items.any((element) => element.list.isNotEmpty),
    );
  }

  HomePage copyWith({
    List<HomePageList>? items,
    bool? hasNextPage,
  }) {
    return HomePage(
      items: items ?? this.items,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }

  factory HomePage.fromJson(Map<String, dynamic> json) {
    return HomePage(
      items: (json['items'] as List).mapList((e) => HomePageList.fromJson(e)),
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

class HomePageList {
  final String title;
  final List<IMedia> list;
  final bool horizontalImages;

  const HomePageList({
    required this.title,
    required this.list,
    this.horizontalImages = false,
  });

  factory HomePageList.withRequest(
    HomePageRequest request,
    List<IMedia> list,
  ) {
    return HomePageList(
      title: request.title,
      list: list,
      horizontalImages: request.horizontalImages,
    );
  }

  HomePageList copyWith({
    String? title,
    List<IMedia>? list,
    bool? horizontalImages,
  }) {
    return HomePageList(
      title: title ?? this.title,
      list: list ?? this.list,
      horizontalImages: horizontalImages ?? this.horizontalImages,
    );
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  factory HomePageList.fromJson(Map<String, dynamic> json) {
    return HomePageList(
      title: json['title'],
      list: (json['list'] as List).mapList((e) => IMedia.fromJson(e)),
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
/// * `url`: A string representing the items of the home page.
/// * `horizontalImages`: A boolean indicating whether the images on the home page are horizontal.
///
/// The `HomePageRequest` class has a constructor that takes these properties.

class HomePageRequest {
  final String title;
  final String url;
  final bool horizontalImages;

  const HomePageRequest({
    required this.title,
    required this.url,
    this.horizontalImages = false,
  });

  HomePageRequest copyWith({
    String? title,
    String? url,
    bool? horizontalImages,
  }) {
    return HomePageRequest(
      title: title ?? this.title,
      url: url ?? this.url,
      horizontalImages: horizontalImages ?? this.horizontalImages,
    );
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  factory HomePageRequest.fromJson(Map<String, dynamic> json) {
    return HomePageRequest(
      title: json['title'],
      url: json['url'],
      horizontalImages: json['horizontalImages'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'url': url,
      'horizontalImages': horizontalImages,
    };
  }
}
