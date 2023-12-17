// import 'package:meiyou_extenstions/dart_eval/dart_eval_bridge.dart';
// import 'package:meiyou_extenstions/meiyou_extenstions.dart';

// void main() {
//   final a = ExtenstionComplier().compilePackages({
//     'meiyou': {
//       'main.dart': '''
// import 'package:meiyou_extenstions/meiyou_extenstions.dart';

// int? main() {
//   return AppUtils.trySync<int>(() {
//     return getDuration();
//   }); 
// }

// int getDuration() {
//   return StringUtils.toInt('teri');
// }
//     '''
//     }
//   });

//   final b = ExtenstionLoader()
//       .runtimeEval(a)
//       .executeLib('package:meiyou/main.dart', 'main');

//   print((b is $Value) ? b.$value : b);
// }
