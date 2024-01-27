import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media/video/video.dart';

$Value? wrapMedia(Media? media) {
  if (media == null) return null;
  if (media is Video) {
    return $Video.wrap(media);
  }
  throw UnimplementedError('Cannot wrap media of type ${media.runtimeType}');
}
