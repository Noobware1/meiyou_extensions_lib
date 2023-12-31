import 'dart:io';
import 'dart:typed_data';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_security.dart';
import 'package:meiyou_extensions_lib/packages/crypto_dart/block_ciphers/aes.dart';
import 'package:meiyou_extensions_lib/packages/crypto_dart/crypto_dart.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/actor_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/document.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/element.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/episode.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/homepage.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/interfaces/base_plugin_api.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/interfaces/extractor_api.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/subtitle.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/subtitle_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/video.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/video_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/video_quailty.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/video_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_details.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_item/anime.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_item/movie.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media_item/tv_series.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/ok_http_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/season_list.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/search_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/season_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/show_status.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/show_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/app_utils.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/crypto/crypto_options.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/iterable_utils.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/list_utils.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/num_utils.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/utils_models/string_utils.dart';
import 'package:meiyou_extensions_lib/src/extenstions/string.dart';

/// A class to load extenstion which is a form of evc byte code.
class ExtenstionLoader {
  /// Loads a extenstion from a byte code.
  ///   * `bytecode`: The byte code of the extenstion.
  Runtime runtimeEval(Uint8List bytecode) {
    final runtime = Runtime(bytecode.buffer.asByteData());

    runtime.grant(NetworkPermission.any);

    //Enums
    $ShowType.configureForRuntime(runtime);
    $ShowStaus.configureForRuntime(runtime);
    $MediaItemType.configureForRuntime(runtime);
    $MediaType.configureForRuntime(runtime);
    $SubtitleFormat.configureForRuntime(runtime);
    $VideoFormat.configureForRuntime(runtime);

    //HomePage

    $HomePageData.configureForRuntime(runtime);
    $HomePageRequest.configureForRuntime(runtime);
    $HomePage.configureForRuntime(runtime);
    $HomePageList.configureForRuntime(runtime);

    //Extenstions
    $StringUtils.configureForRuntime(runtime);
    $NumUtils.configureForRuntime(runtime);
    $IterableUtils.configureForRuntime(runtime);
    $ListUtils.configureForRuntime(runtime);
    // $CryptoOptions.configureForRuntime(runtime);

    //OkHttp
    $ElementObject.configureForRuntime(runtime);
    $DocumentObject.configureForRuntime(runtime);
    $OkHttpResponseObject.configureForRuntime(runtime);

    //MediaDetails
    $MediaDetails.configureForRuntime(runtime);
    $SearchResponse.configureForRuntime(runtime);
    $ActorData.configureForRuntime(runtime);
    $SeasonData.configureForRuntime(runtime);
    $Episode.configureForRuntime(runtime);
    $SeasonList.configureForRuntime(runtime);
    $MediaItem.configureForRuntime(runtime);
    $Anime.configureForRuntime(runtime);
    $TvSeries.configureForRuntime(runtime);
    $Movie.configureForRuntime(runtime);
    $ExtractorLink.configureForRuntime(runtime);

    //Media
    $Media.configureForRuntime(runtime);
    $Subtitle.configureForRuntime(runtime);
    $Video.configureForRuntime(runtime);
    $VideoQuality.configureForRuntime(runtime);
    $VideoSource.configureForRuntime(runtime);
    $Subtitle.configureForRuntime(runtime);

    //App utils
    $AppUtils.configureForRuntime(runtime);

    //Interfaces
    $ExtractorApi.configureForRuntime(runtime);
    $BasePluginApi.configureForRuntime(runtime);

    return runtime;
  }
}

class CustomCompiler extends Compiler {
  @override
  Program compile(Map<String, Map<String, String>> packages) {
    packages.forEach((key, value) {
      value.forEach((_key, _value) {
        packages[key]![_key] = reslovePackagesImport(_value);
      });
    });

    return super.compile(packages);
  }

  Program compileExtensionCode(String code) {
    return compile({'meiyou': _getAllFiles(code)});
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
