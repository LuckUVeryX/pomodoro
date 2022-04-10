import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../controllers/pomodoro_notifier.dart';
import '../../model/pomodoro_model.dart';

class PausePlayIconButton extends HookConsumerWidget {
  const PausePlayIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );
    ref.listen<PomodoroModel>(pomodoroNotifierProvider, (previous, next) {
      if (previous?.pomodoroTimerState != next.pomodoroTimerState) {
        next.pomodoroTimerState.when(
          reset: controller.reverse,
          running: controller.forward,
          paused: controller.reverse,
        );
      }
    });
    return Consumer(builder: (_, ref, __) {
      final pomodoro = ref.watch(pomodoroNotifierProvider);
      return IconButton(
        onPressed: ref.read(pomodoroNotifierProvider.notifier).togglePlayPause,
        color: pomodoro.pomodoroState.maybeWhen(
          work: () => Theme.of(context).colorScheme.primary,
          orElse: () => Theme.of(context).colorScheme.onPrimary,
        ),
        icon:
            AnimatedIcon(icon: AnimatedIcons.play_pause, progress: controller),
        iconSize: 48.0,
        splashRadius: 36.0,
      );
    });
  }
}
