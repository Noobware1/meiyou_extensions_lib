// import 'dart:convert';

// import 'package:isar/isar.dart';
// import 'package:meiyou_extensions_lib/models.dart';
// import 'package:nice_dart/nice_dart.dart';
// part 'online_extension.g.dart';

// @collection
// class OnlineExtension extends Extension {
//   OnlineExtension({
//     super.id = Isar.autoIncrement,
//     super.name,
//     super.pkg,
//     super.description,
//     super.version,
//     super.sourceType,
//     super.nsfw,
//     super.lang,
//     super.update,
//     this.icon = '',
//     List<OnlineSource> sources = const [],
//   }) : super(sources: sources);
//   final String icon;

//   @override
//   List<OnlineSource> get sources => super.sources as List<OnlineSource>;

//   String encode() => jsonEncode(toJson());

//   factory OnlineExtension.decode(String json) =>
//       OnlineExtension.fromJson(jsonDecode(json));

//   factory OnlineExtension.fromJson(dynamic json) {
//     return OnlineExtension(
//       id: json["id"],
//       name: json["name"],
//       pkg: json["pkg"],
//       description: json["description"],
//       update: json["update"],
//       lang: json["lang"],
//       nsfw: json["nsfw"],
//       sourceType: json["sourceType"],
//       version: json["version"],
//       icon: json["icon"],
//       sources: (json["sources"] as List).mapList((source) {
//         return OnlineSource.fromJson(source);
//       }),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     assert(name.isNotEmpty, 'name.isNotEmpty == true');
//     assert(pkg.isNotEmpty, 'pkg.isNotEmpty == true');
//     assert(update.isNotEmpty, 'update.isNotEmpty == true');
//     assert(lang.isNotEmpty, 'lang.isNotEmpty == true');
//     assert(version.isNotEmpty, 'version.isNotEmpty == true');
//     assert(sources.isNotEmpty, 'sources.isNotEmpty == true');

//     return {
//       "id": id,
//       "name": name,
//       "pkg": pkg,
//       "update": update,
//       "lang": lang,
//       "version": version,
//       "sourceType": sourceType,
//       "nsfw": nsfw,
//       "icon": icon,
//       "sources": sources.map((source) {
//         return source.toJson();
//       }).toList()
//     };
//   }
// }

// @embedded
// class OnlineSource extends ExtensionSource {
//   OnlineSource({
//     super.id,
//     super.name,
//     super.lang,
//     super.baseUrl,
//     super.versionId,
//   });

//   String encode() => jsonEncode(toJson());

//   factory OnlineSource.decode(String json) => OnlineSource.fromJson(jsonDecode(json));

//   factory OnlineSource.fromJson(dynamic json) {
//     return OnlineSource(
//       name: json["name"],
//       lang: json["lang"],
//       id: json["id"],
//       baseUrl: json["baseUrl"],
//       versionId: json["versionId"],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     assert(name.isNotEmpty, 'name.isEmpty == true');
//     assert(lang.isNotEmpty, 'lang.isEmpty == true');

//     final Map<String, dynamic> map = {
//       "name": name,
//       "lang": lang,
//       "id": id,
//     };

//     if (baseUrl != null && versionId != null) {
//       assert(baseUrl!.isNotEmpty, 'baseUrl.isEmpty == true');
//       map["baseUrl"] = baseUrl!;
//       map["versionId"] = versionId!;
//     }

//     return map;
//   }
// }
