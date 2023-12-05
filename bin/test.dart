import 'dart:io';

import 'package:meiyou_extenstions/meiyou_extenstions.dart';

void main(List<String> args) async {
  // final code = File(args[0]).readAsStringSync();

  // final className =
  //     code.substringAfter('class ').substringBefore('extends').trim();

  final compiled = ExtenstionComplier().compilePackages({
    'meiyou': {
      'main.dart': '''
import 'package:meiyou_extenstions/meiyou_extenstions.dart';


main() {
  return GogoCDN(ExtractorLink(
          name: '',
          url:
              'https://goone.pro/embedplus?id=MjE2NTk5&token=e8ntm7cxT-rK8qyPx7F3jw&expires=1701801497'));
}
''',
    }
  });
  final value = ExtenstionLoader()
      .runtimeEval(compiled)
      .executeLib('package:meiyou/main.dart', 'main') as GogoCDN;

  print(await value.extract());
}
