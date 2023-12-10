import 'dart:convert';

import 'package:meiyou_extenstions/meiyou_extenstions.dart';

class OnlinePlugin extends Plugin {
  OnlinePlugin(
      {super.id,
      required super.name,
      required super.type,
      required super.author,
      required super.description,
      required super.lang,
      required super.baseUrl,
      required super.version,
      required super.downloadUrl,
      required this.iconUrl});

  final String iconUrl;

  @override
  String get encode => jsonEncode(toJson());

  factory OnlinePlugin.decode(String json) =>
      OnlinePlugin.fromJson(jsonDecode(json));

  factory OnlinePlugin.fromJson(Map<String, dynamic> json) {
    return OnlinePlugin(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      downloadUrl: json['downloadUrl'],
      author: json['author'] ?? 'Unknown',
      description: json['description'] ?? '',
      lang: json['lang'],
      baseUrl: json['baseUrl'] ?? '',
      version: json['version'] ?? '0.0.1',
      iconUrl: json['iconUrl'] ?? '',
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'downloadUrl': downloadUrl,
        'author': author,
        'description': description,
        'lang': lang,
        'baseUrl': baseUrl,
        'version': version,
        'iconUrl': iconUrl,
      };

  @override
  OnlinePlugin copyWith({
    int? id,
    String? name,
    String? type,
    String? author,
    String? description,
    String? lang,
    String? baseUrl,
    String? version,
    String? downloadUrl,
    String? iconUrl,
  }) {
    return OnlinePlugin(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      downloadUrl: downloadUrl ?? this.downloadUrl,
      author: author ?? this.author,
      description: description ?? this.description,
      lang: lang ?? this.lang,
      baseUrl: baseUrl ?? this.baseUrl,
      version: version ?? this.version,
      iconUrl: iconUrl ?? this.iconUrl,
    );
  }

  @override
  String toString() {
    return 'OnlinePlugin(id: $id, name: $name, type: $type, author: $author, description: $description, lang: $lang, baseUrl: $baseUrl, version: $version, downloadUrl: $downloadUrl, iconUrl: $iconUrl)';
  }
}
