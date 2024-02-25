import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';

abstract class TwoStatePreference extends PreferenceData<bool> {
  TwoStatePreference({
    required String key,
    required String title,
    required String summary,
    required bool value,
    void Function(bool oldValue, bool newValue)? onPreferenceChange,
  }) : super(
          key: key,
          title: title,
          summary: summary,
          value: value,
          onPreferenceChange: onPreferenceChange,
        );
}

class CheckBoxPreference extends TwoStatePreference {
  CheckBoxPreference({
    required String key,
    required String title,
    required String summary,
    bool value = false,
    void Function(bool oldValue, bool newValue)? onPreferenceChange,
  }) : super(
          key: key,
          title: title,
          summary: summary,
          value: value,
          onPreferenceChange: onPreferenceChange,
        );
}

class SwitchPreference extends TwoStatePreference {
  SwitchPreference({
    required String key,
    required String title,
    required String summary,
    bool value = false,
    void Function(bool oldValue, bool newValue)? onPreferenceChange,
  }) : super(
          key: key,
          title: title,
          summary: summary,
          value: value,
          onPreferenceChange: onPreferenceChange,
        );
}
