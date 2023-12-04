import 'dart:io';

extension FileUtils on File {
  Future<FileSystemEntity?> deleteIfExist({bool recursive = false}) async {
    if (await exists()) {
      return delete(recursive: recursive);
    }
    return null;
  }

  void deleteIfExistSync({bool recursive = false}) {
    if (existsSync()) {
      deleteSync(recursive: recursive);
    }
    return;
  }

  void createIfNotExistSync({bool recursive = false, bool exclusive = false}) {
    if (!existsSync()) createSync(recursive: recursive, exclusive: exclusive);
  }

  Future<File?> createIfNotExist(
      {bool recursive = false, bool exclusive = false}) async {
    if (await exists()) return null;
    return await create(recursive: recursive, exclusive: exclusive);
  }
}
