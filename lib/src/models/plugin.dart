import 'dart:typed_data';

class Plugin {
  final ExtensionIcon? icon;
  final ExtensionCode code;
  final PluginMetaData metadata;

  Plugin({this.icon, required this.code, required this.metadata});

  
}

class PluginMetaData {
  final String name;
  final String pkgName;
  final String versionName;
  final String? lang;
  final bool isNsfw;
  final bool isOnline;
  final String? repoUrl;

  PluginMetaData({
    required this.name,
    required this.pkgName,
    required this.versionName,
    this.lang,
    required this.isNsfw,
    required this.isOnline,
    this.repoUrl,
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

  static PluginMetaData fromJson(Map<String, dynamic> json) {
    return PluginMetaData(
      name: json["name"],
      pkgName: json["pkg"],
      versionName: json["version"],
      lang: json["lang"],
      isNsfw: json["nsfw"] == 1,
      isOnline: json["isOnline"] == 1,
      repoUrl: json["repoUrl"],
    );
  }
}

typedef ExtensionIcon = Uint8List;
typedef ExtensionCode = Uint8List;
