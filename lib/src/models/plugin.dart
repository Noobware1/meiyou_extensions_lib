// ignore_for_file: unnecessary_this

import 'dart:convert';

class Plugin {
  Plugin({
    int? id,
    required this.name,
    required this.type,
    required this.author,
    required this.description,
    required this.lang,
    required this.baseUrl,
    required this.version,
    required this.downloadUrl,
  }) : this.id = id ?? 'meiyou_extentsion-$name$version$lang'.hashCode;

  final int id;
  final String name;
  final String type;
  final String author;
  final String description;
  final String lang;
  final String baseUrl;
  final String version;
  final String downloadUrl;

  String get encode => jsonEncode(toJson());

  factory Plugin.decode(String json) => Plugin.fromJson(jsonDecode(json));

  factory Plugin.fromJson(Map<String, dynamic> json) {
    return Plugin(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      downloadUrl: json['downloadUrl'],
      author: json['author'],
      description: json['description'],
      lang: json['lang'],
      baseUrl: json['baseUrl'],
      version: json['version'],
    );
  }

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
      };

  Plugin copyWith({
    int? id,
    String? name,
    String? type,
    String? author,
    String? description,
    String? lang,
    String? baseUrl,
    String? version,
    String? downloadUrl,
  }) {
    return Plugin(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      downloadUrl: downloadUrl ?? this.downloadUrl,
      author: author ?? this.author,
      description: description ?? this.description,
      lang: lang ?? this.lang,
      baseUrl: baseUrl ?? this.baseUrl,
      version: version ?? this.version,
    );
  }

  @override
  String toString() {
    return 'Plugin(id: $id, name: $name, type: $type, author: $author, description: $description, lang: $lang, baseUrl: $baseUrl, version: $version, downloadUrl: $downloadUrl)';
  }
}
