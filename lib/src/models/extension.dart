import 'dart:typed_data';

import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/src/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/models/source/stub_source.dart';
import 'package:nice_dart/nice_dart.dart';

abstract class Extension {
  abstract final String name;
  abstract final String pkgName;
  abstract final String versionName;
  abstract final String? lang;
  abstract final bool isNsfw;
}

class InstalledExtension extends Extension {
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

  final List<Source> sources;
  final Uint8List? icon;
  final String? repoUrl;
  final bool hasUpdate;
  final bool isOnline;

  InstalledExtension({
    required this.name,
    required this.pkgName,
    required this.versionName,
    required this.sources,
    required this.isOnline,
    this.lang,
    this.icon,
    this.repoUrl,
    this.isNsfw = false,
    this.hasUpdate = false,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "pkg": pkgName,
      "version": versionName,
      "lang": lang,
      "nsfw": isNsfw ? 1 : 0,
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
      sources: [],
    );
  }

  InstalledExtension copyWith({
    String? name,
    String? pkgName,
    String? versionName,
    String? lang,
    bool? isNsfw,
    List<Source>? sources,
    Uint8List? icon,
    bool? hasUpdate,
    bool? isOnline,
    String? repoUrl,
  }) {
    return InstalledExtension(
      name: name ?? this.name,
      pkgName: pkgName ?? this.pkgName,
      versionName: versionName ?? this.versionName,
      lang: lang ?? this.lang,
      isNsfw: isNsfw ?? this.isNsfw,
      sources: sources ?? this.sources,
      icon: icon ?? this.icon,
      hasUpdate: hasUpdate ?? this.hasUpdate,
      isOnline: isOnline ?? this.isOnline,
      repoUrl: repoUrl ?? this.repoUrl,
    );
  }
}

class AvailableExtension extends Extension {
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

  AvailableExtension({
    required this.name,
    required this.pkgName,
    required this.versionName,
    required this.lang,
    required this.isNsfw,
    required this.sources,
    required this.pluginName,
    required this.iconUrl,
    required this.repoUrl,
  });

  factory AvailableExtension.fromJson(dynamic json, {required String repoUrl}) {
    return AvailableExtension(
      name: json['name'],
      pkgName: json['pkg'],
      versionName: json['version'],
      lang: json['lang'],
      isNsfw: (json['nsfw'] as int) == 1,
      pluginName: json['plugin'],
      iconUrl: '$repoUrl/icon/${json['pkg']}.png',
      sources: ((json['sources'] as List?)?.mapList(AvailableSource.fromJson))
          .orEmpty(),
      repoUrl: repoUrl,
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
      "sources": sources.mapList((e) => e.toJson()),
    };
  }
}

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
    }.apply((it) {
      if (baseUrl != null) {
        it["baseUrl"] = baseUrl!;
      }
    });
  }
}
