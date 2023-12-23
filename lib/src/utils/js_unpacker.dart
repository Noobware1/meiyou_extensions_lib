import 'dart:math';

/// A JSPacker.
class JSUnpacker {
  /// get js code
  final String packedJS;

  JSUnpacker(this.packedJS);

  /// detect code has match
  bool detect() {
    final js = packedJS.replaceAll(' ', '');
    final exp = RegExp('eval\\(function\\(p,a,c,k,e,(?:r|d)');
    return exp.hasMatch(js);
  }

  /// change code to value
  String? unpack() {
    try {
      /// pattern
      var exp = RegExp(
        "\\}\\s*\\('(.*)',\\s*(.*?),\\s*(\\d+),\\s*'(.*?)'\\.split\\('\\|'\\)",
        dotAll: true,
      );

      /// get value from elementAt 0
      var matches = exp.allMatches(packedJS).elementAt(0);

      /// if group count is 4
      if (matches.groupCount == 4) {
        /// get value with group
        var payload = matches.group(1)!.replaceAll("\\'", "'");
        final radixStr = matches.group(2);
        final countStr = matches.group(3);
        final sym = matches.group(4)!.split('|');

        /// initial value
        int radix;
        int count;

        /// set radix value
        try {
          radix = int.parse(radixStr!);
        } catch (_) {
          radix = 36;
        }

        /// set count value
        try {
          count = int.parse(countStr!);
        } catch (_) {
          count = 0;
        }

        /// error condition
        if (sym.length != count) {
          throw Exception('Unknown p.a.c.k.e.r. encoding');
        }

        /// call UnBase class
        final unBase = UnBase(radix);

        /// Pattern
        exp = RegExp('\\b\\w+\\b');

        /// get value from elementAt 0
        matches = exp.allMatches(payload).elementAt(0);

        /// initial value
        var replaceOffset = 0;

        /// foreach looping
        exp.allMatches(payload).forEach((element) {
          /// get word from group 0
          final word = element.group(0);

          var value = '';

          /// change code to value
          final x = unBase.unBase(word!);

          /// set value
          if (x < sym.length) {
            value = sym[x];
          }

          if (value.isNotEmpty) {
            payload = payload.replaceRange(element.start + replaceOffset,
                element.end + replaceOffset, value);
            replaceOffset += value.length - word.length;
          }
        });

        /// return result
        return payload;
      }
      return null;
    } catch (_) {
      try {
        return _JsUnpack(packedJS).unpack();
      } catch (_) {
        return null;
      }
    }
  }
}

/// UnBase Class
class UnBase {
  final String alpha_62 =
      '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  final String alpha_95 =
      " !\"#\$%&\\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";
  String alphabet = '';
  Map<String, int> dictionary = {};
  int radix = 0;

  UnBase(int radix) {
    this.radix = radix;

    if (radix > 36) {
      if (radix < 62) {
        alphabet = alpha_62.substring(0, radix);
      } else if (radix > 62 && radix < 95) {
        alphabet = alpha_95.substring(0, radix);
      } else if (radix == 62) {
        alphabet = alpha_62;
      } else if (radix == 95) {
        alphabet = alpha_95;
      }

      for (var i = 0; i < alphabet.length; i++) {
        dictionary[alphabet.substring(i, i + 1)] = i;
      }
    }
  }

  /// change code to value
  int unBase(String str) {
    var ret = 0;

    if (alphabet.isEmpty) {
      ret = int.parse(str, radix: radix);
    } else {
      for (var i = 0; i < str.length; i++) {
        ret += pow(radix, i).toInt() *
            dictionary[str.substring(i, i + 1)]!.toInt();
      }
    }
    return ret;
  }
}

class _JsUnpack {
  final String source;
  const _JsUnpack(this.source);

  /// return true if contain P.A.C.K.E.R code
  static bool detect(String html) {
    var reg = RegExp(
      r"eval[ ]*\([ ]*function[ ]*\([ ]*p[ ]*,[ ]*a[ ]*,[ ]*c["
      r" ]*,[ ]*k[ ]*,[ ]*e[ ]*,[ ]*",
    );
    return reg.hasMatch(html);
  }

