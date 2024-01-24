import 'package:html/dom.dart';

extension DocumentExtension on Document {
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
}

extension ElementExtensions on Element {
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
