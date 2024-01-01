import 'dart:io';

import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/extenstions.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/eval_plugin.dart';
import 'package:meiyou_extensions_lib/src/extenstions/string.dart';

class ExtensionComplier extends Compiler {
  ExtensionComplier() {
    addPlugin(ExtensionLibPlugin());
  }

  @override
  Program compile(Map<String, Map<String, String>> packages) {
    packages.forEach((key, value) {
      value.forEach((_key, _value) {
        packages[key]![_key] = reslovePackagesImport(_value);
      });
    });
    print(packages);
    return super.compile(packages);
  }

  Program compileExtensionCode(String package, String code) {
    return compile({package: getAllFiles(code)});
  }

  Map<String, String> getAllFiles(String code) {
    return _getFixedImports('main.dart', code, {});
  }

  Map<String, String> _getFixedImports(
      String name, String code, Map<String, String> files) {
    final fixedImports = <String, ({String name, String path})>{};

    final regex = RegExp(
        r'^import\s+(?![^\r\n]*meiyou_extensions_lib)[^\r\n;]*;',
        caseSensitive: false,
        multiLine: true);

    final currentDir = Directory.current.path.replaceAll('\\', '/');

    final matches = regex.allMatches(code);

    for (var element in matches) {
      String? filePath;
      var import = element.group(0)!;

      // element.group(0)!.replaceFirst('import ', '').replaceAll("'", '');
      import = import.substring(8, import.length - 2);

      if (import.startsWith('..')) {
        throw Exception(
            'MotherFucker, Releative Imports like $import are not supported fix them');
      }

      final package = currentDir.substringBefore('/src');

      if (!import.startsWith('package:') &&
          !import.startsWith('..') &&
          !import.startsWith('dart:')) {
        filePath = '$currentDir/$import';
      }
      if (import.startsWith('package:')) {
        filePath = '$package/lib/${import.split('/').sublist(1).join('/')}';
      }
      if (filePath != null) {
        fixedImports[import] =
            (name: filePath.substringAfterLast('/'), path: filePath);
      }
    }

    fixedImports.forEach((key, value) {
      code = code.replaceAll(key, value.name);
    });

    files[name] = code;

    fixedImports.forEach((key, value) {
      _getFixedImports(value.name, File(value.path).readAsStringSync(), files);
    });

    return files;
  }

  String reslovePackagesImport(String code) {
    final packagesRegex =
        RegExp(r'''import\s\'package:meiyou_extensions_lib\/(.*)';''');

    packagesRegex.allMatches(code).forEach((element) {
      code = code.replaceFirst(element.group(0)!, '');
    });

    code =
        "import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';\n$code";
    return code;
  }
}

extension on Directory {
  String get fixedPath =>
      path.contains('\\') ? path.replaceAll('\\', '/') : path;
}
