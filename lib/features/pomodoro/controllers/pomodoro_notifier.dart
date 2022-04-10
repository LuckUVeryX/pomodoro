import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../preferences/app_preferences.dart';
import '../../settings/models/pomodoro_settings_model.dart';
import '../model/pomodoro_model.dart';

final pomodoroNotifierProvider =
    StateNotifierProvider<PomodoroNotifier, PomodoroModel>((ref) {
  return PomodoroNotifier(
    settings: ref.watch(appPreferenceProvider).loadPomodoroSettings()!,
  );
});

class PomodoroNotifier extends StateNotifier<PomodoroModel> {
  PomodoroNotifier({
    required PomodoroSettings settings,
  })  : _settings = settings,
        super(
          PomodoroModel(
            count: 1,
            totalCount: settings.pomodoroCount,
            totalDuration: settings.focusDuration,
            remainingDuration: settings.focusDuration,
            pomodoroState: const PomodoroState.work(),
            pomodoroTimerState: const PomodoroTimerState.reset(),
          ),
        );

  final PomodoroSettings _settings;

  Duration _previouslyElapsed = Duration.zero;

  PomodoroModel get _pomodoroInitial => PomodoroModel(
        count: 1,
        totalCount: _settings.pomodoroCount,
        totalDuration: _settings.focusDuration,
        remainingDuration: _settings.focusDuration,
        pomodoroState: const PomodoroState.work(),
        pomodoroTimerState: const PomodoroTimerState.reset(),
      );

  bool get _pomodoroComplete =>
      state.pomodoroState != const PomodoroState.work() &&
      state.count + 1 > state.totalCount;

  bool get _pomodoroEnded =>
      state.count == state.totalCount &&
      state.pomodoroState != const PomodoroState.work() &&
      state.pomodoroTimerState == const PomodoroTimerState.reset();

  void tick(Duration elapsed) {
    final remainingDuration =
        state.totalDuration - _previouslyElapsed - elapsed;

    if (remainingDuration < Duration.zero) {
      if (_pomodoroComplete) {
        state = state.copyWith(
          pomodoroTimerState: const PomodoroTimerState.reset(),
        );
      } else {
        _onTimerComplete();
      }
    }

    state = state.copyWith(remainingDuration: remainingDuration);
  }

  void Function()? get togglePlayPause {
    if (_pomodoroEnded) return null;

    return () => state.pomodoroTimerState.when(
          reset: () {
            state = state.copyWith(
              pomodoroTimerState: const PomodoroTimerState.running(),
            );
            return;
          },
          running: () {
            state = state.copyWith(
              pomodoroTimerState: const PomodoroTimerState.paused(),
            );
            return;
          },
          paused: () {
            _previouslyElapsed = state.totalDuration - state.remainingDuration;
            state = state.copyWith(
              pomodoroTimerState: const PomodoroTimerState.running(),
            );
            return;
          },
        );
  }

  void reset() {
    _previouslyElapsed = Duration.zero;
    state = _pomodoroInitial;
  }

  void _onTimerComplete() {
    state.pomodoroState.maybeWhen(
      work: () {
        if (state.count % 4 == 0) {
          state = state.copyWith(
            totalDuration: _settings.longBreakDuration,
            remainingDuration: _settings.longBreakDuration,
            pomodoroState: const PomodoroState.longBreak(),
            pomodoroTimerState: const PomodoroTimerState.reset(),
          );
        } else {
          state = state.copyWith(
            totalDuration: _settings.shortBreakDuration,
            remainingDuration: _settings.shortBreakDuration,
            pomodoroState: const PomodoroState.shortBreak(),
            pomodoroTimerState: const PomodoroTimerState.reset(),
          );
        }
      },
      orElse: () {
        state = state.copyWith(
          count: state.count + 1,
          totalDuration: _settings.focusDuration,
          remainingDuration: _settings.focusDuration,
          pomodoroState: const PomodoroState.work(),
          pomodoroTimerState: const PomodoroTimerState.reset(),
        );
      },
    );

    // Trigger timer start
    state = state.copyWith(
      pomodoroTimerState: const PomodoroTimerState.running(),
    );
  }
}
