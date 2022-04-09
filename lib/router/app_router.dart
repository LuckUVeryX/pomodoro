import 'package:auto_route/auto_route.dart';

import '../features/pomodoro/presentation/pomodoro_page.dart';
import '../features/settings/presentation/settings_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: PomodoroPage, path: '/pomodoro'),
    AutoRoute(page: SettingsPage, path: '/settings'),
  ],
)
class $AppRouter {}
