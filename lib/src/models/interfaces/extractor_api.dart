import 'package:meiyou_extenstions/src/models/extractor_link.dart';
import 'package:meiyou_extenstions/src/models/media/media.dart';

/// [ExtractorApi] is an abstract class that serves as a blueprint for building extractors for the [BasePluginApi] class.
/// It is used by the function loadMedia in the [BasePluginApi]`.
abstract class ExtractorApi {
  /// The [ExtractorLink] parameter cannot be null.
  ExtractorApi(this.extractorLink);

  /// The [ExtractorLink] instance that this [ExtractorApi] will use to perform extraction.
  final ExtractorLink extractorLink;

  String get name;

  /// Extracts the media from the [ExtractorLink].
  ///
  /// Returns a [Future] that completes with a [Media] object, which can be of type [Video].
  Future<Media> extract();
}
