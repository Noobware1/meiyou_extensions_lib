import 'package:nice_dart/nice_dart.dart';

extension on int? {
  int? ifNull(
    int? Function() onNull,
  ) {
    if (this == null) {
      try {
        return onNull();
      } catch (_) {
        return null;
      }
    }
    return this;
  }
}

class DurationUtils {
  static Duration? tryParse(String value) {
    try {
      return parse(value);
    } catch (_) {
      return null;
    }
  }

  static Duration parse(String value) {
    value = value.trim().replaceFirst(" ", "");

    final minutes =
        RegExp("(\\d+\\shr)|(\\d+\\shour)|(\\d+\\smin)|(\\d+\\ssec)")
            .allMatches(value)
            .let((it) {
      var seconds = 0;
      for (var element in it) {
        final timeText = element.group(0)!;
        if (timeText.isNotEmpty) {
          final time = timeText.filter((s) => s.isDigit).trim().toInt();
          final scale = timeText.filter((s) => !s.isDigit).trim();
          final int timeVal;
          switch (scale) {
            case "hr":
            case "hour":
              timeVal = time * 60 * 60;
              break;
            case "min":
              timeVal = time * 60;
              break;
            case "sec":
              timeVal = time;
              break;
            default:
              timeVal = 0;
              break;
          }

          seconds += timeVal;
        }

        if (seconds > 0) {
          return seconds ~/ 60;
        }
        return null;
      }
    }).ifNull(() {
      return RegExp("([0-9]*)h.*?([0-9]*)m")
          .firstMatch(value)
          ?.groups([1, 2])
          .takeIf((it) => it.isNotEmpty && it.any((e) => e != null))
          .let((it) {
            final hours = it![0].toIntOrNull();
            final minutes = it[1].toIntOrNull();
            if (minutes != null && hours != null) {
              return hours * 60 + minutes;
            }
            return null;
          });
    }).ifNull(() {
      return RegExp("([0-9]*)m")
          .firstMatch(value)
          ?.groups([0, 1])
          .takeIf((it) => it.isNotEmpty && it.any((e) => e != null))
          .let((it) {
            final minutes = it![1].toIntOrNull();
            if (minutes != null) {
              return minutes;
            }
            return null;
          });
    });

    return Duration(minutes: minutes!);
  }
}
