import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:nice_dart/nice_dart.dart';

/// A class that represents the quality of a video.
///
/// The `Quality` class has the following properties:
/// * `width`: An integer representing the width of the video.
/// * `height`: An integer representing the height of the video.
class Quality implements Comparable<Quality> {
  /// Creates a new `Quality` object.
  ///
  /// The constructor takes the following parameters:
  /// * `width`: An integer representing the width of the video.
  /// * `height`: An integer representing the height of the video.
  const Quality(this.width, this.height);

  /// An integer representing the width of the video.
  final int width;

  /// An integer representing the height of the video.
  final int height;

  /// A `Quality` object representing the default auto quality.
  const Quality.auto()
      : height = 0,
        width = 0;

  /// Returns a `Quality` object from a string.
  ///
  /// The method takes the following parameters:
  /// * `str`: A string representing the video quality.
  ///
  factory Quality.getFromString(String str) {
    str = str.toLowerCase().trim();
    if (str.endsWith('p')) {
      final int? value = str.substring(0, str.length - 1).trim().toIntOrNull();
      if (value == null) return Quality.auto();

      return Quality((value * 16) ~/ 9, value);
    } else if (str.contains('x')) {
      final heightAndWidth =
          str.split('x').mapList((it) => it.trim().toIntOrNull());
      if (heightAndWidth.length != 2 || heightAndWidth.contains(null)) {
        return Quality.auto();
      }

      return runCatching(() =>
              Quality(heightAndWidth[0]!.toInt(), heightAndWidth[1]!.toInt()))
          .getOrDefault(Quality.auto());
    }

    return Quality.auto();
  }

  factory Quality.fromJson(Map<String, dynamic> json) {
    return Quality(json['width'], json['height']);
  }

  Map<String, dynamic> toJson() {
    return {
      'width': width,
      'height': height,
    };
  }

  Quality copyWith({
    int? width,
    int? height,
  }) {
    return Quality(
      width ?? this.width,
      height ?? this.height,
    );
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  int compareTo(Quality other) {
    return (width == other.width)
        ? height.compareTo(other.height)
        : width.compareTo(other.width);
  }
}
