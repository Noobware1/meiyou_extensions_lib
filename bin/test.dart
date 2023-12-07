import 'package:meiyou_extenstions/meiyou_extenstions.dart';

void main(List<String> args) async {
  final compiled = ExtenstionComplier().compilePackages({
    'meiyou': {
      'main.dart': '''
import 'package:meiyou_extenstions/meiyou_extenstions.dart';

ExtractorApi main(ExtractorLink link) {
  // return the extractor here to test like
  // return GogoCDN(link);
}
''',
    }
  });
  final value = ExtenstionLoader()
      .runtimeEval(compiled)
      .executeLib('package:meiyou/main.dart', 'main', [
    $ExtractorLink.wrap(ExtractorLink(
        name: '',
        url:
            'https://goone.pro/embedplus?id=MjE2NjE4&token=5c95pNdaP1hVzGHNR5mqKw&expires=1701861298'))
  ]) as ExtractorApi;

  print(await value.extract());
}
