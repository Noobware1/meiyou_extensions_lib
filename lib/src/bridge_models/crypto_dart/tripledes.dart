import 'package:dart_eval/dart_eval_bridge.dart';

final tripleDesSource = DartSource('package:crypto_dart/tripledes.dart', '''

import 'dart:typed_data';
import 'src/mode.dart';
import 'src/padding/padding.dart';
import 'src/block_cipher.dart';
export 'src/cipher_options.dart';
export 'src/cipher_params.dart';

export 'src/tripledes.dart';
''');
