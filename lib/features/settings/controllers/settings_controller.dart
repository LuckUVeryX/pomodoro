import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../preferences/app_preferences.dart';
import '../models/pomodoro_settings_model.dart';

class PomodoroSettingsNotifier extends StateNotifier<PomodoroSettings> {
  PomodoroSettingsNotifier(
    this.pref,
  ) : super(PomodoroSettings.initial());

  final AppPreferences pref;

  void onFocusDurationChanged(Duration value) {
    state = state.copyWith(focusDuration: value);
  }

  void onShortBreakDurationChanged(Duration value) {
    state = state.copyWith(shortBreakDuration: value);
  }

  void onLongBreakDurationChanged(Duration value) {
    state = state.copyWith(longBreakDuration: value);
  }

  void incrementPomodoros() {
    state = state.copyWith(pomodoroCount: state.pomodoroCount + 1);
  }

  void Function()? get decrementPomodoros {
    if (state.pomodoroCount <= 0) return null;

    return () => state = state.copyWith(pomodoroCount: state.pomodoroCount - 1);
  }

  void saveSettings() {
    pref.savePomodoroSettings(state);
  }
}
