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
import 'package:test_project/pages/first_page.dart' as _i1;
import 'package:test_project/pages/second_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    FirstRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.FirstPage());
    },
    SecondRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.SecondPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(FirstRoute.name, path: '/'),
        _i3.RouteConfig(SecondRoute.name, path: '/second-page')
      ];
}

/// generated route for
/// [_i1.FirstPage]
class FirstRoute extends _i3.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: '/');

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i2.SecondPage]
class SecondRoute extends _i3.PageRouteInfo<void> {
  const SecondRoute() : super(SecondRoute.name, path: '/second-page');

  static const String name = 'SecondRoute';
}
