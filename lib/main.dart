import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/utils/utils.dart';
import 'preferences/app_preferences.dart';
import 'router/router.dart';
import 'theme/app_theme.dart';

final _themeProvider = Provider<AppTheme>((ref) => AppTheme());
final _loggerProvider = Provider<Logger>((ref) => AppLogger());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(ProviderScope(
    child: MyApp(),
    observers: [ProviderLogObserver(AppLogger())],
    overrides: [sharedPreferencesProvider.overrideWithValue(pref)],
  ));
}

class MyApp extends ConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final log = ref.watch(_loggerProvider);
    final theme = ref.watch(_themeProvider);
    final appPref = ref.watch(appPreferenceProvider);
    return MaterialApp.router(
      theme: theme.draculaTheme,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(
        initialRoutes: [
          appPref.loadPomodoroSettings() == null
              ? const SettingsRoute()
              : const PomodoroRoute()
        ],
        navigatorObservers: () => [AppRouterObserver(appRouterLogger: log)],
      ),
    );
  }
}