  ///Unpacks P.A.C.K.E.R. packed js code
  String unpack() {
    var lst = _filterargs();
    String payload = lst[0];
    List<String> symtab = lst[1];
    int radix = lst[2];
    int count = lst[3];
    late UnBaser unBaser;

    String getString(int c, {int? a}) {
      a ??= radix;
      var foo = String.fromCharCode(c % a + 161);
      if (c < a) {
        return foo;
      } else {
        return getString(c ~/ a, a: a) + foo;
      }
    }

    if (count != symtab.length) {
      throw ("Malformed p.a.c.k.e.r. symtab.");
    }
    try {
      unBaser = UnBaser(radix);
    } catch (_) {
      throw ("base conversion error");
    }

    payload = payload.replaceAll("\\\\", "\\").replaceAll("\\'", "'");
    var p = RegExp(r'eval\(function\(p,a,c,k,e.+?String\.fromCharCode\(([^)]+)')
        .firstMatch(payload);
    bool pNew = false;
    if (p?.groupCount != 0) {
      pNew = RegExp(r'String\.fromCharCode\(([^)]+)')
              .firstMatch(payload)
              ?.group(0)
              ?.split('+')[0] ==
          '161';
    }
    if (pNew) {
      for (int i = count - 1; i != -1; i--) {
        payload = payload.replaceAll(getString(i), symtab[i]);
      }
      return _replaceJsStrings(_replaceStrings(payload));
    }
    var source = payload;
    var reg = RegExp(
      r"\b\w+\b",
    ).allMatches(payload);
    int correct = 0;
    for (var element in reg) {
      var word = payload.substring(element.start, element.end);
      var lookUp = "";
      if (radix == 1) {
        lookUp = symtab[int.parse(word)];
      } else {
        var v = unBaser.toBase10(word);
        if (v < symtab.length) {
          try {
            lookUp = symtab[v];
          } catch (_) {}
          if (lookUp.isEmpty) lookUp = word;
        } else {
          lookUp = word;
        }
      }
      source = source.replaceRange(element.start + correct,
          element.start + word.length + correct, lookUp);
      correct += lookUp.length - (element.end - element.start);
    }
    return _replaceStrings(source);
  }

  String _replaceStrings(String source) {
    var re =
        RegExp(r'var *(_\w+)=\["(.*?)"];', dotAll: true).firstMatch(source);
    if (re == null) {
      return source;
    }
    var varname = re.group(0)!;
    var strings = re.group(1)!;
    var startpoint = strings.length;
    var lookup = strings.split('","');
    var variable = '$varname[%d]';
    for (var i = 0; i < lookup.length; i++) {
      var value = lookup.elementAt(i);
      if (value.contains('\\x')) {
        value = value.replaceAll('\\x', '');
        value = _unHexlify(value);
        source = source.replaceAll(
            variable.replaceAll("%d", i.toString()), '"$value"');
      }
    }
    return source.substring(startpoint);
  }

  String _replaceJsStrings(String source) {
    var re = RegExp(r'\\x([0-7][0-9A-F])').firstMatch(source);
    if (re == null) return source;
    for (var i = 0; i < re.groupCount; i++) {
      source =
          source.replaceAll('\\x${re.group(i)!}', _unHexlify(re.group(i)!));
    }
    return "";
  }

  String _unHexlify(String str) {
    var s = "";
    var un = const UnBaser(16);
    for (var value in str.codeUnits) {
      s += un.unBase(value);
    }
    return s;
  }

  List<dynamic> _filterargs() {
    var argsRegex = r"}\s*\('(.*)',\s*(.*?),\s*(\d+),\s*'(.*?)'\.split\('\|'\)";
    var all = RegExp(argsRegex).firstMatch(source);
    try {
      var payload = all!.group(1);
      var radix = int.tryParse(all.group(2)!) ?? 36;
      var count = int.parse(all.group(3)!);
      var symtab = all.group(4)!.split("|");
      return [payload, symtab, radix, count];
    } catch (_) {
      throw ('Corrupted p.a.c.k.e.r. data.');
    }
  }
}

class UnBaser {
  static const alphabet = {
    62: '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',
    95: (' !"#\$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ'
        r'[\]^_`abcdefghijklmnopqrstuvwxyz{|}~')
  };
  final int base;
  const UnBaser(this.base);

  String _convert(int num, String base, String out) {
    if (num >= base.length) {
      out = _convert(num ~/ base.length, base, out);
      out = _convert(num % base.length, base, out);
      return out;
    } else {
      var characters = List.generate(
        base.codeUnits.length,
        (index) {
          return String.fromCharCode(base.codeUnits[index]);
        },
      );
      out += characters[num];
      return out;
    }
  }

  int _convert2(String str, String base) {
    num out = 0;

    int i = 0;
    for (var element in str.codeUnits.reversed) {
      out += (base.indexOf(String.fromCharCode(element)) * pow(this.base, i));
      i++;
    }
    return out.toInt();
  }

  ///convert [num] in base[base]
  ///exemple
  ///'''dart
  ///var un = UnBaser(16);
  ///print(un.unBase(384648));//output 5de88
  ///'''
  String unBase(int num) {
    String? toBase;
    if (2 <= base && base < 62) {
      toBase = alphabet[62]!.substring(0, base);
    } else if (62 < base && base < 62) {
      toBase = alphabet[92]!.substring(0, base);
    }
    if (toBase == null) {
      throw ("base not found");
    }
    return _convert(num, toBase, "");
  }

  ///convert [string] in base 10
  ///exemple
  ///'''dart
  ///var un = UnBaser(16);
  ///print(un.toBase10("5de88"));//output 384648
  ///'''
  int toBase10(String string) {
    var allIn = true;
    var base = alphabet[62]!;
    for (var element in string.codeUnits) {
      if (!base.contains(String.fromCharCode(element))) {
        allIn = false;
        break;
      }
    }
    if (!allIn) base = alphabet[95]!;
    return _convert2(string, base);
  }
}