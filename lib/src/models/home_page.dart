import 'package:equatable/equatable.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:nice_dart/nice_dart.dart';

class HomePage extends Equatable {
  final List<HomePageData> data;
  final bool hasNextPage;

  const HomePage({
    required this.data,
    required this.hasNextPage,
  });

  HomePage operator +(HomePage other) {
    final map = Map.fromEntries(other.data.map((e) => MapEntry(e.name, e)));

    for (var element in data) {
      map[element.name]?.let((it) {
        element.items.addAll(it.items);
        map.remove(element.name);
      });
    }

    data.addAll(map.values);

    return HomePage(
      data: data,
      hasNextPage: other.hasNextPage,
    );
  }

  factory HomePage.of({
    required String name,
    required List<ContentItem> items,
    bool horizontalImages = false,
    bool? hasNextPage,
  }) {
    return HomePage(
      data: [
        HomePageData(
          name: name,
          items: items,
          horizontalImages: horizontalImages,
        )
      ],
      hasNextPage: hasNextPage ?? items.isNotEmpty,
    );
  }

  factory HomePage.fromRequest({
    required HomePageRequest reqeust,
    required List<ContentItem> items,
    bool? hasNextPage,
  }) {
    return HomePage(
      data: [
        HomePageData(
          name: reqeust.name,
          items: items,
          horizontalImages: reqeust.horizontalImages,
        )
      ],
      hasNextPage: hasNextPage ?? items.isNotEmpty,
    );
  }

  factory HomePage.fromData({
    required HomePageData data,
    bool? hasNextPage,
  }) {
    return HomePage(
      data: [data],
      hasNextPage: hasNextPage ?? data.items.isNotEmpty,
    );
  }

  factory HomePage.list({
    required List<HomePageData> data,
    bool? hasNextPage,
  }) {
    return HomePage(
      data: data,
      hasNextPage:
          hasNextPage ?? data.any((element) => element.items.isNotEmpty),
    );
  }

  HomePage copyWith({
    List<HomePageData>? data,
    bool? hasNextPage,
  }) {
    return HomePage(
      data: data ?? this.data,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }

  factory HomePage.fromJson(Map<String, dynamic> json) {
    return HomePage(
      data: (json['data'] as List).mapList((e) => HomePageData.fromJson(e)),
      hasNextPage: json['hasNextPage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.mapList((e) => e.toJson()),
      'hasNextPage': hasNextPage,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [data, hasNextPage];
}

class HomePageData extends Equatable {
  final String name;
  final List<ContentItem> items;
  final bool horizontalImages;

  const HomePageData({
    required this.name,
    required this.items,
    required this.horizontalImages,
  });

  factory HomePageData.withRequest(
    HomePageRequest request,
    List<ContentItem> items,
  ) {
    return HomePageData(
      name: request.name,
      items: items,
      horizontalImages: request.horizontalImages,
    );
  }

  HomePageData copyWith({
    String? name,
    List<ContentItem>? items,
    bool? horizontalImages,
  }) {
    return HomePageData(
      name: name ?? this.name,
      items: items ?? this.items,
      horizontalImages: horizontalImages ?? this.horizontalImages,
    );
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [name, items, horizontalImages];

  factory HomePageData.fromJson(Map<String, dynamic> json) {
    return HomePageData(
      name: json['name'],
      items: (json['items'] as List).mapList((e) => ContentItem.fromJson(e)),
      horizontalImages: json['horizontalImages'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'items': items.mapList((e) => e.toJson()),
      'horizontalImages': horizontalImages,
    };
  }
}

/// `HomePageRequest` is a class that represents the data for a home page.
///
/// It includes the following properties:
/// * `name`: A string representing the name of the home page.
/// * `data`: A string representing the data of the home page.
/// * `horizontalImages`: A boolean indicating whether the images on the home page are horizontal.
///
/// The `HomePageRequest` class has a constructor that takes these properties.

class HomePageRequest extends Equatable {
  final String name;
  final String data;
  final bool horizontalImages;

  const HomePageRequest({
    required this.name,
    required this.data,
    this.horizontalImages = false,
  });

  HomePageRequest copyWith({
    String? name,
    String? data,
    bool? horizontalImages,
  }) {
    return HomePageRequest(
      name: name ?? this.name,
      data: data ?? this.data,
      horizontalImages: horizontalImages ?? this.horizontalImages,
    );
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [name, data, horizontalImages];

  factory HomePageRequest.fromJson(Map<String, dynamic> json) {
    return HomePageRequest(
      name: json['name'],
      data: json['data'],
      horizontalImages: json['horizontalImages'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'data': data,
      'horizontalImages': horizontalImages,
    };
  }
}
