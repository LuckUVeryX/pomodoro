import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../features/pomodoro/controllers/pomodoro_notifier.dart';
import '../features/pomodoro/model/pomodoro_model.dart';

final loggerProvider = Provider<Logger>((ref) => AppLogger());

class AppLogger extends Logger {
  AppLogger()
      : super(
          filter: ProductionFilter(),
          printer: PrettyPrinter(
            noBoxingByDefault: true,
            methodCount: 0,
          ),
        );
}

class ProviderLogObserver extends ProviderObserver {
  ProviderLogObserver(this._log);

  final Logger _log;

  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (provider.runtimeType ==
        StateNotifierProvider<PomodoroNotifier, PomodoroModel>) {
      _log.v(
        '''
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"''',
      );
      return;
    }

    _log.d(
      '''
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"''',
    );
  }
}
