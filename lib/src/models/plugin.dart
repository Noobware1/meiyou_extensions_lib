// ignore_for_file: unnecessary_this

import 'dart:convert';

/// `Plugin` is a class that represents a plugin.
///
/// It includes the following properties:
/// * `id`: An integer representing the ID of the plugin.
/// * `name`: A string representing the name of the plugin.
/// * `type`: A string representing the type of the plugin.
/// * `author`: A string representing the author of the plugin.
/// * `description`: A string representing the description of the plugin.
/// * `lang`: A string representing the language of the plugin.
/// * `baseUrl`: A string representing the base URL of the plugin.
/// * `version`: A string representing the version of the plugin.
/// * `downloadUrl`: A string representing the download URL of the plugin.
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
  }) : this.id = id ??
            'meiyou_extension-$name$version$lang$baseUrl$downloadUrl'.hashCode;

  /// ID of the plugin. This will be used to uniquely identify the plugin.
  final int id;

  /// Name of the plugin. This will be used to display the name of the plugin.
  final String name;

  /// Type of the plugin. This will be used to identify the type of the plugin.
  final String type;

  /// Author of the plugin. This will be used to display the author of the plugin.
  final String author;

  /// Description of the plugin. This will be used to display the description about the plugin.
  final String description;

  /// Language of the plugin. This will be used to show supported language for plugin.
  final String lang;

  /// Base URL of the plugin. This will be used to identify url of the site used plugin.
  final String baseUrl;

  /// Version of the plugin. This will be used to identify the version of the plugin.
  final String version;

  /// Download URL of the plugin. This will be used to download the plugin.
  final String downloadUrl;

  /// Encodes this `Plugin` instance to json string.
  String get encode => jsonEncode(toJson());

  /// Creates a new `Plugin` instance from encoded json.
  factory Plugin.decode(String json) => Plugin.fromJson(jsonDecode(json));

  /// Creates a new `Plugin` instance from decoded json.
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

  /// Converts this `Plugin` instance to json.
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

  /// Creates a copy of this `Plugin` instance with the given fields replaced with the new values.
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
