import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';

abstract class TwoStatePreference extends PreferenceData<bool> {
  TwoStatePreference(
      {required String key,
      required String title,
      required String summary,
      required bool value})
      : super(
          key: key,
          title: title,
          summary: summary,
          value: value,
        );
}

class CheckBoxPreference extends TwoStatePreference {
  CheckBoxPreference(
      {required String key,
      required String title,
      required String summary,
      bool value = false})
      : super(
          key: key,
          title: title,
          summary: summary,
          value: value,
        );
}

class SwitchPreference extends TwoStatePreference {
  SwitchPreference(
      {required String key,
      required String title,
      required String summary,
      bool value = false})
      : super(
          key: key,
          title: title,
          summary: summary,
          value: value,
        );
}
