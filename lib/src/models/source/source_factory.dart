import 'package:meiyou_extensions_lib/src/models/source/source.dart';

/// A factory for creating sources at runtime.
abstract class SourceFactory {
  const SourceFactory();

  /// Create a new copy of the sources
  /// returns the created sources
  List<Source> getSources();
}
