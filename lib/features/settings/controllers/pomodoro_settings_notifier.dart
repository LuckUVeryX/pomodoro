import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../preferences/app_preferences.dart';
import '../models/pomodoro_settings_model.dart';

class PomodoroSettingsNotifier extends StateNotifier<PomodoroSettings> {
  PomodoroSettingsNotifier(
    this.pref,
  ) : super(PomodoroSettings.initial());

  final AppPreferences pref;

  void onFocusDurationChanged(Duration value) {
    state = state.copyWith(
      focusDuration: value,
      settingsError: const PomodoroSettingsError.none(),
    );
  }

  void onShortBreakDurationChanged(Duration value) {
    state = state.copyWith(
      shortBreakDuration: value,
      settingsError: const PomodoroSettingsError.none(),
    );
  }

  void onLongBreakDurationChanged(Duration value) {
    state = state.copyWith(
      longBreakDuration: value,
      settingsError: const PomodoroSettingsError.none(),
    );
  }

  void incrementPomodoros() {
    state = state.copyWith(pomodoroCount: state.pomodoroCount + 1);
  }

  void Function()? get decrementPomodoros {
    if (state.pomodoroCount <= 1) return null;

    return () => state = state.copyWith(pomodoroCount: state.pomodoroCount - 1);
  }

  Future<bool> saveSettings() async {
    if (state.focusDuration == Duration.zero ||
        state.shortBreakDuration == Duration.zero ||
        state.longBreakDuration == Duration.zero) {
      state = state.copyWith(
          settingsError: const PomodoroSettingsError.zeroDuration());
      return false;
    } else {
      await pref.savePomodoroSettings(state);
      return true;
    }
  }
}
