import 'dart:typed_data';

import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/meiyou_extensions_lib.dart';

/// A class that compiles packages.
///
/// The `ExtenstionComplier` class has the following methods:
/// * `compilePackages`: Compiles a map of packages into a `Uint8List`.
class ExtenstionComplier {
  /// Compiles a map of packages into a `Uint8List`.
  ///
  /// The method takes the following parameters:
  /// * `packages`: A map of packages to compile.
  ///
  Uint8List compilePackages(Map<String, Map<String, String>> packages) {
    final compiler = Compiler();
    compiler.defineBridgeEnum($ShowType.$declaration);
    compiler.defineBridgeEnum($ShowStaus.$declaration);
    compiler.defineBridgeEnum($MediaItemType.$declaration);
    compiler.defineBridgeEnum($MediaType.$declaration);
    compiler.defineBridgeEnum($SubtitleFormat.$declaration);
    compiler.defineBridgeEnum($VideoFormat.$declaration);

    compiler.defineBridgeClasses([
      //Extenstions
      $StringUtils.$declaration,
      $NumUtils.$declaration,
      $IterableUtils.$declaration,
      $ListUtils.$declaration,
      $CryptoOptions.$declaration,
      $CryptoUtils.$declaration,

      //OkHttp
      $Element.$declaration,
      $Document.$declaration,
      $ElementObject.$declaration,
      $DocumentObject.$declaration,
      $OkHttpResponseObject.$declaration,

      //HomePage
      $HomePageData.$declaration,
      $HomePageRequest.$declaration,
      $HomePage.$declaration,
      $HomePageList.$declaration,

      //MediaDetails
      $MediaDetails.$declaration,
      $SearchResponse.$declaration,
      $ActorData.$declaration,
      $SeasonData.$declaration,
      $Episode.$declaration,
      $SeasonList.$declaration,
      $MediaItem.$declaration,
      $Anime.$declaration,
      $TvSeries.$declaration,
      $Movie.$declaration,
      $ExtractorLink.$declaration,

      //Media
      $Media.$declaration,
      $Subtitle.$declaration,
      $Video.$declaration,
      $VideoQuality.$declaration,
      $VideoSource.$declaration,

      //App utils
      $AppUtils.$declaration,

      //Interfaces
      $ExtractorApi.$declaration,
      $BasePluginApi.$declaration,
    ]);
    final program = compiler.compile(packages);

    final bytecode = program.write();
    return bytecode;
  }

  Runtime compileWriteAndLoad(Map<String, Map<String, String>> packages) {
    return ExtenstionLoader().runtimeEval(compilePackages(packages));
  }
}
