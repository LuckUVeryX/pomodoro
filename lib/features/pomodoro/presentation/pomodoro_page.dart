import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/pomodoro_notifier.dart';
import 'widgets/widgets.dart';

class PomodoroPage extends ConsumerWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    final pomodoroState = ref
        .watch(pomodoroNotifierProvider.select((value) => value.pomodoroState));

    return Scaffold(
      backgroundColor: pomodoroState.maybeWhen(
        work: () => theme.colorScheme.background,
        orElse: () => theme.colorScheme.onBackground,
      ),
      appBar: AppBar(
        backgroundColor: pomodoroState.maybeWhen(
          work: () => theme.colorScheme.background,
          orElse: () => theme.colorScheme.onBackground,
        ),
        title: Text(
          'Pomodoro',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: pomodoroState.maybeWhen(
              work: () => theme.colorScheme.primary,
              orElse: () => theme.colorScheme.onPrimary,
            ),
          ),
        ),
        actions: [
          Consumer(builder: (_, ref, __) {
            final pomodoroTimerState = ref.watch(
              pomodoroNotifierProvider
                  .select((value) => value.pomodoroTimerState),
            );

            return pomodoroTimerState.maybeWhen(
              running: () => const SizedBox(),
              orElse: () => IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.gear),
              ),
            );
          }),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(width: double.infinity),
          const Spacer(),
          Consumer(builder: (_, ref, __) {
            final pomodoroState = ref.watch(pomodoroNotifierProvider
                .select((value) => value.pomodoroState));
            return Text(
              pomodoroState.when(
                work: () => 'Work',
                shortBreak: () => 'Short Break',
                longBreak: () => 'Long Break',
              ),
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: pomodoroState.maybeWhen(
                  work: () => theme.colorScheme.onBackground,
                  orElse: () => theme.colorScheme.background,
                ),
              ),
            );
          }),
          const Spacer(),
          const PomodoroTimer(),
          const Spacer(),
          Consumer(builder: (_, ref, __) {
            final totalCount = ref.watch(
                pomodoroNotifierProvider.select((value) => value.totalCount));
            final count = ref
                .watch(pomodoroNotifierProvider.select((value) => value.count));

            return AnimatedSmoothIndicator(
              activeIndex: count - 1,
              count: totalCount,
              effect: WormEffect(
                activeDotColor: Theme.of(context).colorScheme.primary,
              ),
            );
          }),
          const SizedBox(height: 16.0),
          const PausePlayIconButton(),
          Consumer(builder: (_, ref, __) {
            final timerState = ref.watch(pomodoroNotifierProvider
                .select((value) => value.pomodoroTimerState));
            return timerState.maybeWhen(
              running: () => const SizedBox(height: 48.0),
              orElse: () => TextButton(
                onPressed: ref.read(pomodoroNotifierProvider.notifier).reset,
                child: const Text(
                  'Reset',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            );
          }),
          const Spacer(flex: 5),
        ],
      ),
    );
  }
}
