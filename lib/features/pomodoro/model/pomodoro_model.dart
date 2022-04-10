import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_model.freezed.dart';

@freezed
class PomodoroTimerState with _$PomodoroTimerState {
  const factory PomodoroTimerState.reset() = _Reset;
  const factory PomodoroTimerState.running() = _Running;
  const factory PomodoroTimerState.paused() = _Paused;
}

@freezed
class PomodoroState with _$PomodoroState {
  const factory PomodoroState.work() = _Work;
  const factory PomodoroState.shortBreak() = _ShortBreak;
  const factory PomodoroState.longBreak() = _LongBreak;
}

@freezed
class PomodoroModel with _$PomodoroModel {
  const factory PomodoroModel({
    required PomodoroTimerState pomodoroTimerState,
    required PomodoroState pomodoroState,
    required int count,
    required int totalCount,
    required Duration totalDuration,
    required Duration remainingDuration,
  }) = _PomodoroModel;
}
