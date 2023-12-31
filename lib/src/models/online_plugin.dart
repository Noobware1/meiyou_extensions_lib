import 'dart:convert';

import 'package:meiyou_extensions_lib/src/models/plugin.dart';

/// `OnlinePlugin` represents an online plugin mainly used by index.json present in a repository.
///
/// It includes all the properties of the `Plugin` class, plus the following additional property:
/// * `iconUrl`: A string representing the URL of the icon for the plugin.
///
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

  /// icon url for the plugin. this will be used to display the icon for the plugin.
  final String iconUrl;

  /// Encodes this `OnlinePlugin` instance to json string.
  @override
  String get encode => jsonEncode(toJson());

  /// Creates a new `OnlinePlugin` instance from encoded json.
  factory OnlinePlugin.decode(String json) =>
      OnlinePlugin.fromJson(jsonDecode(json));

  /// Creates a new `OnlinePlugin` instance from decoded json.
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

  /// Converts this `OnlinePlugin` instance to json.
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

  /// Creates a copy of this `OnlinePlugin` instance with the given fields replaced with the new values.
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
