import 'dart:io';

import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/eval_plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/plugin.dart';
import 'package:meiyou_extensions_lib/src/extenstions/string.dart';

class ExtensionComplier extends Compiler {
  ExtensionComplier() {
    addPlugin(ExtensionLibPlugin());
    addPlugin(OkHttpPlugin());
    addPlugin(CryptoDartPlugin());
  }

  @override
  Program compile(Map<String, Map<String, String>> packages) {
    packages.forEach((key, value) {
      value.forEach((_key, _value) {
        packages[key]![_key] = reslovePackagesImport(_value);
      });
    });

    return super.compile(packages);
  }

  Program compileExtensionCode(String package, String code) {
    return compile({package: _getAllFiles(code)});
  }

  Map<String, String> _getAllFiles(String code) {
    final files = <String, String>{};

    _getFixedImports('main.dart', code, files);

    return files;
  }

  void _getFixedImports(String name, String code, Map<String, String> files) {
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
  }

  // String reslovePackagesImport(String code) {
  //   final packagesRegex = RegExp(
  //       r'''import\s\'package:meiyou_extensions_lib\/packages\/(.*)';''');
  //   final Set<String> fixedImports = {};
  //   packagesRegex.allMatches(code).forEach((element) {
  //     if (element.group(1) != null) {
  //       final import = element.group(1)!.split('/');
  //       final package = import[0];
  //       final file = '$package.dart';
  //       code = code.replaceAll(element.group(0)!, '');
  //       fixedImports.add("import 'package:$package/$file';");
  //     }
  //   });
  //   fixedImports.forEach((element) {
  //     code = '$element\n$code';
  //   });
  //   return code;
  // }

  String reslovePackagesImport(String code) {
    final packagesRegex =
        RegExp(r'''import\s\'package:meiyou_extensions_lib\/(.*)';''');
    final Set<String> fixedImports = {};
    packagesRegex.allMatches(code).forEach((element) {
      if (element.group(1) != null) {
        final import = element.group(1)!.split('/');
        final package = import[0];
        final file = '$package.dart';
        code = code.replaceAll(element.group(0)!, '');
        fixedImports.add("import 'package:$package/$file';");
      }
    });
    fixedImports.forEach((element) {
      code = '$element\n$code';
    });
    return code;
  }
}

extension on Directory {
  String get fixedPath =>
      path.contains('\\') ? path.replaceAll('\\', '/') : path;
}
