import 'package:meiyou_extensions_lib/models.dart';

abstract class ConfigurableSource extends Source {
  getSourcePreferences();

  setupPreferenceScreen(screen);
}
