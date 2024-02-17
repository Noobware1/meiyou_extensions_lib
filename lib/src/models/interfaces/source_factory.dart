import 'package:meiyou_extensions_lib/src/models/interfaces/source.dart';
import 'package:meiyou_extensions_lib/src/network/network_helper.dart';

/// A factory for creating sources at runtime.
abstract class SourceFactory {
  const SourceFactory();

  /// Create a new copy of the sources
  /// returns the created sources
  List<Source> getSources(NetworkHelper networkHelper);
}
