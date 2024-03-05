import 'package:isar/isar.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/stub_source.dart';
import 'package:nice_dart/nice_dart.dart';
part 'extension.g.dart';

abstract class Extension {
  abstract final String name;
  abstract final String pkgName;
  abstract final String versionName;
  abstract final String? lang;
  abstract final bool isNsfw;
}

@collection
class InstalledExtension extends Extension {
  final Id id;
  @override
  final String name;
  @override
  final String pkgName;
  @override
  final String versionName;
  @override
  final String? lang;
  @override
  final bool isNsfw;

  final List<ExtensionSource> sources;
  final List<byte>? icon;
  final List<byte>? evc;
  final bool hasUpdate;
  final bool isOnline;
  final String? repoUrl;

  InstalledExtension({
    this.id = Isar.autoIncrement,
    required this.name,
    required this.pkgName,
    required this.versionName,
    required this.lang,
    required this.isNsfw,
    required this.sources,
    required this.icon,
    required this.evc,
    required this.hasUpdate,
    required this.isOnline,
    required this.repoUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "pkg": pkgName,
      "version": versionName,
      "lang": lang,
      "nsfw": isNsfw ? 1 : 0,
      "sources": sources.mapList((e) => e.toJson()),
      "isOnline": isOnline ? 1 : 0,
      "repoUrl": repoUrl,
    };
  }

  factory InstalledExtension.fromJson(dynamic json) {
    return InstalledExtension(
      name: json['name'],
      pkgName: json['pkg'],
      versionName: json['version'],
      lang: json['lang'],
      isNsfw: (json['nsfw'] as int) == 1,
      isOnline: (json['isOnline'] as int) == 1,
      repoUrl: json['repoUrl'],
      sources: ((json['sources'] as List?)?.mapList(ExtensionSource.fromJson))
          .orEmpty(),
      hasUpdate: false,
      icon: const [],
      evc: const [],
    );
  }

  InstalledExtension copyWith({
    String? name,
    String? pkgName,
    String? versionName,
    String? lang,
    bool? isNsfw,
    List<ExtensionSource>? sources,
    List<byte>? icon,
    List<byte>? evc,
    bool? hasUpdate,
    bool? isOnline,
    String? repoUrl,
  }) {
    return InstalledExtension(
      id: id,
      name: name ?? this.name,
      pkgName: pkgName ?? this.pkgName,
      versionName: versionName ?? this.versionName,
      lang: lang ?? this.lang,
      isNsfw: isNsfw ?? this.isNsfw,
      sources: sources ?? this.sources,
      icon: icon ?? this.icon,
      evc: evc ?? this.evc,
      hasUpdate: hasUpdate ?? this.hasUpdate,
      isOnline: isOnline ?? this.isOnline,
      repoUrl: repoUrl ?? this.repoUrl,
    );
  }
}

@embedded
class ExtensionSource {
  final int id;
  final String lang;
  final String name;
  final bool supportsHomepage;
  final bool isUsedLast;

  ExtensionSource({
    this.id = -1,
    this.lang = "",
    this.name = "",
    this.supportsHomepage = false,
    this.isUsedLast = false,
  });

  String get visualName =>
      lang.isEmpty ? name : "$name (${lang.toUpperCase()})";

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "lang": lang,
      "supportsHomepage": supportsHomepage ? 1 : 0,
      "isUsedLast": isUsedLast ? 1 : 0,
    };
  }

  factory ExtensionSource.fromJson(dynamic json) {
    return ExtensionSource(
      id: json["id"],
      name: json["name"],
      lang: json["lang"],
      supportsHomepage: (json["supportsHomepage"] as int) == 1,
      isUsedLast: (json["isUsedLast"] as int) == 1,
    );
  }
}

@collection
class AvailableExtension extends Extension {
  final Id id;
  @override
  final String name;
  @override
  final String pkgName;
  @override
  final String versionName;
  @override
  final String? lang;
  @override
  final bool isNsfw;

  final List<AvailableSource> sources;
  final String pluginName;
  final String iconUrl;
  final String repoUrl;

  String get visualName => name.substringAfter("Meiyou: ");

  AvailableExtension({
    this.id = Isar.autoIncrement,
    required this.name,
    required this.pkgName,
    required this.versionName,
    required this.lang,
    required this.isNsfw,
    required this.sources,
    required this.pluginName,
    required this.iconUrl,
    required this.repoUrl,
  }) {
    assert(name.startsWith("Meiyou: "));
  }

  factory AvailableExtension.fromJson(dynamic json) {
    final String repoUrl = json['repoUrl'];
    final String pkg = json['pkg'];
    return AvailableExtension(
      name: json['name'],
      pkgName: pkg,
      versionName: json['version'],
      lang: json['lang'],
      isNsfw: (json['nsfw'] as int) == 1,
      iconUrl: '$repoUrl/icon/$pkg.png',
      pluginName: json['plugin'],
      repoUrl: repoUrl,
      sources: ((json['sources'] as List?)?.mapList(AvailableSource.fromJson))
          .orEmpty(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "pkg": pkgName,
      "plugin": pluginName,
      "version": versionName,
      "lang": lang,
      "nsfw": isNsfw ? 1 : 0,
      "repoUrl": repoUrl,
      "sources": sources.mapList((e) => e.toJson()),
    };
  }
}

@embedded
class AvailableSource {
  final int id;
  final String lang;
  final String name;
  final String? baseUrl;

  AvailableSource({
    this.id = -1,
    this.lang = "",
    this.name = "",
    this.baseUrl = "",
  });

  StubSource toStubSource() {
    return StubSource(
      id: id,
      lang: lang,
      name: name,
    );
  }

  factory AvailableSource.fromJson(dynamic json) {
    return AvailableSource(
      id: json["id"],
      name: json["name"],
      lang: json["lang"],
      baseUrl: json["baseUrl"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "lang": lang,
      "baseUrl": baseUrl,
    };
  }
}
