import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/models/source/source.dart';
import 'dart:typed_data';

// import 'package:meiyou_extensions_lib/models.dart';
import 'package:nice_dart/nice_dart.dart';

abstract class Extension {
  final String name;
  final String pkgName;
  final String versionName;
  final String? lang;
  final bool isNsfw;
  final List<Source> sources;

  Extension({
    required this.name,
    required this.pkgName,
    required this.versionName,
    this.lang,
    required this.isNsfw,
    required this.sources,
  });
}

class InstalledExtension extends Extension {
  final Uint8List? icon;
  final String repoUrl;
  final bool hasUpdate;
  final bool isObsolote;
  final bool isOnline;

  InstalledExtension({
    required super.name,
    required super.pkgName,
    required super.versionName,
    required super.sources,
    required this.isOnline,
    required this.repoUrl,
    super.lang,
    super.isNsfw = false,
    this.icon,
    this.hasUpdate = false,
    this.isObsolote = false,
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
  final String pluginName;
  final String repoUrl;

  String get iconUrl => "$repoUrl/icon/$pkgName.png";

  String get pluginUrl => "$repoUrl/plugin/$pluginName";

  @override
  List<AvailableSource> get sources => super.sources.cast();

  AvailableExtension({
    required super.name,
    required super.pkgName,
    required super.versionName,
    required super.lang,
    required super.isNsfw,
    required List<AvailableSource> super.sources,
    required this.pluginName,
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

class AvailableSource extends Source {
  @override
  final int id;

  @override
  final String name;

  @override
  final String lang;

  final String? baseUrl;

  AvailableSource({
    this.id = -1,
    this.lang = "",
    this.name = "",
    this.baseUrl = "",
  });

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

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    throw UnsupportedError('Stub Source');
  }

  @override
  Future<Media?> getMedia(MediaLink link) {
    throw UnsupportedError('Stub Source');
  }

  @override
  Future<MediaDetails> getMediaDetails(String url) {
    throw UnsupportedError('Stub Source');
  }

  @override
  Future<List<MediaLink>> getMediaLinks(String url) {
    throw UnsupportedError('Stub Source');
  }

  @override
  List<HomePageRequest> homePageRequests() {
    throw UnsupportedError('Stub Source');
  }
}
