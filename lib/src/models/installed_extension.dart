import 'package:isar/isar.dart';
import 'package:meiyou_extensions_lib/models.dart';
part 'installed_extension.g.dart';

@collection
class InstalledExtension extends Extension {
  InstalledExtension({
    super.id = Isar.autoIncrement,
    super.name,
    super.pkg,
    super.description,
    super.version,
    super.sourceType,
    super.nsfw,
    super.lang,
    super.update,
    this.iconBytes = const [],
    List<InstalledSource> sources = const [],
  }) : super(sources: sources);

  final List<byte> iconBytes;

  @override
  List<InstalledSource> get sources => super.sources as List<InstalledSource>;
}

@embedded
class InstalledSource extends ExtensionSource {
  final List<byte> evc;
  InstalledSource({
    super.id,
    super.name,
    super.lang,
    super.baseUrl,
    super.versionId,
    this.evc = const [],
  });
}
