import 'package:meiyou_extensions_lib/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ConfigurableSource extends Source {
  Future<SharedPreferences> getSourcePreferences() {
    SharedPreferences.setPrefix('source_$id');
    return SharedPreferences.getInstance();
  }

  // setupPreferenceScreen(screen);
}



