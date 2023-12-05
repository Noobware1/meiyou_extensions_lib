import 'dart:io';

import 'package:meiyou_extenstions/src/extenstions/string.dart';

void main(List<String> args) async {
  if (args.length < 2) {
    throw ArgumentError('Please provide both folder name and class name');
  }
  final folderName = args[0];
  final folder = Directory(
      ('${Directory.current.path.substringBeforeLast('bin').replaceAll('\\', '/')}lib/src/extractors/$folderName'))
    ..createSync(recursive: true);

  final className = args[1];

  final file = File('${folder.path}/$folderName.dart')
    ..createSync()
    ..writeAsStringSync(
        genratedFileCode(className, args.length == 3 ? args[2] : null));

  print('Reading File...');
  final outputFile = File('${file.path.substringBeforeLast('.dart')}.eval.dart')
    ..createSync()
    ..writeAsStringSync(genratedEvalFileCode(folderName, className));

  print('SucessFully created file at ${outputFile.path}');
}

String genratedFileCode(String className, String? returnType) {
  return """
import 'package:meiyou_extenstions/models.dart';

class $className extends ExtractorApi {
  $className(super.extractorLink);

  @override
  Future<${returnType ?? "Media"}> extract() {
    // TODO: implement extract
    throw UnimplementedError();
  }

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();
}

""";
}

String genratedEvalFileCode(String fileName, String className) {
  return """
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/bridge_models/extractor_link.dart';
import 'package:meiyou_extenstions/src/bridge_models/interfaces/extractor_api.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/media.dart';
import 'package:meiyou_extenstions/src/bridge_models/media/video/video.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/extractors/$fileName/$fileName.dart';
import 'package:meiyou_extenstions/src/models/interfaces/extractor_api.dart';
import 'package:meiyou_extenstions/src/models/media/video/video.dart';

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
                BridgeTypeRef(CoreTypes.future, [\$Media.\$type])),
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

  static \$Value? \$extract(Runtime runtime, \$Value? target, List<\$Value?> args) {
    return \$Future
        .wrap((target?.\$value as ExtractorApi).extract().then((value) {
      if (value is Video) {
        return \$Video.wrap(value);
      }
      if (value is \$Video) {
        return value;
      } else {
        return null;
      }
    }));
  }

  @override
  \$Value? \$bridgeGet(String identifier) {
    switch (identifier) {
      case 'name':
        return \$String(super.name);
      case 'extractorLink':
        return \$ExtractorLink.wrap(super.extractorLink);
      case 'extract':
        return const \$Function(\$extract);
      default:
        return const \$null();
    }
  }

  @override
  void \$bridgeSet(String identifier, \$Value value) {}

  @override
  Future<Video> extract() async {
    final value = (await (\$_invoke('extract', []) as Future));
    return value as Video;
  }

  @override
  String get name => \$_get('name');
}

""";
}
