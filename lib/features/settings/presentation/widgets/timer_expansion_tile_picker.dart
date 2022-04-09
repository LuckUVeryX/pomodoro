import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerExpansionTilePicker extends StatelessWidget {
  const TimerExpansionTilePicker({
    Key? key,
    required this.title,
    required this.duration,
    required this.onTimerDurationChanged,
  }) : super(key: key);

  final String title;
  final Duration duration;
  final void Function(Duration value) onTimerDurationChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: ExpansionTile(
          collapsedBackgroundColor: theme.cardColor,
          backgroundColor: theme.cardColor,
          childrenPadding: const EdgeInsets.only(bottom: 24.0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                '${duration.inMinutes} min',
                style: textTheme.titleMedium?.copyWith(
                  color: theme.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          children: [
            SizedBox(
              height: 160.0,
              child: CupertinoTimerPicker(
                onTimerDurationChanged: onTimerDurationChanged,
                mode: CupertinoTimerPickerMode.hm,
                initialTimerDuration: const Duration(minutes: 25),
                minuteInterval: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
