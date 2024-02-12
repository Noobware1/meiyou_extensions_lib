import 'package:isar/isar.dart';

class Extension {
  final Id id;
  final String name;
  final String pkg;
  final String description;
  final String version;
  final int sourceType;
  final int nsfw;
  final String update;
  final String lang;
  final List<ExtensionSource> sources;

  Extension({
    required this.id,
    this.name = 'Meiyou: default',
    this.pkg = '',
    this.description = '',
    this.version = '',
    this.sourceType = 0,
    this.nsfw = 0,
    this.lang = '',
    this.update = '',
    required this.sources,
  }) : assert(name.startsWith('Meiyou:'));
}

class ExtensionSource {
  final String name;
  final String lang;
  final int id;
  final String? baseUrl;
  final int? versionId;

  ExtensionSource({
    this.name = '',
    this.lang = '',
    this.id = 0,
    this.baseUrl,
    this.versionId,
  });
}
