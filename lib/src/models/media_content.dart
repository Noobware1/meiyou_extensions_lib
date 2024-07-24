import 'package:meiyou_extensions_lib/src/utils/utils.dart';

class IMediaContent {
  int? number;
  int? season;
  String url;
  String? name;
  String? image;
  bool? isFiller;
  // int? season;
  String? description;

  IMediaContent({
    this.number,
    this.season,
    this.name,
    required this.url,
    this.image,
    this.isFiller,
    this.description,
  });

  factory IMediaContent.fromJson(Map<String, dynamic> json) {
    return IMediaContent(
      url: json['url'],
      name: json['name'],
      number: json['number'],
      season: json['season'],
      image: json['image'],
      isFiller: json['isFiller'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'name': name,
      'number': number,
      'image': image,
      'isFiller': isFiller,
      'description': description,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }
}
