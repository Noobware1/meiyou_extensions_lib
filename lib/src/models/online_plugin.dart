import 'package:meiyou_extenstions/meiyou_extenstions.dart';

class OnlinePlugin extends Plugin {
  OnlinePlugin(
      {super.id,
      required super.name,
      required super.type,
      required super.author,
      required super.description,
      required super.lang,
      required super.baseUrl,
      required super.version,
      required super.downloadUrl,
      required this.iconUrl});

  final String iconUrl;

  @override
  String toString() {
    return 'OnlinePlugin(id: $id, name: $name, type: $type, author: $author, description: $description, lang: $lang, baseUrl: $baseUrl, version: $version, downloadUrl: $downloadUrl, iconUrl: $iconUrl)';
  }
}
