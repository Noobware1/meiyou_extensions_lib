import 'package:meiyou_extensions_lib/src/models/content_item.dart';

class HomePage {
  final List<HomePageData> data;
  final bool hasNextPage;

  const HomePage({
    required this.data,
    required this.hasNextPage,
  });

  factory HomePage.of({
    required String name,
    required List<ContentItem> entries,
    bool horizontalImages = false,
    bool? hasNextPage,
  }) {
    return HomePage(
      data: [
        HomePageData(
          name: name,
          entries: entries,
          horizontalImages: horizontalImages,
        )
      ],
      hasNextPage: hasNextPage ?? entries.isNotEmpty,
    );
  }

  factory HomePage.fromRequest({
    required HomePageRequest reqeust,
    required List<ContentItem> entries,
    bool? hasNextPage,
  }) {
    return HomePage(
      data: [
        HomePageData(
          name: reqeust.name,
          entries: entries,
          horizontalImages: reqeust.horizontalImages,
        )
      ],
      hasNextPage: hasNextPage ?? entries.isNotEmpty,
    );
  }

  factory HomePage.fromData({
    required HomePageData data,
    bool? hasNextPage,
  }) {
    return HomePage(
      data: [data],
      hasNextPage: hasNextPage ?? data.entries.isNotEmpty,
    );
  }

  factory HomePage.list({
    required List<HomePageData> data,
    bool? hasNextPage,
  }) {
    return HomePage(
      data: data,
      hasNextPage:
          hasNextPage ?? data.any((element) => element.entries.isNotEmpty),
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
}

class HomePageData {
  final String name;
  final List<ContentItem> entries;
  final bool horizontalImages;

  const HomePageData({
    required this.name,
    required this.entries,
    required this.horizontalImages,
  });

  HomePageData copyWith({
    String? name,
    List<ContentItem>? entries,
    bool? horizontalImages,
  }) {
    return HomePageData(
      name: name ?? this.name,
      entries: entries ?? this.entries,
      horizontalImages: horizontalImages ?? this.horizontalImages,
    );
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

class HomePageRequest {
  final String name;
  final String data;
  final bool horizontalImages;

  const HomePageRequest({
    required this.name,
    required this.data,
    required this.horizontalImages,
  });

  @override
  String toString() {
    return 'HomePageRequest(name: $name, data: $data, horizontalImages: $horizontalImages)';
  }

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
}
