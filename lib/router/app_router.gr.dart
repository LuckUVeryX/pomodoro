// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../features/pomodoro/presentation/pomodoro_page.dart' as _i1;
import '../features/settings/presentation/settings_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    PomodoroRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PomodoroPage());
    },
    SettingsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SettingsPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(PomodoroRoute.name, path: '/pomodoro'),
        _i3.RouteConfig(SettingsRoute.name, path: '/settings')
      ];
}

/// generated route for
/// [_i1.PomodoroPage]
class PomodoroRoute extends _i3.PageRouteInfo<void> {
  const PomodoroRoute() : super(PomodoroRoute.name, path: '/pomodoro');

  static const String name = 'PomodoroRoute';
}

/// generated route for
/// [_i2.SettingsPage]
class SettingsRoute extends _i3.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings');

  static const String name = 'SettingsRoute';
}
