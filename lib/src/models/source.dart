// ignore_for_file: unnecessary_this

import 'dart:convert';

import 'package:crypto_dart/hashers.dart' show MD5;

/// `Source` is a class that represents a source.
///
/// It includes the following properties:
/// * `id`: An integer representing the ID of the source.
/// * `name`: A string representing the name of the source.
/// * `type`: A string representing the type of the source.
/// * `author`: A string representing the author of the source.
/// * `description`: A string representing the description of the source.
/// * `lang`: A string representing the language of the source.
/// * `baseUrl`: A string representing the base URL of the source.
/// * `version`: A string representing the version of the source.
/// * `downloadUrl`: A string representing the download URL of the source.
class Source {
  Source({
    int? id,
    required this.name,
    required this.type,
    required this.author,
    required this.description,
    required this.lang,
    required this.baseUrl,
    required this.version,
    required this.downloadUrl,
  }) {
    this.id = id ?? _generateId(name, lang, version);
  }

  /// ID of the source. This will be used to uniquely identify the source.
  late final int id;

  /// Name of the source. This will be used to display the name of the source.
  final String name;

  /// Type of the source. This will be used to identify the type of the source.
  final String type;

  /// Author of the source. This will be used to display the author of the source.
  final String author;

  /// Description of the source. This will be used to display the description about the source.
  final String description;

  /// Language of the source. This will be used to show supported language for source.
  final String lang;

  /// Base URL of the source. This will be used to identify url of the site used source.
  final String baseUrl;

  /// Version of the source. This will be used to identify the version of the source.
  final int version;

  /// Download URL of the source. This will be used to download the source.
  final String downloadUrl;

  /// Encodes this `Source` instance to json string.
  String get encode => jsonEncode(toJson());

  /// Creates a new `Source` instance from encoded json.
  factory Source.decode(String json) => Source.fromJson(jsonDecode(json));

  /// Creates a new `Source` instance from decoded json.
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
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

  /// Converts this `Source` instance to json.
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

  /// Creates a copy of this `Source` instance with the given fields replaced with the new values.
  Source copyWith({
    int? id,
    String? name,
    String? type,
    String? author,
    String? description,
    String? lang,
    String? baseUrl,
    int? version,
    String? downloadUrl,
  }) {
    return Source(
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

  int _generateId(String name, String lang, int versionId) {
    final key = "${name.toLowerCase()}/$lang/$versionId";
    final bytes = MD5(key.codeUnits).bytes;
    return List.generate(
                8, (index) => (bytes[index] & 0xFF) << (8 * (7 - index)))
            .reduce((value, element) => value | element) &
        0x7FFFFFFFFFFFFFFF;
  }

  @override
  String toString() {
    return 'Source(id: $id, name: $name, type: $type, author: $author, description: $description, lang: $lang, baseUrl: $baseUrl, version: $version, downloadUrl: $downloadUrl)';
  }
}
