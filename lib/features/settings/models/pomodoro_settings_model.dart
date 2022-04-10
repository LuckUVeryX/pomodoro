import 'package:freezed_annotation/freezed_annotation.dart';
part 'pomodoro_settings_model.freezed.dart';
part 'pomodoro_settings_model.g.dart';

@freezed
class PomodoroSettings with _$PomodoroSettings {
  const factory PomodoroSettings({
    required Duration focusDuration,
    required Duration shortBreakDuration,
    required Duration longBreakDuration,
    required int pomodoroCount,
    required PomodoroSettingsError settingsError,
  }) = _PomodoroSettings;

  factory PomodoroSettings.initial() {
    return const PomodoroSettings(
      focusDuration: Duration(minutes: 25),
      shortBreakDuration: Duration(minutes: 5),
      longBreakDuration: Duration(minutes: 15),
      pomodoroCount: 4,
      settingsError: _None(),
    );
  }

  factory PomodoroSettings.fromJson(Map<String, dynamic> json) =>
      _$PomodoroSettingsFromJson(json);
}

@freezed
@JsonSerializable(explicitToJson: true)
class PomodoroSettingsError with _$PomodoroSettingsError {
  const factory PomodoroSettingsError.none() = _None;
  const factory PomodoroSettingsError.zeroDuration() = _ZeroDuration;

  factory PomodoroSettingsError.fromJson(Map<String, dynamic> json) =>
      _$PomodoroSettingsErrorFromJson(json);
}
