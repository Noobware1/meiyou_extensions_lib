import 'package:meiyou_extenstions/src/extenstions/iterable.dart';
import 'package:meiyou_extenstions/src/models/element.dart';
import 'package:meiyou_extenstions/src/utils/try_catch.dart';
import 'package:ok_http_dart/dom.dart';
import 'package:ok_http_dart/ok_http_dart.dart';

class DocumentObject {
  const DocumentObject(this.document);
 
  final Document document;


  List<ElementObject> select(String selector) {
    return (trySync(() => document.select(selector)) ?? [])
        .mapAsList((it) => ElementObject(it));
  }

  ElementObject selectFirst(String selector) {
    return trySync(() => ElementObject(document.selectFirst(selector))) ??
        ElementObject(Element.tag('div'));
  }

  ElementObject? trySelectFirst(String selector) {
    return trySync(() => ElementObject(document.selectFirst(selector)));
  }
}
