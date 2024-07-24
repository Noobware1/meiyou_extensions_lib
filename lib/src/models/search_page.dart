import 'package:meiyou_extensions_lib/src/models/media.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:nice_dart/nice_dart.dart';

class SearchPage {
  final List<IMedia> list;
  final bool hasNextPage;

  const SearchPage({required this.hasNextPage, required this.list});

  factory SearchPage.fromJson(Map<String, dynamic> json) {
    return SearchPage(
      list: (json['list'] as List).mapList((e) => IMedia.fromJson(e)),
      hasNextPage: json['hasNextPage'] as bool,
    );
  }

  SearchPage copyWith({
    List<IMedia>? list,
    bool? hasNextPage,
  }) {
    return SearchPage(
      list: list ?? this.list,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'list': list.mapList((e) => e.toJson()),
      'hasNextPage': hasNextPage,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }
}
