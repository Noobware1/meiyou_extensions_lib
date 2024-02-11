import 'dart:convert';

import 'package:crypto_dart/hashers.dart';
import 'package:isar/isar.dart';
part 'extension.g.dart';

@collection
class MeiyouExtension {
  final Id id;
  String get name => _name;

  set name(String name) {
    _name = 'Meiyou: $name';
  }

  String _name;
  String pkg;
  String description;
  String version;
  int sourceType;
  int nsfw;
  String update;
  String lang;
  List<EmbededSource> sources;

  void addSource(EmbededSource source) {
    sources.add(source);
  }

  MeiyouExtension({
    this.id = Isar.autoIncrement,
    String name = '',
    this.pkg = '',
    this.description = '',
    this.version = '',
    this.sourceType = 0,
    this.nsfw = 0,
    this.lang = '',
    this.update = '',
    List<EmbededSource> sources = const [],
  })  : this._name = name,
        this.sources = sources.isEmpty ? List.empty(growable: true) : sources;

  factory MeiyouExtension.id({
    String name = '',
    String pkg = '',
    String description = '',
    String version = '',
    int sourceType = 0,
    int nsfw = 0,
    String lang = '',
    String update = '',
    List<EmbededSource> sources = const [],
  }) {
    return MeiyouExtension(
      id: _generateId(name, pkg, lang),
      name: name,
      pkg: pkg,
      description: description,
      version: version,
      sourceType: sourceType,
      nsfw: nsfw,
      lang: lang,
      update: update,
      sources: sources,
    );
  }

  String encode() => jsonEncode(toJson());

  static MeiyouExtension decode(String json) => fromJson(jsonDecode(json));

  static MeiyouExtension fromJson(dynamic json) {
    return MeiyouExtension(
      id: json['id'],
      name: json["name"],
      pkg: json["pkg"],
      description: json["description"],
      update: json["update"],
      lang: json["lang"],
      nsfw: json["nsfw"],
      sourceType: json["sourceType"],
      version: json["version"],
    );
  }

  Map<String, dynamic> toJson() {
    assert(name.isNotEmpty, 'name.isNotEmpty == true');
    assert(pkg.isNotEmpty, 'pkg.isNotEmpty == true');
    assert(update.isNotEmpty, 'update.isNotEmpty == true');
    assert(lang.isNotEmpty, 'lang.isNotEmpty == true');
    assert(version.isNotEmpty, 'version.isNotEmpty == true');
    assert(sources.isNotEmpty, 'sources.isNotEmpty == true');

    return {
      "id": id,
      "name": name,
      "pkg": pkg,
      "update": update,
      "lang": lang,
      "version": version,
      "sourceType": sourceType,
      "nsfw": nsfw,
      "sources": sources.map((source) {
        return source.toJson();
      }).toList()
    };
  }
}

@embedded
class EmbededSource {
  final String name;
  final String lang;
  final int id;
  final String? baseUrl;
  final int? versionId;

  EmbededSource({
    this.name = '',
    this.lang = '',
    this.id = 0,
    this.baseUrl,
    this.versionId,
  });

  String encode() => jsonEncode(toJson());

  static EmbededSource decode(String json) => fromJson(jsonDecode(json));

  static EmbededSource fromJson(dynamic json) {
    return EmbededSource(
      name: json["name"],
      lang: json["lang"],
      id: json["id"],
      baseUrl: json["baseUrl"],
      versionId: json["versionId"],
    );
  }

  Map<String, dynamic> toJson() {
    assert(name.isNotEmpty, 'name.isEmpty == true');
    assert(lang.isNotEmpty, 'lang.isEmpty == true');

    final Map<String, dynamic> map = {
      "name": name,
      "lang": lang,
      "id": id,
    };

    if (baseUrl != null && versionId != null) {
      assert(baseUrl!.isNotEmpty, 'baseUrl.isEmpty == true');
      map["baseUrl"] = baseUrl!;
      map["versionId"] = versionId!;
    }

    return map;
  }
}

int _generateId(String name, String pkg, String lang) {
  final key =
      "meiyou_extension-${name.toLowerCase()}/${pkg.toLowerCase()}/$lang";
  final bytes = MD5(key.codeUnits).bytes;
  return List.generate(8, (index) => (bytes[index] & 0xFF) << (8 * (7 - index)))
          .reduce((value, element) => value | element) &
      0x7FFFFFFFFFFFFFFF;
}
