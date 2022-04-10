import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/settings/models/pomodoro_settings_model.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final appPreferenceProvider = Provider<AppPreferences>((ref) {
  return AppPreferences(ref.watch(sharedPreferencesProvider));
});

class AppPreferences {
  AppPreferences(this._pref);

  final SharedPreferences _pref;

  Future<void> savePomodoroSettings(PomodoroSettings settings) async {
    await _pref.setString(_pomodoroSettingsKey, jsonEncode(settings.toJson()));
  }

  PomodoroSettings? loadPomodoroSettings() {
    final jsonStringData = _pref.getString(_pomodoroSettingsKey);

    if (jsonStringData == null) return null;
    return PomodoroSettings.fromJson(jsonDecode(jsonStringData));
  }
}

const _pomodoroSettingsKey = 'pomodoroSettings';
