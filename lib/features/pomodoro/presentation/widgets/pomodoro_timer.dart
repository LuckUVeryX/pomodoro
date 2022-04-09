import 'dart:math';

import 'package:flutter/material.dart';

class PomodoroTimer extends StatelessWidget {
  const PomodoroTimer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: max(MediaQuery.of(context).size.width * 1 / 2, 200),
          height: max(MediaQuery.of(context).size.width * 1 / 2, 200),
          child: CircularProgressIndicator(
            strokeWidth: 8.0,
            value: 0.9,
            backgroundColor: colorScheme.primaryContainer,
            color: colorScheme.onPrimaryContainer,
          ),
        ),
        Text(
          '22:58',
          style: textTheme.headlineLarge?.copyWith(
            color: colorScheme.onBackground,
          ),
        ),
      ],
    );
  }
}
