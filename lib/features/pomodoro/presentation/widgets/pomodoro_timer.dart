import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../controllers/pomodoro_notifier.dart';
import '../../model/pomodoro_model.dart';

class PomodoroTimer extends ConsumerStatefulWidget {
  const PomodoroTimer({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PomodoroTimerState();
}

class _PomodoroTimerState extends ConsumerState<PomodoroTimer>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();
    _ticker = createTicker(ref.read(pomodoroNotifierProvider.notifier).tick);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<PomodoroModel>(pomodoroNotifierProvider, (previous, next) {
      if (previous?.pomodoroTimerState != next.pomodoroTimerState) {
        next.pomodoroTimerState.when(
          reset: _ticker.stop,
          running: _ticker.start,
          paused: _ticker.stop,
        );
      }
    });
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final width = max(MediaQuery.of(context).size.width * 1 / 2, 200.0);

    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: width,
          height: width,
          child: Consumer(builder: (_, ref, __) {
            final pomodoro = ref.watch(pomodoroNotifierProvider);

            return CircularProgressIndicator(
              strokeWidth: 8.0,
              value: pomodoro.remainingDuration.inMilliseconds /
                  pomodoro.totalDuration.inMilliseconds,
              color: pomodoro.pomodoroState.maybeWhen(
                work: () => colorScheme.primary,
                orElse: () => colorScheme.onPrimary,
              ),
              backgroundColor: pomodoro.pomodoroState.maybeWhen(
                work: () => colorScheme.onPrimary,
                orElse: () => colorScheme.primary,
              ),
            );
          }),
        ),
        Consumer(builder: (_, ref, __) {
          final pomodoroState = ref.watch(
              pomodoroNotifierProvider.select((value) => value.pomodoroState));

          final remainingDuration = ref.watch(pomodoroNotifierProvider
              .select((value) => value.remainingDuration));
          // TODO: MonoSpace font
          return Text(
            '${(remainingDuration.inMinutes).toString().padLeft(2, '0')}:${((remainingDuration - Duration(minutes: remainingDuration.inMinutes)).inSeconds).toString().padLeft(2, '0')}',
            style: textTheme.headlineLarge?.copyWith(
              color: pomodoroState.maybeWhen(
                work: () => colorScheme.onBackground,
                orElse: () => colorScheme.background,
              ),
            ),
          );
        }),
      ],
    );
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }
}
