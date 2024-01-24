import 'package:dart_eval/dart_eval_bridge.dart';

final aesSource = DartSource('package:crypto_dart/aes.dart', '''

import 'dart:typed_data';
import 'src/mode.dart';
import 'src/padding/padding.dart';
import 'src/block_cipher.dart';
export 'src/cipher_options.dart';
export 'src/cipher_params.dart';
export 'src/aes.dart';

''');
