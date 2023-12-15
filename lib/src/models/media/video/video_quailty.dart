import 'package:meiyou_extenstions/src/extenstions/iterable.dart';
import 'package:meiyou_extenstions/src/extenstions/string.dart';
import 'package:meiyou_extenstions/src/utils/try_catch.dart';

/// A class that represents the quality of a video.
///
/// The `VideoQuality` class has the following properties:
/// * `width`: An integer representing the width of the video.
/// * `height`: An integer representing the height of the video.
class VideoQuality {
  /// Creates a new `VideoQuality` object.
  ///
  /// The constructor takes the following parameters:
  /// * `width`: An integer representing the width of the video.
  /// * `height`: An integer representing the height of the video.
  const VideoQuality(this.width, this.height);

  /// An integer representing the width of the video.
  final int width;

  /// An integer representing the height of the video.
  final int height;

  /// A constant `VideoQuality` object representing unknown video quality.
  static const VideoQuality unknown = VideoQuality(-1, -1);

  /// A constant `VideoQuality` object representing the master quality of an HLS video.
  static const VideoQuality hlsMaster = VideoQuality(0, 0);

  /// Returns a `VideoQuality` object from a string.
  ///
  /// The method takes the following parameters:
  /// * `str`: A string representing the video quality.
  ///
  static VideoQuality getFromString(String str) {
    str = str.toLowerCase().trim();
    if (str.endsWith('p')) {
      final int? value = str.substring(0, str.length - 1).toIntOrNull();
      if (value == null) return unknown;

      VideoQuality((value * 16) ~/ 9, value);
    } else if (str.contains('x')) {
      final heightAndWidth =
          str.split('x').mapAsList((it) => it.trim().toIntOrNull());
      if (heightAndWidth.length != 2 && heightAndWidth.contains(null)) {
        return unknown;
      }

      return trySync(() => VideoQuality(
              heightAndWidth[0]!.toInt(), heightAndWidth[1]!.toInt())) ??
          unknown;
    }

    return unknown;
  }

  @override
  String toString() {
    return 'VideoQuality(width: $width, height: $height)';
  }
}
