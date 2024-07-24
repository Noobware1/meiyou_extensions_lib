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

  final int width;
  final int height;

  factory Quality.fromJson(Map<String, dynamic> json) {
    return Quality(json['width'] as int, json['height'] as int);
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

  /// A `Quality` object representing the default auto quality.
  static const auto = Quality(0, 0);

  // / Returns a `Quality` object from a string.
  // /
  // / The method takes the following parameters:
  // / * `str`: A string representing the video quality.
  // /
  factory Quality.getFromString(String str) {
    str = str.trim().toLowerCase();
    return runCatching(() => RegExp(r'\b(\d{3,4})\s*x\s*(\d{3,4})\b').let((it) {
          final match = it.firstMatch(str);

          final groups = match!.groups([1, 2]);

          return Quality(groups[0]!.toInt(), groups[1]!.toInt());
        })).recoverCatching((_) {
      return RegExp(r'\b(\d{3,4})p\b').let((it) {
        final match = it.firstMatch(str);

        final height = match!.group(1)!.toInt();

        return Quality(height * 16 ~/ 9, height);
      });
    }).getOrDefault(auto);
  }

  @override
  int compareTo(Quality other) {
    return (width == other.width)
        ? height.compareTo(other.height)
        : width.compareTo(other.width);
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }
}
