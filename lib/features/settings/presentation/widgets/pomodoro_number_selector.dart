import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PomodoroNumberSelector extends StatelessWidget {
  const PomodoroNumberSelector({
    Key? key,
    required this.decrementOnPressed,
    required this.incrementOnPressed,
  }) : super(key: key);

  final VoidCallback decrementOnPressed;
  final VoidCallback incrementOnPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ExpansionTile(
        collapsedBackgroundColor: theme.cardColor,
        backgroundColor: theme.cardColor,
        childrenPadding: const EdgeInsets.only(bottom: 24.0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pomodoros',
              style:
                  textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              '4',
              style: textTheme.titleMedium?.copyWith(
                color: theme.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _IncrementDecrementButton(
                onPressed: decrementOnPressed,
                iconData: FontAwesomeIcons.minus,
              ),
              const SizedBox(width: 24.0),
              Text(
                '4',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 24.0),
              _IncrementDecrementButton(
                onPressed: incrementOnPressed,
                iconData: FontAwesomeIcons.plus,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _IncrementDecrementButton extends StatelessWidget {
  const _IncrementDecrementButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  final IconData iconData;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(iconData),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: theme.colorScheme.onPrimary,
        onPrimary: theme.colorScheme.primary,
      ),
    );
  }
}
