import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

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
                  TimerExpansionTilePicker(
                    title: 'Focus',
                    duration: const Duration(minutes: 25),
                    onTimerDurationChanged: (value) {},
                  ),
                  TimerExpansionTilePicker(
                    title: 'Short break',
                    duration: const Duration(minutes: 5),
                    onTimerDurationChanged: (value) {},
                  ),
                  TimerExpansionTilePicker(
                    title: 'Long break',
                    duration: const Duration(minutes: 15),
                    onTimerDurationChanged: (value) {},
                  ),
                  PomodoroNumberSelector(
                    decrementOnPressed: () {},
                    incrementOnPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Start'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
