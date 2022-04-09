import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PausePlayIconButton extends HookWidget {
  const PausePlayIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );
    return IconButton(
      onPressed: () async {
        await controller.forward();
        await controller.reverse();
      },
      color: Theme.of(context).colorScheme.primary,
      icon: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: controller),
      iconSize: 48.0,
      splashRadius: 20.0,
    );
  }
}
