import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../preferences/app_preferences.dart';
import '../../../router/app_router.gr.dart';
import '../controllers/pomodoro_settings_notifier.dart';
import '../models/pomodoro_settings_model.dart';
import 'widgets/widgets.dart';

final _pomodoroSettingsNotifierProvider =
    StateNotifierProvider<PomodoroSettingsNotifier, PomodoroSettings>((ref) {
  return PomodoroSettingsNotifier(ref.watch(appPreferenceProvider));
});

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Set your', style: textTheme.headlineMedium),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Pomodoro',
                      style: textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                  Consumer(builder: (_, ref, __) {
                    final focusDuration = ref.watch(
                        _pomodoroSettingsNotifierProvider
                            .select((value) => value.focusDuration));

                    return TimerExpansionTilePicker(
                      title: 'Focus',
                      duration: focusDuration,
                      onTimerDurationChanged: ref
                          .read(_pomodoroSettingsNotifierProvider.notifier)
                          .onFocusDurationChanged,
                    );
                  }),
                  Consumer(builder: (_, ref, __) {
                    final shortBreakDuration = ref.watch(
                        _pomodoroSettingsNotifierProvider
                            .select((value) => value.shortBreakDuration));
                    return TimerExpansionTilePicker(
                      title: 'Short break',
                      duration: shortBreakDuration,
                      onTimerDurationChanged: ref
                          .read(_pomodoroSettingsNotifierProvider.notifier)
                          .onShortBreakDurationChanged,
                    );
                  }),
                  Consumer(builder: (_, ref, __) {
                    final longBreakDuration = ref.watch(
                        _pomodoroSettingsNotifierProvider
                            .select((value) => value.longBreakDuration));
                    return TimerExpansionTilePicker(
                      title: 'Long break',
                      duration: longBreakDuration,
                      onTimerDurationChanged: ref
                          .read(_pomodoroSettingsNotifierProvider.notifier)
                          .onLongBreakDurationChanged,
                    );
                  }),
                  Consumer(builder: (_, ref, __) {
                    final pomodoroCount = ref.watch(
                        _pomodoroSettingsNotifierProvider
                            .select((value) => value.pomodoroCount));
                    return PomodoroNumberSelector(
                      pomodoroCount: pomodoroCount,
                      decrementOnPressed: ref
                          .read(_pomodoroSettingsNotifierProvider.notifier)
                          .decrementPomodoros,
                      incrementOnPressed: ref
                          .read(_pomodoroSettingsNotifierProvider.notifier)
                          .incrementPomodoros,
                    );
                  }),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              width: double.infinity,
              child: Consumer(builder: (_, ref, __) {
                return ElevatedButton(
                  onPressed: () {
                    ref
                        .read(_pomodoroSettingsNotifierProvider.notifier)
                        .saveSettings();
                    context.replaceRoute(const PomodoroRoute());
                  },
                  child: const Text('Start'),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
