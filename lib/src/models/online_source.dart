// import 'dart:convert';

// import 'package:meiyou_extensions_lib/src/models/plugin.dart';

// /// `OnlineSource` represents an online source mainly used by index.json present in a repository.
// ///
// /// It includes all the properties of the `Plugin` class, plus the following additional property:
// /// * `iconUrl`: A string representing the URL of the icon for the source.
// ///
// class OnlineSource extends Source {
//   OnlineSource(
//       {super.id,
//       required super.name,
//       required super.type,
//       required super.author,
//       required super.description,
//       required super.lang,
//       required super.baseUrl,
//       required super.version,
//       required super.downloadUrl,
//       required this.iconUrl});

//   /// icon url for the source. this will be used to display the icon for the source.
//   final String iconUrl;

//   /// Encodes this `OnlineSource` instance to json string.
//   @override
//   String get encode => jsonEncode(toJson());

//   /// Creates a new `OnlineSource` instance from encoded json.
//   factory OnlineSource.decode(String json) =>
//       OnlineSource.fromJson(jsonDecode(json));

//   /// Creates a new `OnlineSource` instance from decoded json.
//   factory OnlineSource.fromJson(Map<String, dynamic> json) {
//     return OnlineSource(
//       id: json['id'],
//       name: json['name'],
//       type: json['type'],
//       downloadUrl: json['downloadUrl'],
//       author: json['author'] ?? 'Unknown',
//       description: json['description'] ?? '',
//       lang: json['lang'],
//       baseUrl: json['baseUrl'] ?? '',
//       version: json['version'] ?? '0.0.1',
//       iconUrl: json['iconUrl'] ?? '',
//     );
//   }

//   /// Converts this `OnlineSource` instance to json.
//   @override
//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'name': name,
//         'type': type,
//         'downloadUrl': downloadUrl,
//         'author': author,
//         'description': description,
//         'lang': lang,
//         'baseUrl': baseUrl,
//         'version': version,
//         'iconUrl': iconUrl,
//       };

//   /// Creates a copy of this `OnlineSource` instance with the given fields replaced with the new values.
//   @override
//   OnlineSource copyWith({
//     int? id,
//     String? name,
//     String? type,
//     String? author,
//     String? description,
//     String? lang,
//     String? baseUrl,
//     int? version,
//     String? downloadUrl,
//     String? iconUrl,
//   }) {
//     return OnlineSource(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       type: type ?? this.type,
//       downloadUrl: downloadUrl ?? this.downloadUrl,
//       author: author ?? this.author,
//       description: description ?? this.description,
//       lang: lang ?? this.lang,
//       baseUrl: baseUrl ?? this.baseUrl,
//       version: version ?? this.version,
//       iconUrl: iconUrl ?? this.iconUrl,
//     );
//   }

//   @override
//   String toString() {
//     return 'OnlineSource(id: $id, name: $name, type: $type, author: $author, description: $description, lang: $lang, baseUrl: $baseUrl, version: $version, downloadUrl: $downloadUrl, iconUrl: $iconUrl)';
//   }
// }
