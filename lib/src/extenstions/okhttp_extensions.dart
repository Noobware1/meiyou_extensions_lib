import 'dart:convert';
import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/src/utils/try_catch.dart';

import 'package:okhttp/response.dart';

extension ResponseBodyExtensions on ResponseBody {
  T json<T>([T Function(dynamic json)? fromJson]) {
    return fromJson != null ? fromJson(jsonDecode(string)) : jsonDecode(string);
  }

  T? jsonSafe<T>([T Function(dynamic json)? fromJson]) {
    return trySync(() => json(fromJson));
  }

  Document get document => Document.html(string);
}

extension DocumentExtension on Document? {
  List<Element>? select(String selector) {
    try {
      return this?.querySelectorAll(selector);
    } catch (e) {
      return [];
    }
  }

  Element? selectFirst(String selector) {
    try {
      return this?.querySelector(selector);
    } catch (e) {
      return null;
    }
  }

  String? attr(String attribute) {
    try {
      return this?.attributes[attribute];
    } catch (e) {
      return null;
    }
  }
}

extension ElementtExtension on Element {
  List<Element> select(String selector) {
    try {
      return querySelectorAll(selector);
    } catch (e) {
      return [];
    }
  }

  Element? selectFirst(String selector) {
    try {
      return querySelector(selector);
    } catch (e) {
      return null;
    }
  }

  String? attr(String attribute) {
    try {
      return attributes[attribute];
    } catch (e) {
      return null;
    }
  }

  String? get getSrc {
    try {
      return regSrcMatcher(outerHtml);
    } catch (e) {
      return null;
    }
  }

  String? get getImg {
    try {
      return regImgMatcher(outerHtml);
    } catch (e) {
      return null;
    }
  }

  String? get getHref {
    try {
      return regHrefMatcher(outerHtml);
    } catch (e) {
      return null;
    }
  }

  String? get getDataSrc {
    try {
      return regDataSrcMatcher(outerHtml);
    } catch (e) {
      return null;
    }
  }
}

/// Shamelessly copied from https://github.com/kodjodevf/mangayomi/blob/main/lib/utils/reg_exp_matcher.dart
String regHrefMatcher(String input) {
  RegExp exp = RegExp(r'href="([^"]+)"');
  Iterable<Match> matches = exp.allMatches(input);
  String? firstMatch = matches.first.group(1);
  return firstMatch!;
}

String regDataSrcMatcher(String input) {
  RegExp exp = RegExp(r'data-src="([^"]+)"');
  Iterable<Match> matches = exp.allMatches(input);
  String? firstMatch = matches.first.group(1);
  return firstMatch!;
}

String regSrcMatcher(String input) {
  RegExp exp = RegExp(r'src="([^"]+)"');
  Iterable<Match> matches = exp.allMatches(input);
  String? firstMatch = matches.first.group(1);
  return firstMatch!;
}

String regImgMatcher(String input) {
  RegExp exp = RegExp(r'img="([^"]+)"');
  Iterable<Match> matches = exp.allMatches(input);
  String? firstMatch = matches.first.group(1);
  return firstMatch!;
}
