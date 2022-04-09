import 'package:auto_route/auto_route.dart';

import '../features/settings/presentation/settings_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SettingsPage, initial: true),
  ],
)
class $AppRouter {}
