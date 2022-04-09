import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/widgets.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pomodoro',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.gear),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(width: double.infinity),
          const Spacer(),
          Text(
            'Work',
            style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const PomodoroTimer(),
          const Spacer(),
          AnimatedSmoothIndicator(
            activeIndex: 0,
            count: 4,
            effect: WormEffect(
              activeDotColor: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16.0),
          const PausePlayIconButton(),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Reset',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
          const Spacer(flex: 5),
        ],
      ),
    );
  }
}
