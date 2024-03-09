import 'dart:convert';
import 'dart:typed_data';
import 'package:archive/archive.dart';
import 'package:nice_dart/nice_dart.dart';

class Plugin {
  final ExtensionIcon? icon;
  final ExtensionCode code;
  final PluginMetaData metadata;

  Plugin({this.icon, required this.code, required this.metadata});

  Uint8List encode() {
    final archive = Archive().apply((it) {
      if (icon != null) {
        it.addFile(ArchiveFile('icon.png', icon!.length, icon!));
      }
      it.addFile(ArchiveFile('code.evc', code.length, code));
      it.addFile(ArchiveFile.string('metadata.json', metadata.encode()));
    });
    return Uint8List.fromList(
        ZipEncoder().encode(archive) ?? (throw Exception('Failed to encode')));
  }

  factory Plugin.decode(Uint8List encoded) {
    final archive = ZipDecoder().decodeBytes(encoded);

    Uint8List? getFile(String name) {
      return (archive.findFile(name)?.content as List?)
          ?.cast<int>()
          .let(Uint8List.fromList);
    }

    final icon = getFile('icon.png');
    final code = getFile('code.evc')!;
    final metaData =
        PluginMetaData.decode(utf8.decode(getFile('metadata.json')!));

    return Plugin(icon: icon, code: code, metadata: metaData);
  }
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

  factory PluginMetaData.decode(String json) =>
      PluginMetaData.fromJson(jsonDecode(json));

  String encode() {
    return jsonEncode(toJson());
  }

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
