import 'package:freezed_annotation/freezed_annotation.dart';
part 'pomodoro_settings_model.freezed.dart';

@freezed
class PomodoroSettings with _$PomodoroSettings {
  const factory PomodoroSettings({
    required Duration focusDuration,
    required Duration shortBreakDuration,
    required Duration longBreakDuration,
    required int pomodoroCount,
  }) = _PomodoroSettings;

  factory PomodoroSettings.initial() {
    return const PomodoroSettings(
      focusDuration: Duration(minutes: 25),
      shortBreakDuration: Duration(minutes: 5),
      longBreakDuration: Duration(minutes: 15),
      pomodoroCount: 4,
    );
  }
}
