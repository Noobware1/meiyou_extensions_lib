import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';

abstract class DilogPreference<T> extends PreferenceData<T> {
  final String? dialogTitle;
  final String? dialogMessage;

  DilogPreference({
    required super.key,
    required super.title,
    required super.summary,
    required super.value,
    this.dialogTitle,
    this.dialogMessage,
  });
}

class EditTextPreference extends DilogPreference<String> {
  EditTextPreference({
    required super.key,
    required super.title,
    required super.summary,
    required super.value,
    super.dialogTitle,
    super.dialogMessage,
  });
}

class ListPreference extends DilogPreference<int> {
  ListPreference({
    required super.key,
    required super.title,
    required super.summary,
    super.dialogTitle,
    super.dialogMessage,
    int defaultIndex = 0,
    required this.entries,
    required this.entryValues,
  }) : super(value: defaultIndex);

  final List<String> entries;
  final List<String> entryValues;
}

class MultiSelectListPreference extends DilogPreference<List<String>> {
  MultiSelectListPreference({
    required super.key,
    required super.title,
    required super.summary,
    super.dialogTitle,
    super.dialogMessage,
    List<String> defaultSelected = const [],
    required this.entries,
    required this.entryValues,
  }) : super(value: defaultSelected);

  final List<String> entries;
  final List<String> entryValues;
}
