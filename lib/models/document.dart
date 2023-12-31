import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:meiyou_extensions_lib/src/models/element.dart';
import 'package:meiyou_extensions_lib/src/utils/try_catch.dart';
import 'package:ok_http_dart/dom.dart';
import 'package:ok_http_dart/ok_http_dart.dart';

/// `DocumentObject` is a class that represents a HTML document.

class DocumentObject {
  const DocumentObject(this._document);

  final Document _document;

  /// select: Returns a list of `ElementObject` objects that match the specified CSS selector.
  List<ElementObject> select(String selector) {
    return (trySync(() => _document.select(selector)) ?? [])
        .mapAsList((it) => ElementObject(it));
  }

  /// Returns the first `ElementObject` object that matches the specified CSS selector. If no match is found, it returns an `ElementObject` with a `div` tag.
  ElementObject selectFirst(String selector) {
    return trySync(() => ElementObject(_document.selectFirst(selector))) ??
        ElementObject(Element.tag('div'));
  }

  /// Similar to `selectFirst`, but it returns `null` if no match is found.
  ElementObject? trySelectFirst(String selector) {
    return trySync(() => ElementObject(_document.selectFirst(selector)));
  }
}
