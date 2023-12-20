class DurationUtils {
  static Duration? tryParse(String value, String format) {
    try {
      return parse(value, format);
    } catch (_) {
      return null;
    }
  }

  static Duration parse(String value, String format) {
    format = format.toLowerCase();
    if (format.contains('/')) {
      final arr = format.split('/');

      List<int> matches =
          _regExp.allMatches(value).map((e) => int.parse(e.group(0)!)).toList();
      int hours = 0;
      int minutes = 0;
      int seconds = 0;

      if (matches.length < arr.length) {
        while (matches.length < arr.length) {
          if (matches.length == arr.length) break;
          matches = [...matches, 0];
        }
      }

      for (var i = 0; i < arr.length; i++) {
        if (arr[i].startsWith('h')) {
          hours = matches[i];
        } else if (arr[i].startsWith('m')) {
          minutes = matches[i];
        } else if (arr[i].startsWith('s')) {
          seconds = matches[i];
        }
      }
      return Duration(hours: hours, minutes: minutes, seconds: seconds);
    }
    return _parseSingleFormatValue(value, format);
  }

  static final RegExp _regExp = RegExp(r'\d+');

  static Duration _parseSingleFormatValue(String val, String format) {
    final value = int.parse(_regExp.firstMatch(val)!.group(0)!);

    if (format.startsWith('h')) {
      return Duration(hours: value);
    } else if (format.startsWith('m')) {
      return Duration(minutes: value);
    } else if (format.startsWith('s')) {
      return Duration(seconds: value);
    } else {
      throw 'Invaild format';
    }
  }
}
