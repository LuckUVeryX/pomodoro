import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../preferences/app_preferences.dart';
import '../../../router/router.dart';
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
            Consumer(
              builder: (_, ref, __) {
                final error = ref.watch(_pomodoroSettingsNotifierProvider
                    .select((value) => value.settingsError));
                return Text(
                  error.when(
                      none: () => '',
                      zeroDuration: () => 'Duration cannot be set to 0'),
                  style: textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.error,
                  ),
                );
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              width: double.infinity,
              child: Consumer(builder: (_, ref, __) {
                final settingsError = ref.watch(
                    _pomodoroSettingsNotifierProvider
                        .select((value) => value.settingsError));

                return ElevatedButton(
                  onPressed: settingsError.when(
                    none: () => () async {
                      final res = await ref
                          .read(_pomodoroSettingsNotifierProvider.notifier)
                          .saveSettings();
                      if (res) context.replaceRoute(const PomodoroRoute());
                    },
                    zeroDuration: () => null,
                  ),
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
