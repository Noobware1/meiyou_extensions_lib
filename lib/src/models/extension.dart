import 'package:meiyou_extensions_lib/src/models/interfaces/stub_source.dart';

abstract class Extension {
  abstract final String name;
  abstract final String pkgName;
  abstract final String versionName;
  abstract final int versionCode;
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
  final int versionCode;
  @override
  final String? lang;
  @override
  final bool isNsfw;

  final String? pkgFactory;
  final List<ExtensionSource> sources;
  final List<int>? icon;
  final bool hasUpdate;
  final bool isOnline;
  final bool lastUsed;
  final String? repoUrl;

  InstalledExtension({
    required this.name,
    required this.pkgName,
    required this.versionName,
    required this.versionCode,
    required this.lang,
    required this.isNsfw,
    required this.pkgFactory,
    required this.sources,
    required this.icon,
    required this.hasUpdate,
    required this.isOnline,
    required this.lastUsed,
    required this.repoUrl,
  });
}

class ExtensionSource {
  final int id;
  final String lang;
  final String name;
  final bool supportsHomepage;
  final bool isStub;
  final bool isUsedLast;

  ExtensionSource({
    required this.id,
    required this.lang,
    required this.name,
    required this.supportsHomepage,
    required this.isStub,
    required this.isUsedLast,
  });

  String get visualName =>
      lang.isEmpty ? name : "$name (${lang.toUpperCase()})";

  String get key => isUsedLast ? "$id-lastused" : "$id";
}

class AvailableExtension extends Extension {
  @override
  final String name;
  @override
  final String pkgName;
  @override
  final String versionName;
  @override
  final int versionCode;
  @override
  final String? lang;
  @override
  final bool isNsfw;

  final String? pkgFactory;
  final List<AvailableSource> sources;
  final String pluginName;
  final String iconUrl;
  final String repoUrl;

  AvailableExtension({
    required this.name,
    required this.pkgName,
    required this.versionName,
    required this.versionCode,
    required this.lang,
    required this.isNsfw,
    required this.pkgFactory,
    required this.sources,
    required this.pluginName,
    required this.iconUrl,
    required this.repoUrl,
  });
}

class AvailableSource {
  final int id;
  final String lang;
  final String name;
  final String baseUrl;

  AvailableSource({
    required this.id,
    required this.lang,
    required this.name,
    required this.baseUrl,
  });

  StubSource toStubSource() {
    return StubSource(
      id: id,
      lang: lang,
      name: name,
    );
  }
}
