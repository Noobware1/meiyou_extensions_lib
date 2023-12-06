import 'dart:io';

import 'package:meiyou_extenstions/src/extenstions/string.dart';

void main(List<String> args) async {
  if (args.length < 3) {
    throw ArgumentError('Please provide both folder name and class name');
  }

  final folderName = args[0];
  final className = args[2];
  final returnType = args.length == 5 ? args[4] : null;
  final currentDir =
      Directory.current.path.substringBeforeLast('bin').replaceAll('\\', '/');
  final folder = Directory(('${currentDir}lib/src/extractors/$folderName'))
    ..createSync(recursive: true);

  final file = File('${folder.path}/$folderName.dart')
    ..createSync()
    ..writeAsStringSync(genratedFileCode(className, returnType));

  print('Generating Files...');
  final outputFile = File('${file.path.substringBeforeLast('.dart')}.eval.dart')
    ..createSync()
    ..writeAsStringSync(
        genratedEvalFileCode(folderName, className, returnType));

  print('');
  print('Adding to lib/compiler.dart...');

  final complierFile = File('${currentDir}lib/src/compiler.dart');
  complierFile.writeAsStringSync(complierFile
      .readAsStringSync()
      .replaceFirst('//Generated Extractors',
          '//Generated Extractors\nimport \'package:meiyou_extenstions/src/extractors/$folderName/$folderName.eval.dart\';')
      .replaceFirst(
          "//Extractors", "//Extractors\n      \$$className.\$declaration,"));

  final loaderFile = File('${currentDir}lib/src/loader.dart');
  loaderFile.writeAsStringSync(loaderFile
      .readAsStringSync()
      .replaceFirst('//Generated Extractors',
          '//Generated Extractors\nimport \'package:meiyou_extenstions/src/extractors/$folderName/$folderName.eval.dart\';')
      .replaceFirst("//Extractors",
          "//Extractors\n    \$$className.configureForRuntime(runtime);"));

  print('');
  print('Adding export to lib/extractors.dart...');
  final extractorsExportFile = File('${currentDir}lib/extractors.dart');
  extractorsExportFile.writeAsStringSync(
      "${extractorsExportFile.readAsStringSync()}\n//$className\nexport 'src/extractors/$folderName/$folderName.dart';\nexport 'src/extractors/$folderName/$folderName.eval.dart';");

  print('');
  print(
      'Please configure this .eval.dart file for runtime and add it to loader.dart');
  print('SucessFully created file at ${outputFile.path}');
}

String genratedFileCode(String className, String? returnType) {
  return """
import 'package:meiyou_extenstions/models.dart';

class $className extends ExtractorApi {
  $className(super.extractorLink);

  @override
  Future<${getReturnType(returnType)}> extract() {
    // TODO: implement extract
    throw UnimplementedError();
  }

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();
}

""";
}

String getReturnType(String? returnType) {
  switch (returnType?.toLowerCase() ?? '') {
    case 'video':
      return 'Video';

    default:
      return 'Media';
  }
}

String genratedEvalFileCode(
    String fileName, String className, String? returnType) {
  returnType = getReturnType(returnType);

  String addImport() {
    switch (returnType) {
      case 'Video':
        return "import 'package:meiyou_extenstions/src/bridge_models/media/video/video.dart';";

      default:
        return 'import \'package:meiyou_extenstions/src/bridge_models/media/media.dart\';';
    }
  }

  return """
// GENERATED CODE - DO NOT MODIFY BY HAND IF YOU DON'T KNOW WHAT YOU ARE DOING

// **************************************************************************

// GENERATED BY - make_extractor_api.dart

// **************************************************************************

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/bridge_models/extractor_link.dart';
import 'package:meiyou_extenstions/src/bridge_models/interfaces/extractor_api.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/extractors/$fileName/$fileName.dart';
${addImport()}

class \$$className extends $className with \$Bridge<$className> {
  \$$className(super.extractorLink);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, '$className.', \$$className.\$new,
        isBridge: true);
  }

  static const \$type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, '$className'));

  static const \$declaration = BridgeClassDef(
      BridgeClassType(\$type, isAbstract: false, \$extends: \$ExtractorApi.\$type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(\$type),
            generics: {},
            namedParams: [],
            params: [
              BridgeParameter('extractorLink',
                  BridgeTypeAnnotation(\$ExtractorLink.\$type), false)
            ],
          ),
        )
      },
      methods: {
        'extract': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [\$${getReturnType(returnType)}.\$type])),
          ),
        )
      },
      fields: {
        'extractorLink':
            BridgeFieldDef(BridgeTypeAnnotation(\$ExtractorLink.\$type))
      },
      getters: {
        'name': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
          isStatic: false,
        )
      },
      bridge: true);

  static \$Value? \$new(Runtime runtime, \$Value? target, List<\$Value?> args) {
    return \$$className(args[0]?.\$value);
  }

  @override
  \$Value? \$bridgeGet(String identifier) {
    switch (identifier) {
      case 'name':
        return \$String(super.name);
      case 'extractorLink':
        return \$ExtractorLink.wrap(super.extractorLink);
      case 'extract':
        return \$Function((runtime, target, args) =>
            \$Future.wrap(super.extract().then((value) => \$${getReturnType(returnType)}.wrap(value))));
      default:
        return const \$null();
    }
  }

  @override
  void \$bridgeSet(String identifier, \$Value value) {}
}


""";
}
